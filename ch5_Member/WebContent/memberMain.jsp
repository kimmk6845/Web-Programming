<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
   String id=null;
  if (session.getAttribute("id")!=null) //세션값이 null이 아니면
   {
       id=(String)session.getAttribute("id"); //id에 세션값 저장
   }
     else
     {
      out.println("<script>");
      out.println("location.href='memberLogin.jsp'");
      out.println("</script>");
     }
%>
<html>
<head>
<title>회원관리 시스템 메인 페이지</title>
</head>
<body>
<h3><%=id %> 님 로그인하셨습니다.</h3>
<% if(id.equals("admin")) 
      {   %>
          <a href="memberList.jsp">관리자모드 접속(회원 목록 보기)</a>
       <%    }
else
{ 
	%>
<a href="memberModify.jsp?id=<%=id %>"> 내 정보 수정하기 </a>
<% 
}
 %>
</body>
</html>