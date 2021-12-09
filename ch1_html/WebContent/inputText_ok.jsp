<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
        <%  request.setCharacterEncoding("euc-kr");  %>
          <!-- post방식일 때 한글 처리하는 구문임!!! -->
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


     <%
         String id=request.getParameter("userid");
         //out.print("전송되어 온 ID 는 : ");
         //out.print(id);
     %>
     
     <!-- 이렇게도 출력 가능  -->
      <%= "넘겨져 온 아이디는 : " %> 	<!-- %=의 의미는 출력문임 -->
      <%= id %>


</body>
</html>

<!-- <% %>는 java코드임 -->
<!-- request.getParameter는  서버에서 전달되어온 값을 받음 그것을 id에 저장-->
<!-- out 객체는 내장 객체/ 선언하지않고 바로 사용 가능(출력) -->
