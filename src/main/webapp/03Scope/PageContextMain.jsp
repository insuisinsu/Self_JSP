<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="common.Person" %>
<%
pageContext.setAttribute("pageInteger", 1000);
pageContext.setAttribute("pageString", "������ ������ ���ڿ�");
pageContext.setAttribute("pagePerson", new Person("�Ѽ���", 99));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>page ������ �Ӽ��� �б�</h2>
<%
int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
String pString = pageContext.getAttribute("pageString").toString();
Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
%>
<ul>
	<li>Integer ��ü : <%= pInteger %></li>
	<li>String ��ü : <%= pString %></li>
	<li>Person ��ü : <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>
</ul>

<h2>include �� ���Ͽ��� page ���� �о����</h2>
<%@ include file = "PageInclude.jsp" %>

<h2>������ �̵� �� page ���� �о����</h2>
<a href="PageLocation.jsp"> PageLocation.jsp �ٷΰ���</a>


</body>
</html>