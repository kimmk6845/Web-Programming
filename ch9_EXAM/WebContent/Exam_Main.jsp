<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<!-- 메인 화면.... 시험보러가는 링크와 관리자로 로그인 하는 링크가 있음 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>온라인 시험 메인 페이지</title>
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
			<B>온라인 시험문제
		</h1>
		<form name="Mainform" action="OnlineExam.jsp" method="post">
			<input type="submit" value="시험보러가기"><br><br>
		</form>

		<form name="Mainform" action="admin.jsp" method="post">
			<input type="submit" value="관리자 권한">
		</form>
		
		<br><br>
		<table>
		<tr><td width=40% font-color="RED"><B>※시험시 유의사항※</B></td><td width=60%>1.시험 시작시 학번부터 조회 후 학번을 입력한 후에 시험을 시작할 것.</td></tr>
		<tr><td></td><td>2.제한시간이 모두 지나면 자동 제출됨</td></tr>
		</table>
	</center>
</body>
</html>