<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3>EL�� ���� �ޱ�</h3>
<ul>
	<li>�̸� : ${ param.name } </li>
	<li>���� : ${ param.gender } </li>
	<li>�з� : ${ param.grade } </li>
	<!--  checkbox �� ���� �������� paramValues �� ���� �迭�� ���� -->
	<li>���ɻ��� : ${ paramValues.inter[0] }
			${ paramValues.inter[1] }
			${ paramValues.inter[2] }
			${ paramValues.inter[3] }
	 </li>
</ul>

</body>
</html>