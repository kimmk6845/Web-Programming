<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>

<%
	request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("admin");
    Connection conn=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;

    String driver="oracle.jdbc.driver.OracleDriver";  
    String url="jdbc:oracle:thin:@localhost:1521:orcl";
    Class.forName(driver);
    conn=DriverManager.getConnection(url,"kmk414","pass123");
    pstmt=conn.prepareStatement("SELECT * FROM SCORE WHERE S_Name='admin*'");
    rs = pstmt.executeQuery();
    if(rs.next())
    {
    	if(!(id.equals(rs.getString("S_Name")))) 		//�������� ���̵�� �ٸ� �� ���â ������ְ� �������� ��������
    	{
        	out.println("<script>");
        	out.println("alert('�����ڰ� �ƴմϴ�.')");
        	out.println("location.href = 'Exam_Main.jsp'");
        	out.println("</script>");
    	}
    	session.setAttribute("admin",id);	//admin���̵� ���ǰ� ����
%>
<title>ȯ���մϴ�. �����ڴ�</title>
<body>
<form name="adminOkform" action="addQuiz.jsp" method="post">
<h1>
	<B>�����ڴ� ȯ���մϴ�!</B>
</h1>
<table border=1>
<tr><td align="center"><input type="submit" value="���� �����ϱ�"></td><td><a href="Exam_Main.jsp">�������� ���ư���</a></td></tr>
</table>
</form>
</body>
<%
	}
%>