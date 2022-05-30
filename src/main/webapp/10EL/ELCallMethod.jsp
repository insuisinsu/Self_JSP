<%@ page import="el.MyELClass" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
MyELClass myClass = new MyELClass();		// 객체 생성
pageContext.setAttribute("myClass", myClass);	// page 영역에 저장
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3>영역에 저장 후 메서드 호출하기</h3>
001225-3000000 => ${ myClass.getGender("001225-3000000") } <br>
001225-2000000 => ${ myClass.getGender("001225-2000000") } <br>

<h3>클래스명을 통해 정적 메서드 호출하기</h3>
${ MyELClass.showGugudan(7) }


</body>
</html>