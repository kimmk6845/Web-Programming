<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
 <!--  ���� ����ϴµ� �̸��� myBean ���� �ϰڴٰ� ���� -->
 <jsp:useBean id="myBean" class="com.bean.LoginBean" />    
<!-- �ڹٺ��� �Ӽ� ��� html �±� �Է� �Ķ���� �̸��� ������  -->
<!-- property="*" �� ������ �� �� �ִ�. -->
<jsp:setProperty name="myBean" property="*" />    
<body>

 <h3> 1. get-property �̿�</h3>
����� ���̵�:<jsp:getProperty name="myBean" property="userid"/><br>
����� ��й�ȣ:<jsp:getProperty name="myBean" property="passwd"/><br>

<h3>2. EL ǥ������� ��� </h3>
<!-- �Է� �Ķ���͸� �ڹ� �� �������� �ʰ� �ٷ� ����ϴ� ��� -->
 <%--  EL ǥ������� ��� ��, ${�ڹٺ��̸�.property} �� ���  --%>
����� ���̵�: ${myBean.userid}<br>
����� ��й�ȣ: ${myBean.passwd}<br>  
</body>


