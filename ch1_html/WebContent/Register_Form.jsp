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
<tr><td class="style1" colspan = "2" height = "100">회원 가입 입력 양식</td></tr>

<tr><td class="style2" width = "100">* 아이디</td>
	<td><input type = "text" name = "userID"></td></tr>

<tr><td class="style2">* 비밀번호</td>
	<td class="style3"><input type = "text" name = "pass">&nbsp;&nbsp;비밀번호확인
	<input type = "text" name = "passCheck"></td></tr>
	
<tr><td class="style2">* 이름</td>
	<td><input type = "text" name = "name"></td>

<tr><td class="style2">* 이메일</td>
	<td><input type = "text" name = "mail"></td>
	
<tr><td class="style3">메일수신여부</td>
	<td>Yes<input type ="radio" name="mail_yn" value="Y"> 
    &nbsp; No <input type ="radio" name="mail_yn" value="N"></td></tr>

<tr><td class="style2">전화번호</td>
	<td><input type = "text" name = "home-num1" SIZE=3 MAXLENGTH=3>-
	<input type = "text" name = "home-num2" SIZE=4 MAXLENGTH=4>-
	<input type = "text" name = "home-num3" SIZE=4 MAXLENGTH=4></td></tr>
	
<tr><td class="style2">* 핸드폰 번호</td>
	<td><SELECT NAME = "phone-num1">
	<OPTION VALUE = "010">010</OPTION>
	<OPTION VALUE = "011">011</OPTION>
	<OPTION VALUE = "016">016</OPTION>
	<OPTION VALUE = "017">017</OPTION>
	<OPTION VALUE = "019">019</OPTION>
	</SELECT>-
	<input type = "text" name = "phone-num2" SIZE=4 MAXLENGTH=4>-
	<input type = "text" name = "phone-num3" SIZE=4 MAXLENGTH=4></td></tr>
	
<tr><td class="style2">주민번호</td>
	<td><input type = "text" name = "jumin1" SIZE=6 MAXLENGTH=6>-
	<input type = "text" name = "jumin2"  SIZE=7 MAXLENGTH=7></td></tr>
	
<tr><td class="style2">우편번호</td>
	<td><input type = "text" name = "postcode1"  SIZE=3 MAXLENGTH=3>-
	<input type = "text" name = "postcode2" SIZE=3 MAXLENGTH=3></td></tr>
	
<tr><td class="style2">주 소</td>
	<td><input type = "text" name = "address1"></td></tr>
	
<tr><td class="style2">나머지 주소</td>
	<td><input type = "text" name = "address2"></td></tr>
	
<tr><td class="style2">생년월일</td>
	<td class="style3"><input type = "text" name = "year" SIZE=2 MAXLENGTH=2>년
	<input type = "text" name = "month" SIZE=2 MAXLENGTH=2>월
	<input type = "text" name = "day" SIZE=2 MAXLENGTH=2>일&nbsp;&nbsp;
	나이<input type = "text" name = "age" SIZE=2 MAXLENGTH=2>&nbsp;
	남<input type="radio" name="gender" value=남자>
	여<input type="radio" name="gender" value=여자>
	
<tr class="style3"><td>취미</td>
	<td>독서<input type="checkbox" name= "likes" value="독서">
	게임<input type="checkbox" name= "likes" value="게임">
	TV시청<input type="checkbox" name= "likes" value="TV시청">
	축구<input type="checkbox" name= "likes" value="축구">
	 기 타<input type="checkbox" name= "likes" value="기타">
	 </td></tr>
	 
<tr><td class="style2">직 업</td>
	<td><SELECT NAME = "job">
	<OPTION VALUE = "">직업을 선택하세요</OPTION>
	<OPTION VALUE = "학생">학생</OPTION>
	<OPTION VALUE = "회사원">회사원</OPTION>
	<OPTION VALUE = "무직">무직</OPTION>
	</SELECT></td></tr>
	
<tr><td class="style2">자기소개</td>
	<td><TEXTAREA NAME="intro" ROWS=5 COLS=40></TEXTAREA></td></tr>
	
<tr><td class="style4" colspan="2"> <input type="submit" value="전송 " ></td></tr>


 </table>
</form>
</body>
</html>