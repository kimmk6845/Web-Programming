<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%> 			<!-- 데이터베이스 연결과정 1 Import-->
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

//드라이버 설정
String driver="oracle.jdbc.driver.OracleDriver";  //드라이버 이름 설정
String url="jdbc:oracle:thin:@localhost:1521:orcl";

//데이터 베이스 연결과정 2 JDBC Driver load
 Class.forName(driver);

//데이터 베이스 연결과정 3 DB서버 접속
 conn=DriverManager.getConnection(url,"kmk414","pass123");

//데이터 베이스 연결과정 4 PreparedStatement 객체생성
 pstmt=conn.prepareStatement("INSERT INTO member VALUES(?,?,?,?,?,?,?)");
 pstmt.setString(1,id);
 pstmt.setString(2,pass);
 pstmt.setString(3,name);
 pstmt.setInt(4,age);
 pstmt.setString(5,gender);
 pstmt.setString(6,email);
 pstmt.setInt(7,status); 
 
 //데이터 베이스 연결과정 5 SQL문 실행
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