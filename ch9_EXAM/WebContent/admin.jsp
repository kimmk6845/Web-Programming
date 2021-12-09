<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>관리자 페이지입니다.</title>
</head>
<body>
<form name="adminform" action="admin_Ok.jsp" method="post">
<table border=1px>
<h1><B>관리자 정보를 입력하세요.</B></h1>
<tr><td>관리자 아이디</td><td><input type="text" name="admin"></td></tr>
<tr><td colspan=2 align=center><input type="submit" value="확인">&nbsp;&nbsp;<a href = "Exam_Main.jsp">돌아가기</a></td></tr>
</table>
</form>
</body>
</html>