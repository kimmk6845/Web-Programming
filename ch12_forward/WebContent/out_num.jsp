<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

 ${su1} + ${su2} = ${add} <br>
 ${su1} - ${su2} = ${sub} <br>
 ${su1} * ${su2} = ${mul} <br>
 ${su1} / ${su2} = ${ddd} <br>
<br>

	<%=request.getAttribute("su1") %> + 
	<%=request.getAttribute("su2") %> =
	<%=request. getAttribute("add") %>
</body>
</html>