<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="common.Person" %>

<h4>Include ������</h4>
<%
int pInteger2 = (Integer)(pageContext.getAttribute("pageInteger"));
// String pString2 = pageContext.getAttribute("pageString").toString();
Person pPerson2 = (Person)(pageContext.getAttribute("pagePerson"));
%>

<ul>
	<li>Integer ��ü : <%= pInteger2 %></li>
	<li>String ��ü : <%= pageContext.getAttribute("pageString") %></li>
	<li>Person ��ü : <%= pPerson2.getName() %>, <%= pPerson2.getAge() %></li>
</ul>