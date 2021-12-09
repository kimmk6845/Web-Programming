<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>

<%
	request.setCharacterEncoding("EUC-KR");

	int num1 = Integer.parseInt(request.getParameter("deleteQnum"));
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String sql = "select * from QUIZ where Q_NUM = '" + num1 + "'";
	Class.forName(driver);
	conn = DriverManager.getConnection(url, "kmk414", "pass123");
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	if(rs.next())
	{
		if(rs.getInt(1) == num1)
		{
			pstmt = conn.prepareStatement("DELETE FROM QUIZ WHERE Q_NUM=?");
			pstmt.setInt(1, num1);
			pstmt.executeUpdate();
			out.println("<script>");
			out.println("alert('문제가 삭제되었습니다.')");
			out.println("location.href='Quiz_List.jsp'");
			out.println("</script>");
		}
	}
%>