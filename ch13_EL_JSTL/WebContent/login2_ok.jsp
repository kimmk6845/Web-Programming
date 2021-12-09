<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
 <!--  빈을 사용하는데 이름을 myBean 으로 하겠다고 선언 -->
 <jsp:useBean id="myBean" class="com.bean.LoginBean" />    
<!-- 자바빈의 속성 명과 html 태그 입력 파라미터 이름이 같으면  -->
<!-- property="*" 로 간단히 쓸 수 있다. -->
<jsp:setProperty name="myBean" property="*" />    
<body>

 <h3> 1. get-property 이용</h3>
사용자 아이디:<jsp:getProperty name="myBean" property="userid"/><br>
사용자 비밀번호:<jsp:getProperty name="myBean" property="passwd"/><br>

<h3>2. EL 표기법으로 출력 </h3>
<!-- 입력 파라미터를 자바 빈에 저장하지 않고 바로 출력하는 방식 -->
 <%--  EL 표기법으로 출력 즉, ${자바빈이름.property} 로 출력  --%>
사용자 아이디: ${myBean.userid}<br>
사용자 비밀번호: ${myBean.passwd}<br>  
</body>


