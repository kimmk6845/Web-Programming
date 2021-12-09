<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
<%!     // 선언문
    int age;
%>

<%
    String str=request.getParameter("age");
    age=Integer.parseInt(str);  // 형변환
%>  
<%= age %> 는 <br>
성인 입니다.  주류 구매가 가능합니다. 
</body>

</html>