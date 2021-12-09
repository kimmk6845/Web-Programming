<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<body>
<!--  name="forwardPage" value="forwardTest2.jsp" -->
<!-- 앞 페이지에서 forwardPage에 forwardTest2.jsp 가 저장되어 있음 -->
<jsp:forward page='<%=request.getParameter("forwardPage") %>' >
        <jsp:param name="tel" value="032-1234-5678"/>
</jsp:forward>
<!-- 파라미터로 값을 전달할 때는 param을 사용 -->
<!-- 여기서 다시 tel 을 지정하여 forwardPage 로 
 <!– 즉, forwardTest2.jsp 로  보냄 -->
</body>
