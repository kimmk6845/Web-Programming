<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%> 			<!-- �����ͺ��̽� ������� 1 Import-->
<%@ page import="javax.naming.*" %>

<%
request.setCharacterEncoding("euc-kr");

String id = request.getParameter("id");
String pass = request.getParameter("pass");
String name = request.getParameter("name");
int age = Integer.parseInt(request.getParameter("age"));
String gender = request.getParameter("gender");
String email = request.getParameter("email");

//Connection -> PreparedStatement -> ResultSet
int status = 0;
Connection conn = null; 		
PreparedStatement pstmt = null;
ResultSet rs = null;

//����̹� ����
String driver="oracle.jdbc.driver.OracleDriver";  //����̹� �̸� ����
String url="jdbc:oracle:thin:@localhost:1521:orcl";

//������ ���̽� ������� 2 JDBC Driver load
 Class.forName(driver);

//������ ���̽� ������� 3 DB���� ����
 conn=DriverManager.getConnection(url,"kmk414","pass123");

//������ ���̽� ������� 4 PreparedStatement ��ü����
 pstmt=conn.prepareStatement("INSERT INTO member VALUES(?,?,?,?,?,?,?)");
 pstmt.setString(1,id);
 pstmt.setString(2,pass);
 pstmt.setString(3,name);
 pstmt.setInt(4,age);
 pstmt.setString(5,gender);
 pstmt.setString(6,email);
 pstmt.setInt(7,status); 
 
 //������ ���̽� ������� 5 SQL�� ����
 int result=pstmt.executeUpdate();
 if(result!=0)
 {  
     out.println("<script>");
     out.println("location.href='memberLogin.jsp'");
     out.println("</script>");
   }
 else
 {
     out.println("<script>");
     out.println("location.href='memberJoin.jsp'");
     out.println("</script>");
  }
 %>