<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="person" class="common.Person" scope="request"></jsp:useBean>
<h2>������� ���������� �Ű����� Ȯ��</h2>

<ul>
	<li><jsp:getProperty property="name" name="person"/></li>
	<li>���� : <jsp:getProperty property="age" name="person"/></li>
	<li>���� : <%= request.getParameter("param1") %></li>
	<li>��� : <%= request.getParameter("param2") %></li>
	<li>Ư¡ : <%= request.getParameter("param3") %></li>
</ul>
<jsp:include page="inc/ParamInclude.jsp">
	<jsp:param name="loc1" value="������ ����" />
	<jsp:param name="loc2" value="��񰫸�" />
</jsp:include>


</body>
</html>