<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
request.setAttribute("personObj", new Person("ȫ�浿", 33));
request.setAttribute("stringObj", "���� ���ڿ�");
request.setAttribute("integerObj", new Integer(99));
%>

<jsp:forward page="ObjectResult.jsp">
	<jsp:param value="10" name="firstNum" />
	<jsp:param value="20" name="secondNum" />
</jsp:forward>

</body>
</html>