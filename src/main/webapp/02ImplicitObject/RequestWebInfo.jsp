<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>1. Ŭ���̾�Ʈ�� ������ ȯ������ �б�</h2>

<ul>
	<li>������ ���� ��� : <%= request.getMethod() %></li>
	<li>URL : <%= request.getRequestURL() %></li>
	<li>URI : <%= request.getRequestURI() %></li>
	<li>�������� : <%= request.getProtocol() %></li>
	<li>������ : <%= request.getServerName()%></li>
	<li>���� ��Ʈ : <%= request.getServerPort()%></li>
	<li>Ŭ���̾�Ʈ IP �ּ� : <%= request.getRemoteAddr()%></li>
	<li>������Ʈ�� : <%= request.getQueryString()%></li>
	<li>���۵� �� 1 : <%= request.getParameter("eng")%></li>
	<li>���۵� �� 2 : <%= request.getParameter("han")%></li>
</ul>

</body>
</html>