<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
<%
    String contPath=application.getContextPath();
    String filePath=application.getRealPath("applicationTest.jsp");
    String serverInfo=application.getServerInfo();
%>
<table border="1">
<tr><td>ContextPath</td><td><%= contPath %></td></tr>
<tr><td>���ϰ��</td><td><%= filePath %></td></tr>
<tr><td>��������</td><td><%= serverInfo %></td></tr>
</table>
</body>

</html>