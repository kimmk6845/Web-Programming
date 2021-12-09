<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html><head>
<title>Request Test</title></head><body>
<h4>Request Form 입니다.</h4>



<form action= " inputForm_ok.jsp" method="post">  
 <table border="1" >
<tr><td width="35">이름</td>
     <td width="170"> <input type="text" name="name"> </td> </tr>

<tr><td>성별</td><td>
       남자 <input type="radio" name="gender" value=남자>
       여자 <input type="radio" name="gender" value=여자>
     </td></tr>
     
<tr><td>취미</td><td>
     독서<input type="checkbox" name= "likes" value="독서">
     게임<input type="checkbox" name= "likes" value="게임">
     TV시청<input type="checkbox" name= "likes" value="TV시청">
     축구<input type="checkbox" name= "likes" value="축구">
     기 타<input type="checkbox" name= "likes" value="기타">
</td></tr>

<tr><td>직업</td><td>
      <SELECT NAME="job">
         <OPTION VALUE="">==직업을 선택하세요==</OPTION>
         <OPTION VALUE="학생">학생</OPTION>
         <OPTION VALUE="회사원">회사원</OPTION>
         <OPTION VALUE="군인">군인</OPTION>
         <OPTION VALUE="기타">기타</OPTION>
      </SELECT>  </td></tr>
      
<tr><td> 메일 수신여부</td>
<td>Yes<INPUT TYPE ="checkbox" Name="mail_yn" VALUE="Y"> 
      &nbsp; No <INPUT TYPE ="checkbox" Name="mail_yn" VALUE="N">
</td></tr>

<tr><td>자기소개</td><td>
        <TEXTAREA NAME="intro" ROWS=5 COLS=40></TEXTAREA>
       </td></tr>
   <!-- 자기소개 칸은 여러줄을 써야함으로 TEXTAREA가 필요.. ROWS=5 5줄/COLS=40 40칸을 제한둠 -->
       
<tr><td colspan="2"> <input type="submit" value="전송 " > </td> </tr>
<!-- 버튼을 누르게 되면 입력 값을 가지고 맨 윗줄에 action으로  으로 넘어가 inputForm_ok.jsp파일로 넘어감-->


</table>
</form>
</body>
</html>
