<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
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

<%
List<Object> aList = new ArrayList<Object>();
aList.add("Chung");
aList.add(new Person("JangBogo", 28));
pageContext.setAttribute("Ocean", aList);
%>
<ul>
	<li>0��° ��� : ${ Ocean[0] } </li>
	<li>1��° ��� : ${ Ocean[1].name }, ${ Ocean[1].age } </li>
	<li>0��° ��� : ${ Ocean[2] } </li>
</ul>

<%
Map<String, String> map = new HashMap<String, String>();
map.put("Kor", "Korean");
map.put("Eng", "English");
pageContext.setAttribute("King", map);
%>

<ul>
	<li>���� Key : ${King["Eng"] }, ${King['Eng'] }, ${King.Eng }</li>
	<li>�ѱ� Key : ${King["Kor"] }, ${King['Kor'] }, \${King.Kor }</li>
	<!-- �ѱ��̸� King.�ѱ� ������ 		//   \�� �ּ�ó�� �ϸ� �Ϲ� HTML �ڵ�� �νĵǾ� ȭ�鿡 ���-->
</ul>


</body>
</html>