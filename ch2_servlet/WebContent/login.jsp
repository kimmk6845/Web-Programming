<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%  request.setCharacterEncoding("euc-kr");  %>
    
<body>
<h4>로그인 정보 세션 저장</h4>
<%
String name="HongGilDong";
 String id = request.getParameter("userid");
 if(id == "") /*  id 가 없으면 로그인 창으로 가라  */
 {
      response.sendRedirect("loginForm.jsp");
 }
 else
 {
   String pw = request.getParameter("passwd");
   session.setAttribute("username", name); // 세션값 지정
   session.setAttribute("userid", id);           // 세션값 지정
   session.setAttribute("passwd", pw);        // 세션값 지정
   out.print( "안녕하세요" + "&nbsp;" + id + "&nbsp;"+ "님");
   out.print("<br><br>");
   out.print("<a href='loginInfo.jsp'>정보보기</a>");
  }
%>
</body>
 