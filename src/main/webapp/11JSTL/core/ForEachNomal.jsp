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

<h4>�Ϲ� for�� ������ forEach �±�</h4>
<c:forEach begin="1" end="3" step="1" var= "i" >
	<p> �ݺ� ${ i } �Դϴ�. </p>
</c:forEach>

<h4>varStatus �Ӽ� ���캸��</h4>
<table border="1">
<c:forEach begin="3" end="5" var="i" varStatus="loop">
	<tr>
		<td>count : ${ loop.count } </td>
		<td>index : ${ loop.index } </td>
		<td>current : ${ loop.current } </td>
		<td>first : ${ loop.first } </td>
		<td>last : ${ loop.last } </td>
	</tr>
</c:forEach>
</table>

<h4>1���� 100 ���� ���� �� Ȧ���� ��</h4>
<c:forEach begin="1" end="100" var="j">
	<c:if test="${ j mod 2 ne 0 }" >
		<c:set var="sum" value="${sum + j }" />
	</c:if>
</c:forEach>
	1~100 ������ ���� �� Ȧ���� ����? ${sum }
</body>
</html>