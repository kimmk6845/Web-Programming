<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<% request.setCharacterEncoding("euc-kr"); %>
 
    <jsp:useBean id="ti_year" class="Join.ti_gyesan" />  
    
    <jsp:setProperty name="ti_year" property="*" />
<body>
�Է� �� ���̴� : <%=  ti_year.getAge()  %>  �̰�,  <br>
�¾ �⵵��  : <%=  ti_year.getBirth_year()  %>  �̰�,  <br>
�¾ �⵵ ��� ��  : <%=  ti_year.getTi()  %>  �̴�,  <br>
�޼ҵ� ����  : <%=  ti_year.Test()  %>  �̴�,  <br>
</body>
