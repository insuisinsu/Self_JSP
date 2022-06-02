<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="scopeVar" value="Page Value" />
<c:set var="scopeVar" value="Request Page Value" scope="request" />
<c:set var="scopeVar" value="Session Page Value" scope="session" />
<c:set var="scopeVar" value="Application Page Value" scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h4>출력하기</h4>
<ul>
	<li>scopeVar : ${ scopeVar }</li>
	<li>requestScope.scopeVar : ${ requestScope.scopeVar }</li>
	<li>sessionScope.scopeVar : ${ sessionScope.scopeVar }</li>
	<li>applicationScope.scopeVar : ${ applicationScope.scopeVar }</li>
</ul>

<h4>session 영역에서 삭제하기</h4>
<c:remove var="scopeVar" scope="session"/>
<ul>
	<li>sessionScope.scopeVar : ${ sessionScope.scopeVar }</li>
</ul>

<h4>scope 지정 없이 삭제하기</h4>
<c:remove var="scopeVar" />
<ul>
	<li>scopeVar : ${ scopeVar }</li>
	<li>requestScope.scopeVar : ${ requestScope.scopeVar }</li>
	<li>applicationScope.scopeVar : ${ applicationScope.scopeVar }</li>
	
	
</ul>
</body>
</html>