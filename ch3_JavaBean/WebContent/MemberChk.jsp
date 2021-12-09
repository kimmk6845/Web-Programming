<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<% request.setCharacterEncoding("euc-kr"); %>

<!-- join 패키지에 있는 JoinBean 클래스를 Join 이라 부르겠다고 선언 , 즉, Join 데이터 객체 생성 함 -->
    <jsp:useBean id= "Join" class= "Join.MemberBean" />
     <!-- 위에서 생성한 데이터 객체 join 에 데이터를 세팅할 때 일괄로 하겠다고 선언  -->

   <!--  아래와 같이 property="*“  로 하면 아디, pass, 이름, 성별, 나이, 이메일 을 setProperty  하지 않아도 된다.  -->
   <jsp:setProperty name= "Join" property="*" />

<center> <table border=1 >
<tr> <td width="75px"><font size=2>아이디 : </td>
<td width="100px"> <jsp:getProperty name= "Join" property="id"/></td>
<td width="100px"> <%= Join.getId() %></td> </tr>

<tr> <td> <font size=2>비밀번호 : </td>
<td> <jsp:getProperty name= "Join" property="pass"/></td>
<td> <%= Join.getPass() %></td> </tr>

<tr> <td> <font size=2>이름 : </td>
<td> <jsp:getProperty name= "Join" property="name"/></td>
<td> <%= Join.getName() %></td> </tr>

<tr> <td> <font size=2>성별 : </td>
<td> <jsp:getProperty name= "Join" property="sex"/></td>
<td> <%= Join.getSex() %></td> </tr>

<tr> <td> <font size=2>나이 : </td>
<td> <jsp:getProperty name= "Join" property="age"/></td>
<td> <%= Join.getAge() %></td> </tr>

<tr> <td bgcolor="yellow"><font size=2>이메일주소 : </td>
<td> <jsp:getProperty name= "Join" property="email"/></td>
<td> <%= Join.getEmail() %></td> </tr> 
</table></center>
