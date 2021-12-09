<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <!-- 선언부  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 사용예 -->
<c:forEach var="num" begin="1" end="5">
${num}<br>
</c:forEach>
