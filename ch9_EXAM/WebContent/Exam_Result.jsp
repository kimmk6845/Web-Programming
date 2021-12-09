<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.naming.*"%>

<!DOCTYPE html>
<% 
request.setCharacterEncoding("EUC-KR");
int score = 0;
String bogi1 = request.getParameter("bogi1");
String bogi2 = request.getParameter("bogi2");
String bogi3 = request.getParameter("bogi3");
String bogi4 = request.getParameter("bogi4");
String bogi5 = request.getParameter("bogi5");
String dap1 = request.getParameter("dap1");
String dap2 = request.getParameter("dap2");
String dap3 = request.getParameter("dap3");
String dap4 = request.getParameter("dap4");
String dap5 = request.getParameter("dap5");

if(dap1.equals(bogi1)) score++;
if(dap2.equals(bogi2)) score++;
if(dap3.equals(bogi3)) score++;
if(dap4.equals(bogi4)) score++;
if(dap5.equals(bogi5)) score++;

String name = request.getParameter("name");
String hakbun = request.getParameter("hakbun");
Connection conn = null;
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
Class.forName(driver);
conn = DriverManager.getConnection(url, "kmk414", "pass123");
Statement stmt = conn.createStatement();
String sql = "select count(*) cnt from SCORE where S_NUM = '" + hakbun + "'";

ResultSet rs = stmt.executeQuery(sql);
rs.next();
if (rs != null)
{
	if (rs.getInt("cnt") > 0) {
		out.println("<script>");
		out.println("location.href='OnlineExam.jsp'");
		out.println("</script>");
	}else {
		String SQL1 = "insert into SCORE(S_NUM, S_Name, S_GRADE) values (?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(SQL1);
		pstmt.setString(1, hakbun);
		pstmt.setString(2, name);
		pstmt.setInt(3, score);
		pstmt.executeUpdate();
		pstmt.close();
		stmt.close();
		conn.close();
	}
}
%>
<head>
<title>������ ������</title>
<style>
table{
	width:50%;
	border:1px solid;
	text-align:center;
}
td{
	border:1px solid;
}
</style>
</head>

<body>
	<center>
	<h1>���� ���</h1><br>
	<table>
	<tr><td width=10%>�й�</td><td width=90%><%=request.getParameter("hakbun")%></td></tr>
	<tr><td>�̸�</td><td><%=request.getParameter("name") %></td></tr>
	<tr><td>����</td><td><%=score%>/5</td></tr>
	<tr><td colspan=2 align=center><a href = "Exam_List.jsp">���� ����Ʈ ����</a></td></tr>
	</table>
	
	<br><br>
	
	<table>
	<caption><h1><B>�����Ʈ</B></h1></caption>
	<tr><td width=30% height=70px><B>����1</B></td><td width=70%><%=request.getParameter("question1")%></td></tr>
	<% if(request.getParameter("type1").equals("TI"))
		{
		%>
			<tr><td height = 100px>���� ��=<image src="image/<%=bogi1%>" width="120px" height="150px"></td>
			<td>����=<image src="image/<%=dap1%>" width="120px" height="150px"></td></tr>
		<%
		}else{
		%>
			<tr><td height = 100px>���� ��=<%=bogi1%></td><td>����=<%=dap1%></td></tr>
		<% } %>

	
	<tr><td height=70px><B>����2</B></td><td><%=request.getParameter("question2")%></td></tr>
	<% if(request.getParameter("type2").equals("TI"))
		{
		%>
			<tr><td height = 100px>���� ��=<image src="image/<%=bogi2%>" width="120px" height="150px"></td>
			<td>����=<image src="image/<%=dap2%>" width="120px" height="150px"></td></tr>
		<%
		}else{
		%>
			<tr><td height = 100px>���� ��=<%=bogi2%></td><td>����=<%=dap2%></td></tr>
		<% } %>
	
	<tr><td height=70px><B>����3</B></td><td><%=request.getParameter("question3")%></td></tr>
	<% if(request.getParameter("type3").equals("TI"))
		{
		%>
			<tr><td height = 100px>���� ��=<image src="image/<%=bogi3%>" width="120px" height="150px"></td>
			<td>����=<image src="image/<%=dap3%>" width="120px" height="150px"></td></tr>
		<%
		}else{
		%>
			<tr><td height = 100px>���� ��=<%=bogi3%></td><td>����=<%=dap3%></td></tr>
		<% } %>
		
	<tr><td height=70px><B>����4</B></td><td><%=request.getParameter("question4")%></td></tr>
	<% if(request.getParameter("type4").equals("TI"))
		{
		%>
			<tr><td height = 100px>���� ��=<image src="image/<%=bogi4%>" width="120px" height="150px"></td>
			<td>����=<image src="image/<%=dap4%>" width="120px" height="150px"></td></tr>
		<%
		}else{
		%>
			<tr><td height = 100px>���� ��=<%=bogi4%></td><td>����=<%=dap4%></td></tr>
		<% } %>
		
	<tr><td height=70px><B>����5</B></td><td><%=request.getParameter("question5")%></td></tr>
	<% if(request.getParameter("type5").equals("TI"))
		{
		%>
			<tr><td height = 100px>���� ��=<image src="image/<%=bogi5%>" width="120px" height="150px"></td>
			<td>����=<image src="image/<%=dap5%>" width="120px" height="150px"></td></tr>
		<%
		}else{
		%>
			<tr><td height = 100px>���� ��=<%=bogi5%></td><td>����=<%=dap5%></td></tr>
		<% } %>
	</table>
	</center>
</body>