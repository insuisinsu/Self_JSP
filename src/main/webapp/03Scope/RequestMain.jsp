<%@ page import = "common.Person" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
request.setAttribute("requestString", "request ������ ���ڿ�");
request.setAttribute("requestPerson", new Person("���߱�", 31));
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>request ����</h2>
<%
	request.removeAttribute("requestString");
	request.removeAttribute("requestInteger");
%>

<h2>request ������ �Ӽ��� �б�</h2>
<%
Person rPerson = (Person)(request.getAttribute("requestPerson"));
%>
<ul>
	<li> String ��ü : <%= request.getAttribute("requestString") %></li>
	<li> Person ��ü : <%= rPerson.getName() %>, <%= rPerson.getAge() %></li>
	
</ul>
<h2>������� ���������� request ���� �Ӽ��� �б�</h2>
<%
request.getRequestDispatcher(
		"RequestForward.jsp?paramHan=�ѱ�&paramEng=English").forward(request, response);
%>

</body>
</html>