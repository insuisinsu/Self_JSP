<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>OuterPage</title>
</head>
<body>
<h2>寇何 颇老 2</h2>
<%
String newVar2 = "归力 柯炼空";
%>

<ul>
	<li>page 康开 加己 : <%= pageContext.getAttribute("pattr") %> </li>
	<li>request 康开 加己 : <%= request.getAttribute("rAttr") %> </li>
</ul>

</body>
</html>