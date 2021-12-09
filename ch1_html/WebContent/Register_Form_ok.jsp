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
<tr><td class="style1" colspan = "2" height = "100">회원 정보 수정 양식</td></tr>

<tr><td class="style2" width = 100>* 아이디</td>
	<td class="style3"><%= request.getParameter("userID") %></td></tr>
	
<tr><td class="style2">* 비밀번호</td>
	<td class="style3"><%= request.getParameter("pass") %>
	
<tr><td class="style2">* 이름</td>
	<td class="style3"><%= request.getParameter("name") %></td></tr>
	
<tr><td class="style2">* 이메일</td>
	<td class="style3"><%= request.getParameter("mail") %></td></tr>

<tr><td class="style2">전화번호</td>
	<td class="style3"><%= request.getParameter("home-num1") %>-
	<%= request.getParameter("home-num2") %>-
	<%= request.getParameter("home-num3") %></td></tr>
	
<tr><td class="style2">* 핸드폰번호</td>
	<td class="style3"><%= request.getParameter("phone-num1") %>-
	<%= request.getParameter("phone-num2") %>-
	<%= request.getParameter("phone-num3") %></td></tr>
	
<tr><td class="style2">주민번호</td>
	<td class="style3"><%= request.getParameter("jumin1") %>-
	<%=request.getParameter("jumin2") %></td></tr>
	
<tr><td class="style2">우편번호</td>
	<td class="style3"><%=request.getParameter("postcode1") %>-
	<%=request.getParameter("postcode2") %></td></tr>
	
<tr><td class="style2">주소</td>
	<td class="style3"><%=request.getParameter("address1") %></td></tr>
	
<tr><td class="style2">나머지주소</td>
	<td class="style3"><%=request.getParameter("address2") %></td></tr>

<tr><td class="style2">생년월일</td>
	<td class="style3"><%=request.getParameter("year") %>년
	<%=request.getParameter("month") %>월
	<%=request.getParameter("day") %>일
	<%=request.getParameter("age") %>살</td></tr>
	
<tr><td class="style3">성별</td>
	<td class="style3"><%=request.getParameter("gender") %></td></tr>
	
<tr><td class="style3">취미</td>
	<td class="style3">
	<% 
		String[] likes=request.getParameterValues("likes");
		for(int i=0;i<likes.length;i++)  {
	%> <%= likes[i] %> &nbsp;&nbsp;	<% } %>

<tr><td class="style3">직업</td>
	<td class="style3"><%=request.getParameter("job") %></td></tr>
	
<tr><td class="style3">메일수신여부 </td>
	<td class="style3"><%=request.getParameter("mail_yn") %></td></tr>
	
<tr><td class="style3">자기소개</td>
	<td class="style3"><%= request.getParameter("intro") %></td></tr>
		
<tr><td class="style4" colspan=2 height=30></td></tr>

</table>
</center>

</body>
</html>
