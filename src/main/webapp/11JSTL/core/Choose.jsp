<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- 변수 선언 -->
<c:set var="number" value="100" />

<h4>choose 태그로 홀짝 판단하기</h4>
<c:choose>
	<c:when test="${number mod 2 eq 0 }">
		${ number } 는 짝수입니다.
	</c:when>
	<c:otherwise>
		${ number } 는 홀수입니다.
	</c:otherwise>
</c:choose>

<h4>국, 영, 수 점수를 입력하면 평균을 내어 학점 출력</h4>
<form>
	국어 : <input type"text" name="kor" /> <br>
	영어 : <input type"text" name="eng" /> <br>
	수학 : <input type"text" name="math" /> <br>
	<input type="submit" value="학점 구하기" />
</form>

<!-- 점수가 모두 입력되었는지 확인 -->
<c:if test="${ not (empty param.kor or empty param.eng or empty param.math) }" >
	<c:set var="avg" value="${(param.kor + param.eng + param.math) / 3 }" />
	평균 점수 : ${avg } 점, 등급은 : 
	<c:choose>
		<c:when test="${ avg >=90 }" >A </c:when>
		<c:when test="${ avg >=80 }" >B </c:when>
		<c:when test="${ avg ge 70 }" >C </c:when>
		<c:when test="${ avg ge 60 }" >D </c:when>
		<c:otherwise>F</c:otherwise>
	</c:choose> 입니다.
</c:if>
</body>
</html>