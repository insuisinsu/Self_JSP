<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
// ������ �Ǵ� �������� �ѱ��� ������ ���� �ݵ�� ������ ��Ű�� ���� ���������� ���ڵ� ó���ؾ���
// web.xml ���� ���� �����ߴٸ� ���� ����
request.setCharacterEncoding("utf-8");
String pValue = "�������";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="person" class="common.Person" scope="request" />
	<jsp:setProperty property="name" name="person" value="���"/>
	<jsp:setProperty property="age" name="person" value="56"/>
	<jsp:forward page="ParamForward.jsp?param1=�躴��"> 
		<jsp:param value="��⵵ ����" name="param2"/>
		<jsp:param value="<%=pValue %>" name="param3"/>
	</jsp:forward>

</body>
</html>