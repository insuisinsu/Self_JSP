<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>1. ���(Cookie) ����</h2>

<%
Cookie cookie = new Cookie("mycookie", "��Ű������");
cookie.setPath(request.getContextPath());
cookie.setMaxAge(3600);
response.addCookie(cookie);
%>

<h2>2. ��Ű ���� ���� ��Ű�� Ȯ���ϱ�</h2>
<%
Cookie[] cookies = request.getCookies();	//��û ����� ��� ��Ű ���
if(cookies != null){
	for(Cookie c : cookies){
		String cookieName = c.getName();
		String cookieValue = c.getValue();
		// ȭ�鿡 ����ϴ� ����
		out.println(String.format("%s : %s<br>", cookieName, cookieValue));
	}
}
%>

<h2>3. ������ �̵� �� ��Ű�� Ȯ���ϱ�</h2>
<a href="CookieResult.jsp"> ���� ���������� ��Ű�� Ȯ���ϱ�</a>

</body>
</html>