<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<% request.setCharacterEncoding("euc-kr"); %>

<!-- join ��Ű���� �ִ� JoinBean Ŭ������ Join �̶� �θ��ڴٰ� ���� , ��, Join ������ ��ü ���� �� -->
    <jsp:useBean id= "Join" class= "Join.MemberBean" />
     <!-- ������ ������ ������ ��ü join �� �����͸� ������ �� �ϰ��� �ϰڴٰ� ����  -->

   <!--  �Ʒ��� ���� property="*��  �� �ϸ� �Ƶ�, pass, �̸�, ����, ����, �̸��� �� setProperty  ���� �ʾƵ� �ȴ�.  -->
   <jsp:setProperty name= "Join" property="*" />

<center> <table border=1 >
<tr> <td width="75px"><font size=2>���̵� : </td>
<td width="100px"> <jsp:getProperty name= "Join" property="id"/></td>
<td width="100px"> <%= Join.getId() %></td> </tr>

<tr> <td> <font size=2>��й�ȣ : </td>
<td> <jsp:getProperty name= "Join" property="pass"/></td>
<td> <%= Join.getPass() %></td> </tr>

<tr> <td> <font size=2>�̸� : </td>
<td> <jsp:getProperty name= "Join" property="name"/></td>
<td> <%= Join.getName() %></td> </tr>

<tr> <td> <font size=2>���� : </td>
<td> <jsp:getProperty name= "Join" property="sex"/></td>
<td> <%= Join.getSex() %></td> </tr>

<tr> <td> <font size=2>���� : </td>
<td> <jsp:getProperty name= "Join" property="age"/></td>
<td> <%= Join.getAge() %></td> </tr>

<tr> <td bgcolor="yellow"><font size=2>�̸����ּ� : </td>
<td> <jsp:getProperty name= "Join" property="email"/></td>
<td> <%= Join.getEmail() %></td> </tr> 
</table></center>
