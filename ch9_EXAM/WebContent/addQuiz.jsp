<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>

<%
	request.setCharacterEncoding("EUC-KR");

//������ ���̵� �α��� ���� �� �������� ���� �Ϸ��� �ϸ� ���� �������� ��������
	if ((session.getAttribute("admin")==null) || (!((String)session.getAttribute("admin")).equals("admin*"))) {
  		out.println("<script>");					 	
  		out.println("location.href='Exam_Main.jsp'");
  		out.println("</script>");
  		}
%>

<html>
<head>
<title>���� �߰� ������</title>
<style>
table {
	width: 75%;
	margin: auto;
	border: 1px solid;
}

input[type="submit"] {
	background-color: white;
	color: black;
	border: 2px solid #4CAF50;
	border-radius: 4px;
	font-size: 20px;
}
</style>
</head>
<body>
	<form name="addQuizform" action="addQuiz_Ok.jsp" method="post">
		<h1 align="center">
			<B>���� �߰�</B>
		</h1>
		<table height="300px">
			<tr>
				<td colspan=3>���� Ÿ��&nbsp;<select name="q_type">
						<OPTION VALUE="TT">TT</OPTION>
						<OPTION VALUE="TI">TI</OPTION>
						<OPTION VALUE="IT">IT</OPTION>
				</select></td>
			</tr>
			<tr>
				<td colspan=2>����&nbsp;<input type="text" size=75
					name="q_question"></td>
				<td>���� �̹���&nbsp;<input type="text" name="q_image"></td>
			</tr>
			<tr>
				<td>���� 1��&nbsp;<input type="text" name="bogi1"></td>
				<td>���� 2��&nbsp;<input type="text" name="bogi2"></td>
				<td>���� 3��&nbsp;<input type="text" name="bogi3"></td>
			</tr>
			<tr>
				<td>���� 4��&nbsp;<input type="text" name="bogi4"></td>
				<td colspan=2><font color = "red">����</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="text" name="q_answer"></td>
			</tr>
		</table>
		<br>
		<center>
			<input type=submit value="���� �߰�"><br><br>
	</form>
	
	<form name="addQuizform" action="Quiz_List.jsp" method="post">
		<input type=submit value="���� ����Ʈ�� ����">
	</form>
	
	<a href="Exam_Main.jsp">�������� ���ư���</a>
	</center>

</body>
</html>