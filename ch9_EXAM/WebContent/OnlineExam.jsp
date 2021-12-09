<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%!// ���⸦ �����ϰ� �����ֱ� ���� �Լ�
	String[] STRRandom(String e1, String e2, String e3, String e4) {
		String[] result = new String[4];
		Random random = new Random();
		for (int i = 0; i < 4; i++)
			result[i] = ""; // �ʱ�ȭ
		int count = 0;
		while (true) {
			if (count == 4) //  4ũ���� �迭�� ��� ���� ���� ��� �ݺ��� ����
				break;
			int k = random.nextInt(4);
			if (result[k].equals("")) { //    k�� 0~3 ������ ���� �����ϰ� �޾� 
				switch (count) { // result[k]�� ��������� count ���� ���� ���� ����
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
<title>�¶��� ����</title>
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
	function check()	//�й��� ����� �Էµƴ��� �ٽ� Ȯ��
	{
		if(document.Exam.hakbun.value =="") 	//�й��� �Էµ��� �ʾ����� ���â ���
		{
			alert("�й���ȸ�� ���� �й��� �Է��ϼ���.");
			document.Exam.hakbun.focus();
			return false;
		}
		for (var i = 0; i < document.Exam.hakbun.value.length; i++) {	//�й��� ���ڸ� �Է��ϵ���
			if (document.Exam.hakbun.value.charAt(i) < "0"
					|| document.Exam.hakbun.value.charAt(i) > "9")
			{
				alert("�й��� ���ڸ� �Է��ϼ���.");
				document.Exam.hakbun.focus();
				return;
			}
		}
		document.Exam.submit(); 	//��� ���������� �Էµ����� �ѱ�
	}
	function check_hak() 		//�й� ��ȸ�� ���� �й� �Է�
	{
		var JSPName = "Hakbun_Check.jsp";
		browsing_window = window.open(JSPName, "_HakbunCheck", "height=220, width=420");
		browsing_window.focus();
	}
	
	
	
	var SetTime = 120;
	function limit_time() {		//���ѽð��� ����ϱ� ���� �޼ҵ�
		T = SetTime + "��";
		var limit = "���� ���� �ð��� <font color='red'>" + T + "</font> �Դϴ�.";
		document.all.ViewTimer.innerHTML = limit;		// div ������ ������ 
		SetTime--;					// 1�ʾ� ����
		if (SetTime < 0) {			//�ð� ����
			clearInterval(tid);		// Ÿ�̸� ����
			alert("�־��� �ð��� ��� ����Ͽ� �ڵ����� ����˴ϴ�.");
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
�й� : <input type = "text" name = "hakbun" size = 10 readonly>&nbsp;&nbsp;&nbsp;
�̸� : <input type = "text" name = "name" maxlength="5" size="5">&nbsp;&nbsp;&nbsp;
<input type = "button" value = "�й���ȸ" onclick="check_hak()" onmouseover="this.style.cursor='hand';">
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
		<tr><td width="80px"><B>����<%=cnt%>]</B>&nbsp;&nbsp;</td><td><%=rs.getString(2)%></td></tr><br>
		<% 
		String bg1 = rs.getString(5);
		String bg2 = rs.getString(6);
		String bg3 = rs.getString(7);
		String bg4 = rs.getString(8);
		String[] show = STRRandom(bg1, bg2, bg3, bg4); 		//���⸦ �������� ����
		
		if(rs.getString(3).equals("TI")) 	//���� ������ TI���̸� ���⿡ �̹����� ���
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
		<input type="hidden" name="question<%=cnt%>" value="<%=rs.getString(2)%>"> 		<!-- �����Ʈ�� ���� ���� ���������� -->
		<input type="hidden" name="type<%=cnt%>" value"<%=rs.getString(3)%>">			<!-- �̹��� ����ϱ� ���� Ÿ�Ե� �ѱ� -->
		<input type="hidden" name="dap<%=cnt%>" value="<%=rs.getString(9)%>"><br></td></tr>
			<% cnt++; }
		%>
</table>
<center>
		<br><input type=button value="�����ϱ�" onclick="check()" onmouseover="this.style.cursor='hand';">
</center>
</form>
</body>