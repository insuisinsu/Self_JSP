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
	out.print("404 에러 발생");
	out.print("<br> 파일 경로 확인 필요");
}
if(status == 405){
	out.print("405 에러 발생");
	out.print("<br> 요청방식(method) 확인 필요");
}
if(status == 404){
	out.print("500 에러 발생");
	out.print("<br> 소스코드에 오류가 있는지 확인 필요");
}
%>


</body>
</html>