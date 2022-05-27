<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>액션 태그로 폼값 한 번에 받기</h2>
<form method="post" action="UseBeanAction.jsp">
이름 : <input type="text" name="name" /><br>
나이 : <input type="text" name="age" /><br>
	<input type="submit" value="폼값 전송" />
</form>
</body>
</html>