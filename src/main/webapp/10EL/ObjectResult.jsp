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

<h2>������ ���� ���޵� ��ü �б�</h2>
<ul>
	<li>Person ��ü -> �̸� : ${ personObj.name }, ���� : ${ personObj.age } </li>
	<li>Integer ��ü -> ${ integerObj	 } </li>
</ul>

<h2>�Ű������� ���޵� �� �б�</h2>

<ul>
	<li>${ param.firstNum + param['secondNum'] }</li>
	<li>${ param.firstNum } + ${param["secondNum"] }</li>
</ul>

</body>
</html>