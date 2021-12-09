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

아이디는 : ${id} 이고 <br>
패스는 : ${pass} 이다. <br>

</body>
</html>