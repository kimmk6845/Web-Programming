<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<%
	String hakbun = request.getParameter("hakbun");		//입력받은 학번을 받고
	boolean fnd = false;		//DB에 같은 학번을 찾으면 true

	if (hakbun == null)
		hakbun = "";
	else {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		Connection conn = null;
		ResultSet rs = null;
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "kmk414", "pass123");
		Statement stmt = conn.createStatement();
		String sql = "select *from SCORE";
		rs = stmt.executeQuery(sql);
		while(rs.next())
		{
			if (rs.getString(1).equals(hakbun))		//DB에 같은 학번이 존재하면 fnd변수를 true로 바꿈
				fnd = true;
		}
		
		stmt.close();
		conn.close();
	}
%>
<head>
<title>학번 확인</title>
</head>

<script language="JavaScript">
function hakbun_search()
{
	for (var i = 0; i < document.hakbun_check_form.hakbun.value.length; i++) {	//학번은 숫자만 입력받도록
		if (document.hakbun_check_form.hakbun.value.charAt(i) < "0"
				|| document.hakbun_check_form.hakbun.value.charAt(i) > "9")
		{
			alert("학번은 숫자만 입력하세요.");
			document.hakbun_check_form.hakbun.focus();
			return;
		}
	}
	
   if(document.hakbun_check_form.hakbun.value=="") 		//아무것도 입력하지 않으면 경고창 출력후 커서를 학번으로 옮김
   {
     alert("학번을 입력해 주세요.");
     document.hakbun_check_form.hakbun.focus();
   }
   else {
      document.hakbun_check_form.submit();		//학번이 숫자가 아니고 null값이 아니라면 넘김
   }
}

function hakbun_ok(a)			//조회된 학번값을 시험페이지의 학번값에 넣어줌
{
    opener.document.Exam.hakbun.value=a;       
    self.close();   
}

</script>
<body>
	<center>
		<br>
		<p align="center">학번을 조회하세요.</p>
		<form name="hakbun_check_form" action="Hakbun_Check.jsp" method="POST">
			<table width="200">
				<tr>
					<td width="150">==></td>
					<td width="100"><input type="text" name="hakbun" size="20" maxlength = "9" value=<%=hakbun%>></td>
					<td width="40"><input type="button" value="검색" onclick="javascript:hakbun_search()"></td>
				</tr>
			</table>
		</form>
		<p align="center">학번은 숫자만 입력하세요 !!!</p>

		<%
			if (hakbun != "" && fnd == false) {
		%>
		사용 가능한 학번입니다
		<p><a href="javascript:hakbun_ok('<%=hakbun%>')">
				확인 </a>
			<%
				} else if (hakbun != "" && fnd == true) {
					out.println("<script>");
					out.println("alert('이미 시험본 학번입니다.')");
					out.println("</script>");
				}
			%>
	</center>
</body>