<%@ page language="java" contentType="text/html; charset=EUC-KR"   pageEncoding="EUC-KR"%>
<body>
 <!--  EL 표현식으로 값을 가져오면 편하다.  -->
 <!--  스트럿츠나 스프링과 같은 프레임 워크로 웹 개발할 때 주로 사용 -->
  ${"hello" }  <!--  EL 로 출력 --><br>
  <%= "Hello" %> <!-- 표현식으로 출력 --><br>
  <% out.println("HELLO");  %>  <!-- 스크립트로 출력 -->
</body>
