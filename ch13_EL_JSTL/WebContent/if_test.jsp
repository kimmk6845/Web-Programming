<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 선언부  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 사용예 -->
<c:remove var="aaa"/>
<c:if test="${empty aaa ? true : false}" var="result">
변수 aaa 에는 아무것도 없다<br>
</c:if>
var=result 는 ${result}
<!-- test 안의 내용이 true/false 에 따라서 동작함. -->
<!-- 변수 aaa에는 아무것도 없으므로 result 에는 true 저장 -->
