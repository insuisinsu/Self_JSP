<%@ page import="utils.CookieManager" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
CookieManager.makeCookie(response, "ELCookie", "EL좋아요", 10);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3>쿠키값 읽기</h3>
<li>ELCookie값 : ${ cookie.ELCookie.value } </li>

<h3>HTTP 헤더 읽기</h3>
<ul>
	<li>host : ${ header.host }</li>
	<li>user-agent : ${ header['user-agent'] }</li>
	<li>cookie : ${ header.cookie }</li>
</ul>

<h3>컨텍스트 초기화 매개변수 읽기</h3>
<li>${ pageContext.request.contextPath } </li>

</body>
</html>