<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="common.Person" %>
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

<h4>List �÷��� ����ϱ�</h4>
<%
LinkedList<Person> lists = new LinkedList<>();
lists.add(new Person("�ͻ缺", 34));
lists.add(new Person("�念��", 44));
lists.add(new Person("�ż���", 54));
%>

<c:set var="lists" value="<%= lists %>" />
<c:forEach items="${ lists }" var="list">
<li>
	�̸� : ${ list.name }, ���� : ${list.age }
</li>
</c:forEach>
	
<h4>Map �÷��� ����ϱ�</h4>
<%
Map<String,Person> maps = new HashMap<>();
maps.put("1st", new Person("�ͻ缺", 34));
maps.put("2nd", new Person("�念��", 44));
maps.put("3rd", new Person("�ż���", 54));
%>
<c:set var="maps" value="<%= maps %>" />
<c:forEach items="${maps }" var="map">
	<li>Key => �̸� : ${map.value.name }, ���� : ${map.value.age } </li>
</c:forEach>



</body>
</html>