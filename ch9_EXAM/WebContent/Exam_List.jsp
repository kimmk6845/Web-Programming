<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<head>
<title>���� ����Ʈ</title>
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
			String sql = "select *from SCORE where S_Name != 'admin*' order by Q_INDATE asc";	//������ ���� ������ ������ �������
			Class.forName(driver);
			conn = DriverManager.getConnection(url, "kmk414", "pass123");
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			%>
			<tr bgcolor="#CCCCCC" align="center"><td width = 75px>�й�</td><td width = 75px>�̸�</td><td width = 50px>����</td><td width = 300px>����ð�</td></tr>
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
	<br><a href="Exam_Main.jsp">�������� ���ư���</a>
</center>
</body>