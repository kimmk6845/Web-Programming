<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>   
<%@ page import="javax.naming.*" %>

<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String pass = request.getParameter("pass");
	String title = request.getParameter("title");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";

	Class.forName(driver);
	conn = DriverManager.getConnection(url, "kmk414", "pass123");
	pstmt = conn.prepareStatement(
			"INSERT INTO memo_Test(num,name,title,pass) VALUES(AUTO_SEQ_NUMBER.NEXTVAL,?,?,?)");
	//  입력시는 NEXTVAL , 조회시는 CURRVAL 사용
	pstmt.setString(1, name);
	pstmt.setString(2, title);
	pstmt.setString(3, pass);
	pstmt.executeUpdate();
	out.println("<script>");
	out.println("location.href='memo.jsp'");
	/* 저장한 후 다시 memo.jsp 로 가라 */
	out.println("</script>");
%>

