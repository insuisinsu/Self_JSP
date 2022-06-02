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

<h4>choose �±׷� Ȧ¦ �Ǵ��ϱ�</h4>
<c:choose>
	<c:when test="${number mod 2 eq 0 }">
		${ number } �� ¦���Դϴ�.
	</c:when>
	<c:otherwise>
		${ number } �� Ȧ���Դϴ�.
	</c:otherwise>
</c:choose>

<h4>��, ��, �� ������ �Է��ϸ� ����� ���� ���� ���</h4>
<form>
	���� : <input type"text" name="kor" /> <br>
	���� : <input type"text" name="eng" /> <br>
	���� : <input type"text" name="math" /> <br>
	<input type="submit" value="���� ���ϱ�" />
</form>

<!-- ������ ��� �ԷµǾ����� Ȯ�� -->
<c:if test="${ not (empty param.kor or empty param.eng or empty param.math) }" >
	<c:set var="avg" value="${(param.kor + param.eng + param.math) / 3 }" />
	��� ���� : ${avg } ��, ����� : 
	<c:choose>
		<c:when test="${ avg >=90 }" >A </c:when>
		<c:when test="${ avg >=80 }" >B </c:when>
		<c:when test="${ avg ge 70 }" >C </c:when>
		<c:when test="${ avg ge 60 }" >D </c:when>
		<c:otherwise>F</c:otherwise>
	</c:choose> �Դϴ�.
</c:if>
</body>
</html>