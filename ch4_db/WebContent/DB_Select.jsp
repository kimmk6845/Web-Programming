<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>  
<%@ page import="javax.naming.*" %>

<%
Connection connection;
Statement statement;
ResultSet resultSet;

String driver = "oracle.jdbc.driver.OracleDriver"; 
String url="jdbc:oracle:thin:@localhost:1521:orcl";
String uid = "kmk414";     
String upw = "pass123";
String query = "select * from student";
%>

<body>
	<%
		Class.forName(driver);
		connection = DriverManager.getConnection(url, uid, upw);
		statement = connection.createStatement();
		// statement 객체는 SQL 문 실행하기 위해 사용
		// 실행하는 시점에서 파라미터로 SQL문을 전달하는데 API 임.
		resultSet = statement.executeQuery(query);
		// statement 객체를 이용하여 SQL문 실행 후 결과를  저장 
		/* 실행한 결과 데이터를 resultSet 에 저장됨 */
		// statement 인터페이스는 SQL 문을 직접 실행할 수 있다.
		out.println(" 번호 " + "  이름 " + "<br />");
		out.println(" ====  ====== " + "<br />");

		while (resultSet.next()) // 처음부터 끝까지  데이터 개수만큼 수행
		{
			int num = resultSet.getInt("num");
			//  int num = resultSet.getInt(1);
			String name = resultSet.getString("name");
			//  String name = resultSet.getString(2);
			out.println(num + "&nbsp;&nbsp;&nbsp;" + name + "<br />");
		}
		if (resultSet != null)
			resultSet.close();
		if (statement != null)
			statement.close();
		if (connection != null)
			connection.close();
	%>
</body>
