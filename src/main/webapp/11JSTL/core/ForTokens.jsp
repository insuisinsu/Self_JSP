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
<%
String rgba ="Red,Green,Blue,Black";
%>
<h4>JSTL�� forTokens �±� ���</h4>
<c:forTokens items="<%= rgba %>" delims="," var="color">
	<span style="color:${color };">${color }</span><br>
</c:forTokens>

</body>
</html>