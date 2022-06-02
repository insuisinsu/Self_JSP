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
<c:set var="requestVar" value="MustHave" scope="request" />
<c:redirect url="/11JSTL/inc/OtherPage.jsp" >
	<c:param name="uesr_param1" value="cnfvkstk" />
	<c:param name="user_param2" value="goldenrabbit" />
</c:redirect>
</body>
</html>