<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<%  request.setCharacterEncoding("euc-kr");  %>


<html>
<head>
<meta charset="EUC-KR">
<title>Register Form</title>

	<style type ="text/css">
     .style1{background-color:#D3D3D3; color:blue; font-weight:bold; font-size:25px; text-align:center;}
     .style2{background-color:#D3D3D3; color:blue; fon-weight:500; font-size:15px;}
     .style3{color:blue; fon-weight:500; font-size:15px;}
     .style4{background-color:#D3D3D3; text-align:center;}
    </style>
    
    
</head>
<body>

<center>
<table border = 1, width = 600>
<tr><td class="style1" colspan = "2" height = "100">ȸ�� ���� ���� ���</td></tr>

<tr><td class="style2" width = 100>* ���̵�</td>
	<td class="style3"><%= request.getParameter("userID") %></td></tr>
	
<tr><td class="style2">* ��й�ȣ</td>
	<td class="style3"><%= request.getParameter("pass") %>
	
<tr><td class="style2">* �̸�</td>
	<td class="style3"><%= request.getParameter("name") %></td></tr>
	
<tr><td class="style2">* �̸���</td>
	<td class="style3"><%= request.getParameter("mail") %></td></tr>

<tr><td class="style2">��ȭ��ȣ</td>
	<td class="style3"><%= request.getParameter("home-num1") %>-
	<%= request.getParameter("home-num2") %>-
	<%= request.getParameter("home-num3") %></td></tr>
	
<tr><td class="style2">* �ڵ�����ȣ</td>
	<td class="style3"><%= request.getParameter("phone-num1") %>-
	<%= request.getParameter("phone-num2") %>-
	<%= request.getParameter("phone-num3") %></td></tr>
	
<tr><td class="style2">�ֹι�ȣ</td>
	<td class="style3"><%= request.getParameter("jumin1") %>-
	<%=request.getParameter("jumin2") %></td></tr>
	
<tr><td class="style2">�����ȣ</td>
	<td class="style3"><%=request.getParameter("postcode1") %>-
	<%=request.getParameter("postcode2") %></td></tr>
	
<tr><td class="style2">�ּ�</td>
	<td class="style3"><%=request.getParameter("address1") %></td></tr>
	
<tr><td class="style2">�������ּ�</td>
	<td class="style3"><%=request.getParameter("address2") %></td></tr>

<tr><td class="style2">�������</td>
	<td class="style3"><%=request.getParameter("year") %>��
	<%=request.getParameter("month") %>��
	<%=request.getParameter("day") %>��
	<%=request.getParameter("age") %>��</td></tr>
	
<tr><td class="style3">����</td>
	<td class="style3"><%=request.getParameter("gender") %></td></tr>
	
<tr><td class="style3">���</td>
	<td class="style3">
	<% 
		String[] likes=request.getParameterValues("likes");
		for(int i=0;i<likes.length;i++)  {
	%> <%= likes[i] %> &nbsp;&nbsp;	<% } %>

<tr><td class="style3">����</td>
	<td class="style3"><%=request.getParameter("job") %></td></tr>
	
<tr><td class="style3">���ϼ��ſ��� </td>
	<td class="style3"><%=request.getParameter("mail_yn") %></td></tr>
	
<tr><td class="style3">�ڱ�Ұ�</td>
	<td class="style3"><%= request.getParameter("intro") %></td></tr>
		
<tr><td class="style4" colspan=2 height=30></td></tr>

</table>
</center>

</body>
</html>
