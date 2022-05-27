<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
// 포워드 되는 페이지로 한글을 전달할 때는 반드시 포워드 시키는 최초 페이지에서 인코딩 처리해야함
// web.xml 에서 필터 설정했다면 생략 가능
request.setCharacterEncoding("utf-8");
String pValue = "방랑시인";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="person" class="common.Person" scope="request" />
	<jsp:setProperty property="name" name="person" value="김삿갓"/>
	<jsp:setProperty property="age" name="person" value="56"/>
	<jsp:forward page="ParamForward.jsp?param1=김병연"> 
		<jsp:param value="경기도 양주" name="param2"/>
		<jsp:param value="<%=pValue %>" name="param3"/>
	</jsp:forward>

</body>
</html>