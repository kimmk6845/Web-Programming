<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
        <%  request.setCharacterEncoding("euc-kr");  %>
          <!-- post����� �� �ѱ� ó���ϴ� ������!!! -->
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


     <%
         String id=request.getParameter("userid");
         //out.print("���۵Ǿ� �� ID �� : ");
         //out.print(id);
     %>
     
     <!-- �̷��Ե� ��� ����  -->
      <%= "�Ѱ��� �� ���̵�� : " %> 	<!-- %=�� �ǹ̴� ��¹��� -->
      <%= id %>


</body>
</html>

<!-- <% %>�� java�ڵ��� -->
<!-- request.getParameter��  �������� ���޵Ǿ�� ���� ���� �װ��� id�� ����-->
<!-- out ��ü�� ���� ��ü/ ���������ʰ� �ٷ� ��� ����(���) -->
