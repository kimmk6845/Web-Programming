<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

id=<%= request.getAttribute("id") %></br>
pass=<%= request.getAttribute("pass") %></br>

���̵�� : ${id} �̰� <br>
�н��� : ${pass} �̴�. <br>

</body>
</html>