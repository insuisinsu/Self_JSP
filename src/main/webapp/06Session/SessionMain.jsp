<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");

long creationTime = session.getCreationTime();
String creationTimeStr = dateFormat.format(new Date(creationTime));

long lastTime = session.getLastAccessedTime();
String lastTimeStr = dateFormat.format(new Date(lastTime));


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>Session ���� Ȯ��</h2>

<ul>
	<li>���� ���� �ð� : <%= session.getMaxInactiveInterval() %> </li>
	<li>���� ���̵� : <%= session.getId() %> </li>
	<li>���� ��û �ð� : <%= creationTimeStr %> </li>
	<li>������ ��û �ð� : <%= lastTimeStr %> </li>
</ul>

</body>
</html>