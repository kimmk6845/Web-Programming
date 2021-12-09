<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>

<%
	request.setCharacterEncoding("EUC-KR");

//관리자 아이디 로그인 없이 이 페이지로 접근 하려고 하면 메인 페이지로 보내버림
	if ((session.getAttribute("admin")==null) || (!((String)session.getAttribute("admin")).equals("admin*"))) {
  		out.println("<script>");					 	
  		out.println("location.href='Exam_Main.jsp'");
  		out.println("</script>");
  		}
%>

<html>
<head>
<title>문제 추가 페이지</title>
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
			<B>문제 추가</B>
		</h1>
		<table height="300px">
			<tr>
				<td colspan=3>문제 타입&nbsp;<select name="q_type">
						<OPTION VALUE="TT">TT</OPTION>
						<OPTION VALUE="TI">TI</OPTION>
						<OPTION VALUE="IT">IT</OPTION>
				</select></td>
			</tr>
			<tr>
				<td colspan=2>문제&nbsp;<input type="text" size=75
					name="q_question"></td>
				<td>문제 이미지&nbsp;<input type="text" name="q_image"></td>
			</tr>
			<tr>
				<td>보기 1번&nbsp;<input type="text" name="bogi1"></td>
				<td>보기 2번&nbsp;<input type="text" name="bogi2"></td>
				<td>보기 3번&nbsp;<input type="text" name="bogi3"></td>
			</tr>
			<tr>
				<td>보기 4번&nbsp;<input type="text" name="bogi4"></td>
				<td colspan=2><font color = "red">정답</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="text" name="q_answer"></td>
			</tr>
		</table>
		<br>
		<center>
			<input type=submit value="문제 추가"><br><br>
	</form>
	
	<form name="addQuizform" action="Quiz_List.jsp" method="post">
		<input type=submit value="문제 리스트로 가기">
	</form>
	
	<a href="Exam_Main.jsp">메인으로 돌아가기</a>
	</center>

</body>
</html>