<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>

<%
	request.setCharacterEncoding("euc-kr");
	String type = request.getParameter("q_type");
	String question = request.getParameter("q_question");
	String bogi1 = request.getParameter("bogi1");
	String bogi2 = request.getParameter("bogi2");
	String bogi3 = request.getParameter("bogi3");
	String bogi4 = request.getParameter("bogi4");
	String dap = request.getParameter("q_answer");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	Class.forName(driver);
	conn = DriverManager.getConnection(url, "kmk414", "pass123");
	
	pstmt = conn.prepareStatement("insert into QUIZ(Q_NUM,Q_QUESTION,Q_TYPE,Q_EX1,Q_EX2,Q_EX3,Q_EX4,Q_ANSWER) Values(sequence_mk.NEXTVAL,?,?,?,?,?,?,?)");
	pstmt.setString(1,question);
	pstmt.setString(2,type);
	pstmt.setString(3,bogi1);
	pstmt.setString(4,bogi2);
	pstmt.setString(5,bogi3);
	pstmt.setString(6,bogi4);
	pstmt.setString(7,dap);
	pstmt.executeUpdate();
	
	out.println("<script>");
	out.println("alert('문제가 추가되었습니다!!')");
	out.println("location.href='addQuiz.jsp'");
	out.println("</script>");
%>