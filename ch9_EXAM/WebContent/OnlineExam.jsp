<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%!// 보기를 랜덤하게 보여주기 위한 함수
	String[] STRRandom(String e1, String e2, String e3, String e4) {
		String[] result = new String[4];
		Random random = new Random();
		for (int i = 0; i < 4; i++)
			result[i] = ""; // 초기화
		int count = 0;
		while (true) {
			if (count == 4) //  4크기의 배열에 모두 값이 들어갔을 경우 반복문 종료
				break;
			int k = random.nextInt(4);
			if (result[k].equals("")) { //    k에 0~3 사이의 값을 랜덤하게 받아 
				switch (count) { // result[k]가 비어있으면 count 값에 따라 값을 넣음
				case 0:
					result[k] = e1;
					count++;
					break;
				case 1:
					result[k] = e2;
					count++;
					break;
				case 2:
					result[k] = e3;
					count++;
					break;
				case 3:
					result[k] = e4;
					count++;
					break;
				}
			}
		}
		return result;
	}%>
	
<%
	request.setCharacterEncoding("EUC-KR");

%>
<head>
<title>온라인 시험</title>
<style>
table{
	width: 75%;
	border: 1px solid;
	border-collapse:collapse;
	margin:auto;
}
center{
	width:100%;
	height:100px;
}
input[type="radio"]{
	background: #E9ECEE;
	border-color: #33FFFF;
}
input[type="button"]{
	background-color:white;
	color:black;
	border:2px solid #4CAF50;
	border-radius:4px;
	font-size:20px;
}
td{
	border:1px;
	border-bottom-style:dashed;
}

</style>
</head>
<script type="text/javascript">
	function check()	//학번이 제대로 입력됐는지 다시 확인
	{
		if(document.Exam.hakbun.value =="") 	//학번이 입력되지 않았으면 경고창 출력
		{
			alert("학번조회를 통해 학번을 입력하세요.");
			document.Exam.hakbun.focus();
			return false;
		}
		for (var i = 0; i < document.Exam.hakbun.value.length; i++) {	//학번은 숫자만 입력하도록
			if (document.Exam.hakbun.value.charAt(i) < "0"
					|| document.Exam.hakbun.value.charAt(i) > "9")
			{
				alert("학번은 숫자만 입력하세요.");
				document.Exam.hakbun.focus();
				return;
			}
		}
		document.Exam.submit(); 	//모두 정상적으로 입력됐으면 넘김
	}
	function check_hak() 		//학번 조회를 통해 학번 입력
	{
		var JSPName = "Hakbun_Check.jsp";
		browsing_window = window.open(JSPName, "_HakbunCheck", "height=220, width=420");
		browsing_window.focus();
	}
	
	
	
	var SetTime = 120;
	function limit_time() {		//제한시간을 출력하기 위한 메소드
		T = SetTime + "초";
		var limit = "현재 남은 시간은 <font color='red'>" + T + "</font> 입니다.";
		document.all.ViewTimer.innerHTML = limit;		// div 영역에 보여줌 
		SetTime--;					// 1초씩 감소
		if (SetTime < 0) {			//시간 종료
			clearInterval(tid);		// 타이머 해제
			alert("주어진 시간을 모두 사용하여 자동으로 제출됩니다.");
			document.Exam.submit();
		}
	}
	window.onload = function TimerStart(){ tid=setInterval('limit_time()',1000) };

</script>

<body>
<form name = "Exam" action="Exam_Result.jsp" method="post">
<center>
<br><br>
<B><div id="ViewTimer"></div></B>
<br>
학번 : <input type = "text" name = "hakbun" size = 10 readonly>&nbsp;&nbsp;&nbsp;
이름 : <input type = "text" name = "name" maxlength="5" size="5">&nbsp;&nbsp;&nbsp;
<input type = "button" value = "학번조회" onclick="check_hak()" onmouseover="this.style.cursor='hand';">
</center>
<table>
<%
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String sql = "SELECT * FROM ( SELECT * FROM QUIZ ORDER BY DBMS_RANDOM.RANDOM) where rownum<= 5";
			Class.forName(driver);
			conn = DriverManager.getConnection(url, "kmk414", "pass123");
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			int cnt = 1;
			while (rs.next()) {
				if(cnt == 6)
					break;
		%>
		<tr><td width="80px"><B>문제<%=cnt%>]</B>&nbsp;&nbsp;</td><td><%=rs.getString(2)%></td></tr><br>
		<% 
		String bg1 = rs.getString(5);
		String bg2 = rs.getString(6);
		String bg3 = rs.getString(7);
		String bg4 = rs.getString(8);
		String[] show = STRRandom(bg1, bg2, bg3, bg4); 		//보기를 랜덤으로 돌림
		
		if(rs.getString(3).equals("TI")) 	//문제 유형이 TI형이면 보기에 이미지를 출력
		{
			%>
		<tr><td></td><td>
		<input type="radio" name="bogi<%=cnt%>" value="<%=show[0]%>"><image src="image/<%=show[0]%>" width="120px" height="150px"> &nbsp; &nbsp;
		<input type="radio" name="bogi<%=cnt%>" value="<%=show[1]%>"><image src="image/<%=show[1]%>" width="120px" height="150px"> &nbsp; &nbsp;
		<input type="radio" name="bogi<%=cnt%>" value="<%=show[2]%>"><image src="image/<%=show[2]%>" width="120px" height="150px"> &nbsp; &nbsp;
		<input type="radio" name="bogi<%=cnt%>" value="<%=show[3]%>"><image src="image/<%=show[3]%>" width="120px" height="150px"> &nbsp; &nbsp;
			<%
		}else{
		%>
		<tr><td height=100px></td><td>
		<input type="radio" name="bogi<%=cnt%>" value="<%=show[0]%>"><%=show[0]%> &nbsp; &nbsp;
		<input type="radio" name="bogi<%=cnt%>" value="<%=show[1]%>"><%=show[1]%> &nbsp; &nbsp;
		<input type="radio" name="bogi<%=cnt%>" value="<%=show[2]%>"><%=show[2]%> &nbsp; &nbsp;
		<input type="radio" name="bogi<%=cnt%>" value="<%=show[3]%>"><%=show[3]%> &nbsp; &nbsp;

		<%
			}%>
		<input type="hidden" name="question<%=cnt%>" value="<%=rs.getString(2)%>"> 		<!-- 오답노트에 띄우기 위한 문제가져옴 -->
		<input type="hidden" name="type<%=cnt%>" value"<%=rs.getString(3)%>">			<!-- 이미지 출력하기 위해 타입도 넘김 -->
		<input type="hidden" name="dap<%=cnt%>" value="<%=rs.getString(9)%>"><br></td></tr>
			<% cnt++; }
		%>
</table>
<center>
		<br><input type=button value="제출하기" onclick="check()" onmouseover="this.style.cursor='hand';">
</center>
</form>
</body>