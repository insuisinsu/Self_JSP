<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>useBean �׼� �±�</h2>
<h3>�ڹٺ��� �����ϱ�	</h3>
<jsp:useBean id="person" class="common.Person" scope="request" />

<h3>setProperty �׼� �±׷� �ڹٺ��� �Ӽ� �����ϱ�</h3>
<jsp:setProperty name="person" property="name" value="�Ӳ���" />
<jsp:setProperty name="person" property="age" value="41" />

<h3>getProperty �׼� �±׷� �ڹٺ��� �Ӽ� �б�</h3>
<ul>
	<li>�̸� : <jsp:getProperty property="name" name="person"/></li>
	<li>���� : <jsp:getProperty property="age" name="person"/></li>
</ul>


</body>
</html>