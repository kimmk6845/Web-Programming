<%@ page import="java.util.*"%>  <!-- �߰� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
 
<%
     ArrayList<String> AL = new ArrayList<String>();
      AL.add("KBS");
      AL.add("MBC");
      AL.add("SBS");
      AL.add("YTN");
      
      AL.add(2,"Hello");
      AL.remove(0);
%>

<h3> ArrayList ���� </h3><br/>
 <%
 //  AL class�� ���̸�ŭ ������  String Ÿ���� Value�� AL�� ���� �Ҵ�
  for (int i = 0; i < AL.size(); i++) {
        String Value = AL.get(i);
 %>
  <%= Value %><br/>  <!-- Value�� ���� ��� -->

 <%
  }
 %>
