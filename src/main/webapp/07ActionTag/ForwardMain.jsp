<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
pageContext.setAttribute("pAttr", "������");
request.setAttribute("rAttr", "���");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>�׼� �±׸� �̿��� ������</h2>
<jsp:forward page="/07ActionTag/ForwardSub.jsp" />

</body>
</html>