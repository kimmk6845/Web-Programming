<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>  
<%@ page import="javax.naming.*" %>

<% request.setCharacterEncoding("euc-kr"); %>

<%
	int num = Integer.parseInt((String) request.getParameter("num"));
	String name = request.getParameter("name");

	String sql = "INSERT INTO student(num, name) VALUES(?,?)";
	// preparedStatement ������� ó��
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	try {
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, "kmk414", "pass123");
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, num);		//values�� ù��° ?
		pstmt.setString(2, name);	//values�� �ι�° ?
		pstmt.executeUpdate(); // 
		pstmt.close();
		con.close();
		out.println("<h4>student ���̺� �� ���� ���� ��!!!</h4>");
	} catch (SQLException e) {
		out.println("<h4>������ �߻�. �ٽ� Ȯ���� ������!!!</h4>");
	}
%>
<a href="statement_Select.jsp"> ��� Ȯ���Ϸ� ����</a>
