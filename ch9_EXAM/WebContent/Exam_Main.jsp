<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<!-- ���� ȭ��.... ���躸������ ��ũ�� �����ڷ� �α��� �ϴ� ��ũ�� ���� -->

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�¶��� ���� ���� ������</title>
<style>
html{
	display:table;
	margin:auto;
}
body{
	display:table-cell;
	vertical-align:middle;
}
input[type="submit"]{
	background-color:white;
	color:black;
	border:2px solid #4CAF50;
	border-radius:4px;
	font-size:20px;
}
table{
	width: 75%;
	border: 1px solid;
	border-collapse:collapse;
	margin:auto;
}
</style>
</head>

<body>
	<center>
		<h1>
			<B>�¶��� ���蹮��
		</h1>
		<form name="Mainform" action="OnlineExam.jsp" method="post">
			<input type="submit" value="���躸������"><br><br>
		</form>

		<form name="Mainform" action="admin.jsp" method="post">
			<input type="submit" value="������ ����">
		</form>
		
		<br><br>
		<table>
		<tr><td width=40% font-color="RED"><B>�ؽ���� ���ǻ��ס�</B></td><td width=60%>1.���� ���۽� �й����� ��ȸ �� �й��� �Է��� �Ŀ� ������ ������ ��.</td></tr>
		<tr><td></td><td>2.���ѽð��� ��� ������ �ڵ� �����</td></tr>
		</table>
	</center>
</body>
</html>