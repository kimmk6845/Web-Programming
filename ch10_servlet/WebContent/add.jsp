<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!-- 서블릿 - 자바 코드로 작성 -->
<%
     int num1=20;
     int num2=10;
     int add=num1+num2;
     out.print(num1 + " + " + num2 + " = " + add);
%>
 <%-- JSP는 HTML  태그 안에 <%   %> 추가하여 그 안에 자바코드를 
    삽입하면 서블릿 컨테이너는 이 부분을 JSP 로 인식하여 해석한 후 
    HTML 형태로 변환하여 응답한다. --%>
