<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<head>
<title>성적 리스트</title>
<style>
table{
	border:1px solid;
}
tr{
	width:500px
}
td{
	border:1px solid;
}
</style>
</head>
<body>
<center>
<h1><B>SCORE LIST</B></h1>
<table>
<%
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String sql = "select *from SCORE where S_Name != 'admin*' order by Q_INDATE asc";	//시험을 먼저 제출한 순서로 출력해줌
			Class.forName(driver);
			conn = DriverManager.getConnection(url, "kmk414", "pass123");
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			%>
			<tr bgcolor="#CCCCCC" align="center"><td width = 75px>학번</td><td width = 75px>이름</td><td width = 50px>성적</td><td width = 300px>제출시간</td></tr>
			<% while(rs.next())
				{
				%>
				<tr align = "center">
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td></tr>
				<%
				}
				%>
</table>
	<br><a href="Exam_Main.jsp">메인으로 돌아가기</a>
</center>
</body>