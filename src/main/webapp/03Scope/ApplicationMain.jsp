<%@ page import="java.util.HashMap" %>
<%@ page import="common.Person" %>
<%@ page import="java.util.Map" %>
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
Map<String, Person> maps = new HashMap<>();
maps.put("actor1", new Person("�̼���", 30));
maps.put("actor2", new Person("�ɼ���", 28));
application.setAttribute("maps", maps);
%>
application ������ �Ӽ��� ����Ǿ����ϴ�.

</body>
</html>