<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>   
<%@ page import="javax.naming.*" %>
<%
request.setCharacterEncoding("euc-kr");

String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("name");
int age=Integer.parseInt(request.getParameter("age"));
String gender=request.getParameter("gender");
String email=request.getParameter("email");
 int status=0; // 0 이면 정상회원, 1이면 불량회원 (디폴트로 0)
Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;

String driver="oracle.jdbc.driver.OracleDriver";  //드라이버 이름 설정
String url="jdbc:oracle:thin:@localhost:1521:orcl";

  Class.forName(driver);  //드라이버 이름으로 드라이버를 로드
  conn=DriverManager.getConnection(url,"kmk414","pass123");
pstmt=conn.prepareStatement("INSERT INTO member VALUES(?,?,?,?,?,?,?)");
  pstmt.setString(1,id);
  pstmt.setString(2,pass);
  pstmt.setString(3,name);
  pstmt.setInt(4,age);
  pstmt.setString(5,gender);
  pstmt.setString(6,email);
  pstmt.setInt(7,status); 
  int result=pstmt.executeUpdate();
  if(result!=0)
  {  //회원가입이 되면 로그인창으로
      out.println("<script>");
      out.println("location.href='memberLogin.jsp'");
      out.println("</script>");
    }
  else
  {	//회원가입이 되지않으면 다시 회원가입창
      out.println("<script>");
      out.println("location.href='memberJoin.jsp'");
      out.println("</script>");
   }
  %>
  