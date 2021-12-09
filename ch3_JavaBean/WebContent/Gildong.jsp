<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<jsp:useBean id= "gd" class="Join.Gildong" scope="page"/>
<!-- Join 패키지안의 Gildong클래스로 gd 라는 이름으로 객체 생성 -->

<!-- <jsp:setProperty name= "gd" property= "name" value="KBS"/> -->
<!-- name을 kbs로 set함 -->

<jsp:setProperty name= "gd" property= "name" param="name"/>
<!-- 폼(BeanTest.jsp)에서 입력을 받는 경우 value가 아니라 param을 이용해야함!! -->






<body>

<b>자바빈 사용 예제</b><br>
 Gildong 자바빈에  private 로 저장된 name 값을 불러옴 .
<h4>  <%= gd.getName() %>      </h4>
        <!-- 생성된 객체 이름으로 접근 --> 
        <!-- gd 에 있는 getName() 호출 --> 
        
<h4>  <jsp:getProperty name= "gd" property= "name" /></h4> 
		<!-- 위의 gd.getName()과 같은 결과가 출력됨 -->
</body>
