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

<!-- ���� ���� -->
<c:set var="number" value="100" />
<c:set var="string" value="JSP" />


<h4>JSRL �� if �±׷� Ȧ/¦ �Ǵ��ϱ�</h4>
<c:if test="${ number mod 2 eq 0 }" var="result">${ numVar } �� ¦�� �Դϴ�. <br></c:if>
result : ${ result } <br>

<h4>���ڿ� �񱳿� else ���� �䳻����</h4>
<c:if test="${ string eq 'java' }" var="result2">
	���ڿ��� Java �Դϴ�. <br>
</c:if>
<c:if test="${ not result2 }">
	'Java' �� �ƴմϴ�. <br>
</c:if>

<h4>���ǽ� ���ǻ���</h4>
<c:if test="100" var="result3">
	EL �� �ƴ� ������ �����ϸ� false
</c:if>
result3 : ${ result3 }<br>

<c:if test="tRuE" var="result4">
	��ҹ��� ���� ���� "rRuE" �� ��� true<br>
</c:if>
result4 : ${ result4 }<br>

<c:if test="${true }" var="result5">
	EL ���ʿ� �� ������ �ִ� ��� false<br>
</c:if>
result5 : ${ result5 }<br>
</body>
</html>