<%@ page import="common.Person" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Vector" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h4>List �÷��� �̿��ϱ�</h4>
<%
ArrayList<Person> pList = new ArrayList<>();
pList.add(new Person("����", 55));
pList.add(new Person("���س�", 60));
%>
<c:set var="personList" value="<%= pList %>" scope="request" />
<ul>
	<li>�̸� : ${ requestScope.personList[0].name	 } </li>
	<li>���� : ${ personList[0].age } </li>
</ul>

<h4>Map �÷��� �̿��ϱ�</h4>
<%
Map<String, Person> pMap = new HashMap<String, Person>();
pMap.put("personArgs1", new Person("������", 65));
pMap.put("personArgs2", new Person("�̰�", 67));
%>

<c:set var="personMap" value="<%= pMap %>" scope="request" />
<ul>
	<li>�̸� : ${ requestScope.personMap.personArgs2.name	 } </li>
	<li>���� : ${ personMap.personArgs2.age } </li>
</ul>

</body>
</html>