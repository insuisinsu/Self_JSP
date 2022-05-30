<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
List<Object> aList = new ArrayList<Object>();
aList.add("Chung");
aList.add(new Person("JangBogo", 28));
pageContext.setAttribute("Ocean", aList);
%>
<ul>
	<li>0번째 요소 : ${ Ocean[0] } </li>
	<li>1번째 요소 : ${ Ocean[1].name }, ${ Ocean[1].age } </li>
	<li>0번째 요소 : ${ Ocean[2] } </li>
</ul>

<%
Map<String, String> map = new HashMap<String, String>();
map.put("Kor", "Korean");
map.put("Eng", "English");
pageContext.setAttribute("King", map);
%>

<ul>
	<li>영문 Key : ${King["Eng"] }, ${King['Eng'] }, ${King.Eng }</li>
	<li>한글 Key : ${King["Kor"] }, ${King['Kor'] }, \${King.Kor }</li>
	<!-- 한글이면 King.한글 오류남 		//   \로 주석처리 하면 일반 HTML 코드로 인식되어 화면에 출력-->
</ul>


</body>
</html>