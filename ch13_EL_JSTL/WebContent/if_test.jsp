<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- �����  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- ��뿹 -->
<c:remove var="aaa"/>
<c:if test="${empty aaa ? true : false}" var="result">
���� aaa ���� �ƹ��͵� ����<br>
</c:if>
var=result �� ${result}
<!-- test ���� ������ true/false �� ���� ������. -->
<!-- ���� aaa���� �ƹ��͵� �����Ƿ� result ���� true ���� -->
