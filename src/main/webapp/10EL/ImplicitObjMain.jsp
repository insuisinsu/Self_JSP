<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
pageContext.setAttribute("scopeValue", "������ ����");
request.setAttribute("scopeValue", "������Ʈ ����");
session.setAttribute("scopeValue", "���� ����"	);
application.setAttribute("scopeValue", "���ø����̼� ����");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>ImplicitObjMain ������</h2>
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

<!-- ������ ���Ŀ��� ���ο� page ������ ��������� �빮�� ������ page ���� ���� �� ����
	�׷��� �� ������ ������Ʈ ������ �Ӽ����� ��µ�
 -->
<jsp:forward page="ImplicitForwardResult.jsp" />	

</body>
</html>