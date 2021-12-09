<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- <FORM NAME = "frm1" ACTION = " inputText_ok.jsp" METHOD = "post"> -->
 <FORM NAME = "frm1" ACTION = " inputText_ok.jsp" METHOD = "get">
   user id : 
      <INPUT TYPE = "text" NAME="userid" SIZE=20 MAXLENGTH=20 ><br>
      <INPUT TYPE = "submit" VALUE = "전송" >
</FORM>


</body>
</html>

<!-- action = "파일 이름" , 데이터 전달 방식 => get 방식, post 방식-->
<!-- 데이터 입력 폼 = inputText.jsp 파일 /// 데이터를 받는 폼 = inputText_ok.jsp 파일 -->
