<%@ page import="utils.CookieManager" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
CookieManager.makeCookie(response, "ELCookie", "EL���ƿ�", 10);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3>��Ű�� �б�</h3>
<li>ELCookie�� : ${ cookie.ELCookie.value } </li>

<h3>HTTP ��� �б�</h3>
<ul>
	<li>host : ${ header.host }</li>
	<li>user-agent : ${ header['user-agent'] }</li>
	<li>cookie : ${ header.cookie }</li>
</ul>

<h3>���ؽ�Ʈ �ʱ�ȭ �Ű����� �б�</h3>
<li>${ pageContext.request.contextPath } </li>

</body>
</html>