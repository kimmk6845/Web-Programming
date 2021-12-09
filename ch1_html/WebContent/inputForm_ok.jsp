<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>


<%  request.setCharacterEncoding("euc-kr");  %>
  <!-- post방식임으로 한글처리방식 -->

<html><head>
<title>Request Test</title>
</head><body>
<h4>Request 처리 페이지입니다.</h4>
<table border="1" width="400">

<tr><td width = "100">이름</td>
       <td><%=request.getParameter("name") %></td></tr>
       
<tr><td>성별</td><td>
       <%=request.getParameter("gender") %>
</td></tr>

<tr><td>취미</td><td>
<%
//checkbox에서 넘어온 값을 처리해야함으로 배열로 처리하고 request.getParameterValues를 사용해야함
     String[] likes=request.getParameterValues("likes");  
               //배열로 처리
     for(int i=0;i<likes.length;i++)  {
%>
    <%=likes[i] %> &nbsp;&nbsp;
<%
    } 
%>
</td></tr> 

<tr><td>직업</td><td>
        <%=request.getParameter("job") %>
</td></tr>

<tr><td>메일수신여부</td>
       <td> <%=request.getParameter("mail_yn") %>
       </td></tr>

<tr><td>자기소개</td><td>
       <%=request.getParameter("intro") %>
</td></tr>

</table></body></html>
