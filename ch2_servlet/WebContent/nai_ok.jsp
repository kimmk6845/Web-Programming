<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%!
	int age;
	int year;
	String arr[] = { "������", "��", "��", "����", "��", "��", "ȣ����", "�䳢", "��", "��", "��", "��" };
	String type;%>

	<%
		String str = request.getParameter("age");
		age = Integer.parseInt(str);
		year = 2020 - age + 1;

		switch (year % 12) {
		case 0:
			type = arr[0];
			break;
		case 1:
			type = arr[1];
			break;
		case 2:
			type = arr[2];
			break;
		case 3:
			type = arr[3];
			break;
		case 4:
			type = arr[4];
			break;
		case 5:
			type = arr[5];
			break;
		case 6:
			type = arr[6];
			break;
		case 7:
			type = arr[7];
			break;
		case 8:
			type = arr[8];
			break;
		case 9:
			type = arr[9];
			break;
		case 10:
			type = arr[10];
			break;
		default:
			type = arr[11];
			break;
		}
	%>
	�¾ �ش�
	<%=year%>�̰�
	<br> �� �� ���
	<%=type%>&nbsp;�� �̴�.
	<br>

</body>
</html>