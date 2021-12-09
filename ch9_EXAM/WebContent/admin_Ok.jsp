<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>

<%
	request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("admin");
    Connection conn=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;

    String driver="oracle.jdbc.driver.OracleDriver";  
    String url="jdbc:oracle:thin:@localhost:1521:orcl";
    Class.forName(driver);
    conn=DriverManager.getConnection(url,"kmk414","pass123");
    pstmt=conn.prepareStatement("SELECT * FROM SCORE WHERE S_Name='admin*'");
    rs = pstmt.executeQuery();
    if(rs.next())
    {
    	if(!(id.equals(rs.getString("S_Name")))) 		//관리자의 아이디와 다를 시 경고창 출력해주고 메인으로 보내버림
    	{
        	out.println("<script>");
        	out.println("alert('관리자가 아닙니다.')");
        	out.println("location.href = 'Exam_Main.jsp'");
        	out.println("</script>");
    	}
    	session.setAttribute("admin",id);	//admin아이디 세션값 저장
%>
<title>환영합니다. 관리자님</title>
<body>
<form name="adminOkform" action="addQuiz.jsp" method="post">
<h1>
	<B>관리자님 환영합니다!</B>
</h1>
<table border=1>
<tr><td align="center"><input type="submit" value="문제 출제하기"></td><td><a href="Exam_Main.jsp">메인으로 돌아가기</a></td></tr>
</table>
</form>
</body>
<%
	}
%>