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
int status = response.getStatus();

if(status == 404){
	out.print("404 ���� �߻�");
	out.print("<br> ���� ��� Ȯ�� �ʿ�");
}
if(status == 405){
	out.print("405 ���� �߻�");
	out.print("<br> ��û���(method) Ȯ�� �ʿ�");
}
if(status == 404){
	out.print("500 ���� �߻�");
	out.print("<br> �ҽ��ڵ忡 ������ �ִ��� Ȯ�� �ʿ�");
}
%>


</body>
</html>