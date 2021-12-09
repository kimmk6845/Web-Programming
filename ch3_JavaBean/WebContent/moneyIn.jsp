<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <!-- 일반 클래스를 사용한 것임(바람직하지 않음).. 속성을 이용할 것!!  -->
 <!--  moneyBean  클래스를 이 파일로  import 함 -->
 <%@ page import="moneychange.moneyBean"%>
 
<% request.setCharacterEncoding("euc-kr"); %>
 
<body><br>
<%
     String money = request.getParameter("money"); //값을 받아야하는데 값이 없으니 error가 발생함..
     // 따라서 실행하려면 jsp뒤에 ?money=값 을 넣어줘야함
     /* 전달되어 온 것을 받아 저장함 */
     int won = Integer.parseInt(money);
%>
<!-- MC 객체 생성 -->
<% moneyBean MC = new moneyBean(); %>
<!-- moneyBean에 있는 getNumber()메소드 호출 -->
한국 돈   <%= MC.getNumber(won) %>  원을 ,  <br>  

<!-- moneyBean에 있는 America()메소드 호출 -->
미국 돈으로 환전하면   <%= MC.America(won) %>  달러고 ,  <br>

<!-- moneyBean에 있는 Japan()메소드 호출메소드 호출 -->
일본 돈으로 환전하면   <%= MC.Japan(won) %>  엔이다 ,  <br>

</body> 
