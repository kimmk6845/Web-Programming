<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<body>
<h4>로그인 정보 보기</h4>
<%
    String id = (String)session.getAttribute("userid");
      //  세션 값 읽어 옴
if( id == null )
{
     response.sendRedirect("loginForm.jsp");
     //  로그인 하지 않고 바로 이 파일 실행하면 
     //  loginForm.jsp 파일만 계속 호출 됨
     //	 login.jsp 파일을 실행하면 id가 null값으로 실행이 됨..Form파일로 튕겨나가지 않음
}
else
{
                 // 세션 값 읽어 옴
  String pw = (String)session.getAttribute("passwd");
  String name = (String)session.getAttribute("username");
  out.print("사용자 이름 값: " + name + "<br>");
  out.print("사용자 아이디값: " + id + "<br>");
  out.print("사용자 비밀번호값: " + pw + "<br>");
  out.print("<a href='logout.jsp'>로그 아웃</a>");
}
%>
</body>
