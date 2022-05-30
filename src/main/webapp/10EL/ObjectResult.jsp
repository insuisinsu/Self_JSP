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

<h2>영역을 통해 전달된 객체 읽기</h2>
<ul>
	<li>Person 객체 -> 이름 : ${ personObj.name }, 나이 : ${ personObj.age } </li>
	<li>Integer 객체 -> ${ integerObj	 } </li>
</ul>

<h2>매개변수로 전달된 값 읽기</h2>

<ul>
	<li>${ param.firstNum + param['secondNum'] }</li>
	<li>${ param.firstNum } + ${param["secondNum"] }</li>
</ul>

</body>
</html>