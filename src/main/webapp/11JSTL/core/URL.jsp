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

<h4>url 태그로 링크 걸기</h4>
<c:url value="/11JSTL/inc/OtherPage.jsp" var="url">
	<c:param name="user_param1" value="Must" />
	<c:param name="user_param2">Have</c:param>
</c:url>
<a href="${url }">OtherPage.jsp</a>

</body>
</html>