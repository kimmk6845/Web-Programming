<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>

<%
	request.setCharacterEncoding("EUC-KR");
%>

<head>
<title>���� ����Ʈ</title>
<style>
table {
	margin: auto;
	text-align: center;
	width: 75%;
	border: 2px solid;
}

h1, h3 {
	text-align: center;
}

input[type="submit"] {
	background-color: white;
	color: black;
	border: 2px solid #4CAF50;
	border-radius: 4px;
	font-size: 20px;
}

tr td {
	border: 1px solid;
}
</style>
</head>

<body>
	<h1>
		<B>���� LIST</B>
	</h1>
	<table>
		<%
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			Class.forName(driver);
			conn = DriverManager.getConnection(url, "kmk414", "pass123");
			pstmt = conn.prepareStatement("select * from QUIZ order by Q_NUM asc"); 	//1������ ������ �����
			rs = pstmt.executeQuery();

			while (rs.next()) {
		%>
		<tr height=50px>
			<td>���� Ÿ�� : <%=rs.getString(3)%></td>
			<td>���� : <%=rs.getString(2)%></td>
		</tr>
		<%
			if (rs.getString(3).equals("TI"))	//���� ������ TI���̸� �̹������� �������
				{
		%>
		<tr height=200px>
			<td><a href="deleteQuiz.jsp?deleteQnum=<%=Integer.toString(rs.getInt(1))%>">����</a></td>	  <!-- ������ �� ������ȣ�� ���Խ��� deleteQuiz�������� �ѱ� -->
			<td>����1�� : <image src="image/<%=rs.getString(5)%>">
				&nbsp;&nbsp;����2�� : <image src="image/<%=rs.getString(6)%>">
				&nbsp;&nbsp;����3�� : <image src="image/<%=rs.getString(7)%>"><br>
				&nbsp;&nbsp;����4�� : <image src="image/<%=rs.getString(8)%>">
				&nbsp;&nbsp;<font color="red">���� : <image
						src="image/<%=rs.getString(9)%>"></font></td>
		</tr>
		<%
			}else{
		%>
		<tr height=200px rowspan=2>
			<td><a href="deleteQuiz.jsp?deleteQnum=<%=Integer.toString(rs.getInt(1))%>">����</a></td>
			<td>����1�� : <%=rs.getString(5)%>&nbsp;&nbsp;����2�� : <%=rs.getString(6)%>
				&nbsp;&nbsp;����3�� : <%=rs.getString(7)%>&nbsp;&nbsp;����4�� : <%=rs.getString(8)%>&nbsp;&nbsp;<font
				color="red">���� : <%=rs.getString(9)%></font></td>
		</tr>
		<%
			}
	}
%>
	</table>
	<h3>
		<a href="Exam_Main.jsp">�������� ���ư���</a>
</body>