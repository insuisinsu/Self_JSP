<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h4>향산된 for문 형태의 forEach 태그</h4>
<%
String[] rgba = {"Red", "Green", "Blue", "Black"};
%>
<c:forEach items="<%= rgba %>" var="c" >
	<span style="color:${c};">${c } </span>
</c:forEach>

<h4>varStatus 속서 살펴보기</h4>
<table border="1">
<c:forEach items="<%= rgba %>" var="c" varStatus="loop">
	<tr>
		<td>count : ${loop.count }</td>
		<td>index : ${loop.index }</td>
		<td>current : ${loop.current }</td>
		<td>first : ${loop.first }</td>
		<td>last : ${loop.last }</td>
</c:forEach>
</table>

</body>
</html>