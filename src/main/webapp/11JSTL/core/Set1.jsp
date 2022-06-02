<%@ page import="java.util.Date" %>
<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL - set 1</title>
</head>
<body>

<!-- ���� ���� -->
<!--  ���� ���� �Է��ϰų�, EL, ǥ���� ��� ����, �±� ���̵� ����
	scope �� ������� �ʾұ� ������ ������ ��� page �� ����� -->
<c:set var="directVar" value="100" />
<c:set var="elVar" value="${ directVar mod 5 }" />
<c:set var="expVar" value="<%= new Date() %>" />
<c:set var="betweenVar" > ������ �䷸�� ���� </c:set>

<h4>EL �� �̿��� ���� ���</h4>
<ul>
	<li>direvtVar : ${ pageScope.directVar } </li>
	<li>elVar : ${ elVar} </li>
	<li>expVar : ${expVar} </li>
	<li>betweenVar : ${ betweenVar } </li>
</ul>

<h4>�ڹٺ��� ���� 1 - ������ ���</h4>
<c:set var="personVar1" value='<%= new Person("Park����", 50) %>' 
	scope="request" />
	
<ul>
	<li>�̸� : ${ requestScope.personVar1.name } </li>
	<li>���� : ${ personVar1.age } </li>
</ul>

<h4>�ڹٺ��� ���� 2 - target, property</h4>
<c:set var="personVar2" value="<%= new Person() %>" scope="request" />
<c:set target="${personVar2 }" property="name" value="Jung���" />
<c:set target="${personVar2 }" property="age" value="60" />

<ul>
	<li>�̸� : ${ personVar2.age } </li>
	<li>���� : ${ requestScope.personVar2.name } </li>
</ul>


</body>
</html>