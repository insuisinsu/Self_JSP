<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
//���Ե� ������ ���
String outerPath1 = "./inc/OuterPage1.jsp";
String outerPath2 = "./inc/OuterPage2.jsp";

//page ������ request ������ �Ӽ� ����
pageContext.setAttribute("pAttr", "�����");
request.setAttribute("rAttr", "������");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>���þ�� �׼� �±� ���� ��� ��</h2>
<!-- ���þ� ��� -->
<h3>���þ�� ������ �����ϱ�</h3>
<%@ include file="./inc/OuterPage1.jsp"	 %>
<%--@ include file-"<%=outerPath1OuterPage1%> --%>
<p>�ܺ� ���Ͽ� ������ ���� : <%=newVar1 %></p>

<!-- �׼� �±� ��� -->
<h3>�׼� �±׷� ������ �����ϱ�</h3>
<jsp:include page="./inc/OuterPage2.jsp" />
<jsp:include page="<%=outerPath2 %>" />
<p>�ܺ� ���Ͽ� ������ ���� : <%--=newVar2 --%> </p>


</body>
</html>