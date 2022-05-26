<%@ page import="utils.CookieManager" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String loginId = CookieManager.readCookie(request, "loginId");	//쿠키 이름을 넣으면 값을 반환해줌

String cookieCheck = "";
if(!loginId.equals("")){		// 쿠키에 이름이 있다 = 존재한다.
	cookieCheck = "checked";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>로그인 페이지</h2>
<form action="IdSaveProcess.jsp" method="post">
	아이디 : <input type="text" name="user_id" value="<%=loginId %> " >
	<input type="checkbox" name="save_check" value="Y" <%=cookieCheck %> /> 아이디 저장하기
	<br>
	패스워드 : <input type="text" name="user_pw">
	<br>
	<input type="submit" value="로그인하기">
</form>

</body>
</html>