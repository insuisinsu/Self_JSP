<%@ page import="el.MyELClass" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
MyELClass myClass = new MyELClass();		// ��ü ����
pageContext.setAttribute("myClass", myClass);	// page ������ ����
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3>������ ���� �� �޼��� ȣ���ϱ�</h3>
001225-3000000 => ${ myClass.getGender("001225-3000000") } <br>
001225-2000000 => ${ myClass.getGender("001225-2000000") } <br>

<h3>Ŭ�������� ���� ���� �޼��� ȣ���ϱ�</h3>
${ MyELClass.showGugudan(7) }


</body>
</html>