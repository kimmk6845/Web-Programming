<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<jsp:useBean id= "gd" class="Join.Gildong" scope="page"/>
<!-- Join ��Ű������ GildongŬ������ gd ��� �̸����� ��ü ���� -->

<!-- <jsp:setProperty name= "gd" property= "name" value="KBS"/> -->
<!-- name�� kbs�� set�� -->

<jsp:setProperty name= "gd" property= "name" param="name"/>
<!-- ��(BeanTest.jsp)���� �Է��� �޴� ��� value�� �ƴ϶� param�� �̿��ؾ���!! -->






<body>

<b>�ڹٺ� ��� ����</b><br>
 Gildong �ڹٺ�  private �� ����� name ���� �ҷ��� .
<h4>  <%= gd.getName() %>      </h4>
        <!-- ������ ��ü �̸����� ���� --> 
        <!-- gd �� �ִ� getName() ȣ�� --> 
        
<h4>  <jsp:getProperty name= "gd" property= "name" /></h4> 
		<!-- ���� gd.getName()�� ���� ����� ��µ� -->
</body>
