<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Register Form</title>

	<style type ="text/css">
     .style1{background-color:#D3D3D3; color:blue; font-weight:bold; font-size:25px; text-align:center;}
     .style2{background-color:#D3D3D3; color:blue; fon-weight:500; font-size:15px;}
     .style3{color:blue; fon-weight:500; font-size:15px;}
     .style4{background-color:#D3D3D3; text-align:center;}
    </style>
    

</head>
<body>

<form action = "Register_Form_ok.jsp" method = post>
 <table border = 1 width = 600>
<tr><td class="style1" colspan = "2" height = "100">ȸ�� ���� �Է� ���</td></tr>

<tr><td class="style2" width = "100">* ���̵�</td>
	<td><input type = "text" name = "userID"></td></tr>

<tr><td class="style2">* ��й�ȣ</td>
	<td class="style3"><input type = "text" name = "pass">&nbsp;&nbsp;��й�ȣȮ��
	<input type = "text" name = "passCheck"></td></tr>
	
<tr><td class="style2">* �̸�</td>
	<td><input type = "text" name = "name"></td>

<tr><td class="style2">* �̸���</td>
	<td><input type = "text" name = "mail"></td>
	
<tr><td class="style3">���ϼ��ſ���</td>
	<td>Yes<input type ="radio" name="mail_yn" value="Y"> 
    &nbsp; No <input type ="radio" name="mail_yn" value="N"></td></tr>

<tr><td class="style2">��ȭ��ȣ</td>
	<td><input type = "text" name = "home-num1" SIZE=3 MAXLENGTH=3>-
	<input type = "text" name = "home-num2" SIZE=4 MAXLENGTH=4>-
	<input type = "text" name = "home-num3" SIZE=4 MAXLENGTH=4></td></tr>
	
<tr><td class="style2">* �ڵ��� ��ȣ</td>
	<td><SELECT NAME = "phone-num1">
	<OPTION VALUE = "010">010</OPTION>
	<OPTION VALUE = "011">011</OPTION>
	<OPTION VALUE = "016">016</OPTION>
	<OPTION VALUE = "017">017</OPTION>
	<OPTION VALUE = "019">019</OPTION>
	</SELECT>-
	<input type = "text" name = "phone-num2" SIZE=4 MAXLENGTH=4>-
	<input type = "text" name = "phone-num3" SIZE=4 MAXLENGTH=4></td></tr>
	
<tr><td class="style2">�ֹι�ȣ</td>
	<td><input type = "text" name = "jumin1" SIZE=6 MAXLENGTH=6>-
	<input type = "text" name = "jumin2"  SIZE=7 MAXLENGTH=7></td></tr>
	
<tr><td class="style2">�����ȣ</td>
	<td><input type = "text" name = "postcode1"  SIZE=3 MAXLENGTH=3>-
	<input type = "text" name = "postcode2" SIZE=3 MAXLENGTH=3></td></tr>
	
<tr><td class="style2">�� ��</td>
	<td><input type = "text" name = "address1"></td></tr>
	
<tr><td class="style2">������ �ּ�</td>
	<td><input type = "text" name = "address2"></td></tr>
	
<tr><td class="style2">�������</td>
	<td class="style3"><input type = "text" name = "year" SIZE=2 MAXLENGTH=2>��
	<input type = "text" name = "month" SIZE=2 MAXLENGTH=2>��
	<input type = "text" name = "day" SIZE=2 MAXLENGTH=2>��&nbsp;&nbsp;
	����<input type = "text" name = "age" SIZE=2 MAXLENGTH=2>&nbsp;
	��<input type="radio" name="gender" value=����>
	��<input type="radio" name="gender" value=����>
	
<tr class="style3"><td>���</td>
	<td>����<input type="checkbox" name= "likes" value="����">
	����<input type="checkbox" name= "likes" value="����">
	TV��û<input type="checkbox" name= "likes" value="TV��û">
	�౸<input type="checkbox" name= "likes" value="�౸">
	 �� Ÿ<input type="checkbox" name= "likes" value="��Ÿ">
	 </td></tr>
	 
<tr><td class="style2">�� ��</td>
	<td><SELECT NAME = "job">
	<OPTION VALUE = "">������ �����ϼ���</OPTION>
	<OPTION VALUE = "�л�">�л�</OPTION>
	<OPTION VALUE = "ȸ���">ȸ���</OPTION>
	<OPTION VALUE = "����">����</OPTION>
	</SELECT></td></tr>
	
<tr><td class="style2">�ڱ�Ұ�</td>
	<td><TEXTAREA NAME="intro" ROWS=5 COLS=40></TEXTAREA></td></tr>
	
<tr><td class="style4" colspan="2"> <input type="submit" value="���� " ></td></tr>


 </table>
</form>
</body>
</html>