<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h4>OtherPage.jsp</h4>
<ul>
	<li>저장된 값 : ${ requestVar } </li>
	<li>매개변수 1 : ${ param.user_param1 }</li>
	<li>매개변수 2 : ${ param.user_param2 }</li>
</ul>
</body>
</html>