<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<%
	String hakbun = request.getParameter("hakbun");		//�Է¹��� �й��� �ް�
	boolean fnd = false;		//DB�� ���� �й��� ã���� true

	if (hakbun == null)
		hakbun = "";
	else {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		Connection conn = null;
		ResultSet rs = null;
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "kmk414", "pass123");
		Statement stmt = conn.createStatement();
		String sql = "select *from SCORE";
		rs = stmt.executeQuery(sql);
		while(rs.next())
		{
			if (rs.getString(1).equals(hakbun))		//DB�� ���� �й��� �����ϸ� fnd������ true�� �ٲ�
				fnd = true;
		}
		
		stmt.close();
		conn.close();
	}
%>
<head>
<title>�й� Ȯ��</title>
</head>

<script language="JavaScript">
function hakbun_search()
{
	for (var i = 0; i < document.hakbun_check_form.hakbun.value.length; i++) {	//�й��� ���ڸ� �Է¹޵���
		if (document.hakbun_check_form.hakbun.value.charAt(i) < "0"
				|| document.hakbun_check_form.hakbun.value.charAt(i) > "9")
		{
			alert("�й��� ���ڸ� �Է��ϼ���.");
			document.hakbun_check_form.hakbun.focus();
			return;
		}
	}
	
   if(document.hakbun_check_form.hakbun.value=="") 		//�ƹ��͵� �Է����� ������ ���â ����� Ŀ���� �й����� �ű�
   {
     alert("�й��� �Է��� �ּ���.");
     document.hakbun_check_form.hakbun.focus();
   }
   else {
      document.hakbun_check_form.submit();		//�й��� ���ڰ� �ƴϰ� null���� �ƴ϶�� �ѱ�
   }
}

function hakbun_ok(a)			//��ȸ�� �й����� ������������ �й����� �־���
{
    opener.document.Exam.hakbun.value=a;       
    self.close();   
}

</script>
<body>
	<center>
		<br>
		<p align="center">�й��� ��ȸ�ϼ���.</p>
		<form name="hakbun_check_form" action="Hakbun_Check.jsp" method="POST">
			<table width="200">
				<tr>
					<td width="150">==></td>
					<td width="100"><input type="text" name="hakbun" size="20" maxlength = "9" value=<%=hakbun%>></td>
					<td width="40"><input type="button" value="�˻�" onclick="javascript:hakbun_search()"></td>
				</tr>
			</table>
		</form>
		<p align="center">�й��� ���ڸ� �Է��ϼ��� !!!</p>

		<%
			if (hakbun != "" && fnd == false) {
		%>
		��� ������ �й��Դϴ�
		<p><a href="javascript:hakbun_ok('<%=hakbun%>')">
				Ȯ�� </a>
			<%
				} else if (hakbun != "" && fnd == true) {
					out.println("<script>");
					out.println("alert('�̹� ���躻 �й��Դϴ�.')");
					out.println("</script>");
				}
			%>
	</center>
</body>