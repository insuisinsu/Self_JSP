<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>OuterPage</title>
</head>
<body>
<h2>�ܺ� ���� 2</h2>
<%
String newVar2 = "���� ������";
%>

<ul>
	<li>page ���� �Ӽ� : <%= pageContext.getAttribute("pattr") %> </li>
	<li>request ���� �Ӽ� : <%= request.getAttribute("rAttr") %> </li>
</ul>

</body>
</html>