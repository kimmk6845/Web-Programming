<%@ page import="java.util.*"%>  <!-- 추가 -->
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

<h3> ArrayList 사용법 </h3><br/>
 <%
 //  AL class의 길이만큼 가져와  String 타입의 Value에 AL의 값을 할당
  for (int i = 0; i < AL.size(); i++) {
        String Value = AL.get(i);
 %>
  <%= Value %><br/>  <!-- Value의 값을 출력 -->

 <%
  }
 %>
