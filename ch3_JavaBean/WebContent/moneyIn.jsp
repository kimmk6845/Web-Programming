<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <!-- �Ϲ� Ŭ������ ����� ����(�ٶ������� ����).. �Ӽ��� �̿��� ��!!  -->
 <!--  moneyBean  Ŭ������ �� ���Ϸ�  import �� -->
 <%@ page import="moneychange.moneyBean"%>
 
<% request.setCharacterEncoding("euc-kr"); %>
 
<body><br>
<%
     String money = request.getParameter("money"); //���� �޾ƾ��ϴµ� ���� ������ error�� �߻���..
     // ���� �����Ϸ��� jsp�ڿ� ?money=�� �� �־������
     /* ���޵Ǿ� �� ���� �޾� ������ */
     int won = Integer.parseInt(money);
%>
<!-- MC ��ü ���� -->
<% moneyBean MC = new moneyBean(); %>
<!-- moneyBean�� �ִ� getNumber()�޼ҵ� ȣ�� -->
�ѱ� ��   <%= MC.getNumber(won) %>  ���� ,  <br>  

<!-- moneyBean�� �ִ� America()�޼ҵ� ȣ�� -->
�̱� ������ ȯ���ϸ�   <%= MC.America(won) %>  �޷��� ,  <br>

<!-- moneyBean�� �ִ� Japan()�޼ҵ� ȣ��޼ҵ� ȣ�� -->
�Ϻ� ������ ȯ���ϸ�   <%= MC.Japan(won) %>  ���̴� ,  <br>

</body> 
