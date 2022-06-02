<%@ page import="java.util.Date" %>
<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL - set 1</title>
</head>
<body>

<!-- 변수 선언 -->
<!--  값을 직접 입력하거나, EL, 표현식 사용 가능, 태그 사이도 가능
	scope 를 사용하지 않았기 때문에 변수는 모두 page 에 저장됨 -->
<c:set var="directVar" value="100" />
<c:set var="elVar" value="${ directVar mod 5 }" />
<c:set var="expVar" value="<%= new Date() %>" />
<c:set var="betweenVar" > 변수값 요렇게 설정 </c:set>

<h4>EL 을 이용해 변수 출력</h4>
<ul>
	<li>direvtVar : ${ pageScope.directVar } </li>
	<li>elVar : ${ elVar} </li>
	<li>expVar : ${expVar} </li>
	<li>betweenVar : ${ betweenVar } </li>
</ul>

<h4>자바빈즈 생성 1 - 생성자 사용</h4>
<c:set var="personVar1" value='<%= new Person("Park문수", 50) %>' 
	scope="request" />
	
<ul>
	<li>이름 : ${ requestScope.personVar1.name } </li>
	<li>나이 : ${ personVar1.age } </li>
</ul>

<h4>자바빈즈 생성 2 - target, property</h4>
<c:set var="personVar2" value="<%= new Person() %>" scope="request" />
<c:set target="${personVar2 }" property="name" value="Jung약용" />
<c:set target="${personVar2 }" property="age" value="60" />

<ul>
	<li>이름 : ${ personVar2.age } </li>
	<li>나이 : ${ requestScope.personVar2.name } </li>
</ul>


</body>
</html>