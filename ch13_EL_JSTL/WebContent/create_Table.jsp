<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>

<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "kmk414", "pass123");
Statement stmt = con.createStatement();
  // [1] �ܰ� DAO_member ���̺� ����
  // String sql = "drop table emp";
  // stmt.executeUpdate(sql);
  // out.print("emp  ���̺� Delete ��.");

  // [2] ���̺� �����ϱ�
  // String sql = "create table emp (emp_id varchar2(10) primary key, ename varchar2(10), salary number(5), depart varchar2(10) )";
  // stmt.executeUpdate(sql);
  // out.print("emp  ���̺� ������.");

  // [3] �ܰ� ���̺� ������ �Է� 
  //String sql = "insert into emp(emp_id, ename,salary,depart) values('aaaa','������',10000,'�λ�')" ;
  //stmt.executeUpdate(sql);
  //out.print ("emp ���̺� Insert  ��.");  

 
  //[4] �ܰ� ���̺� ���� �ҷ�����
  ResultSet rs=stmt.executeQuery("select * from emp");
  while(rs.next()) {
  out.print("<br>" + rs.getString("emp_id") +  " : " + rs.getString("ename") +  " : " + rs.getString("salary") +  " : " + rs.getString("depart")); } 
  rs.close();  
 %>
