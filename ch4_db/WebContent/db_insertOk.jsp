<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>  
<%@ page import="javax.naming.*" %>

<% request.setCharacterEncoding("euc-kr"); %>

<%
	int num = Integer.parseInt((String) request.getParameter("num"));
	String name = request.getParameter("name");

	String sql = "INSERT INTO student(num, name) VALUES(?,?)";
	// preparedStatement 방식으로 처리
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	try {
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, "kmk414", "pass123");
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, num);		//values의 첫번째 ?
		pstmt.setString(2, name);	//values의 두번째 ?
		pstmt.executeUpdate(); // 
		pstmt.close();
		con.close();
		out.println("<h4>student 테이블에 한 행이 저장 됨!!!</h4>");
	} catch (SQLException e) {
		out.println("<h4>에러가 발생. 다시 확인해 보세요!!!</h4>");
	}
%>
<a href="statement_Select.jsp"> 결과 확인하러 가기</a>
