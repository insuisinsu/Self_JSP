<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>�׼� �±׷� ���� �� ���� �ޱ�</h3>
<jsp:useBean id="person" class="common.Person" />
<jsp:setProperty property="*" name="person"/>

<ul>
	<li>�̸� : <jsp:getProperty property="name" name="person"/></li>
	<li>���� : <jsp:getProperty property="age" name="person"/></li>
</ul>
</body>
</html>