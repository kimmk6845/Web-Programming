<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<body>
	<center>
		<h3>���� �Է� ȭ��</h3>
		<form method="post" action="db_insertOk.jsp" name="dbinput">

			<table border="1" cellspacing="1">
				<tr>
					<td>�й� :</td>
					<td><input type="text" name="num"></td>
				</tr>
				<tr>
					<td>�̸� :</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr align="center">
					<td colspan=2><input type="submit" value="��   ��"> <input
						type="reset" name="reset" value="��  ��"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
