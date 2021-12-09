<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>

<%
	request.setCharacterEncoding("EUC-KR");
%>

<head>
<title>문제 리스트</title>
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
		<B>문제 LIST</B>
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
			pstmt = conn.prepareStatement("select * from QUIZ order by Q_NUM asc"); 	//1번부터 문제를 띄어줌
			rs = pstmt.executeQuery();

			while (rs.next()) {
		%>
		<tr height=50px>
			<td>문제 타입 : <%=rs.getString(3)%></td>
			<td>문제 : <%=rs.getString(2)%></td>
		</tr>
		<%
			if (rs.getString(3).equals("TI"))	//문제 유형이 TI형이면 이미지들을 출력해줌
				{
		%>
		<tr height=200px>
			<td><a href="deleteQuiz.jsp?deleteQnum=<%=Integer.toString(rs.getInt(1))%>">삭제</a></td>	  <!-- 삭제할 시 문제번호를 포함시켜 deleteQuiz페이지로 넘김 -->
			<td>보기1번 : <image src="image/<%=rs.getString(5)%>">
				&nbsp;&nbsp;보기2번 : <image src="image/<%=rs.getString(6)%>">
				&nbsp;&nbsp;보기3번 : <image src="image/<%=rs.getString(7)%>"><br>
				&nbsp;&nbsp;보기4번 : <image src="image/<%=rs.getString(8)%>">
				&nbsp;&nbsp;<font color="red">정답 : <image
						src="image/<%=rs.getString(9)%>"></font></td>
		</tr>
		<%
			}else{
		%>
		<tr height=200px rowspan=2>
			<td><a href="deleteQuiz.jsp?deleteQnum=<%=Integer.toString(rs.getInt(1))%>">삭제</a></td>
			<td>보기1번 : <%=rs.getString(5)%>&nbsp;&nbsp;보기2번 : <%=rs.getString(6)%>
				&nbsp;&nbsp;보기3번 : <%=rs.getString(7)%>&nbsp;&nbsp;보기4번 : <%=rs.getString(8)%>&nbsp;&nbsp;<font
				color="red">정답 : <%=rs.getString(9)%></font></td>
		</tr>
		<%
			}
	}
%>
	</table>
	<h3>
		<a href="Exam_Main.jsp">메인으로 돌아가기</a>
</body>