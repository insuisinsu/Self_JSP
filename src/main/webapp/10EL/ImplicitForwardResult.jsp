<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>ImplicitForwardResult ������</h2>
<h3>�� ������ ����� �Ӽ� �б�</h3>

<ul>
	<li>������ ���� : ${pageScope.scopeValue }</li>
	<li>������Ʈ ���� : ${requestScope.scopeValue }</li>
	<li>���� ���� : ${sessionScope.scopeValue }</li>
	<li>���ø����̼� ���� : ${applicationScope.scopeValue }</li>
</ul>

<h3>���� ���� ���� �Ӽ� �б�</h3>
<ul>
	<!-- ������ ���� �������� ������ ���� ���� ���� ���� �Ӽ��� ã�ƿ� -->
	<li>${scopeValue }</li>
</ul>


</body>
</html>