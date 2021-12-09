<%@ page language="java" contentType="text/html; charset=EUC-KR"   pageEncoding="EUC-KR"%>
  <body>
<!--  EL은 null 에 대해서 관대하고 -->
<!--  데이터 형 변환을 자동으로 해줌. -->
정수형 : ${10}<br>
실수형 : ${100.12}<br>
문자형 : ${'A'}<br>
문자열 형 : ${"김길동"}<br>
논리형 : ${true}<br>
null type : ${null}<br>
<!-- EL에서는 null 이면 공백으로 처리한다. -->
</body>
