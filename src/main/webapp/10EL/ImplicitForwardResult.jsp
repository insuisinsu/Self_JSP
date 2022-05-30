<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>ImplicitForwardResult 페이지</h2>
<h3>각 영역에 저장된 속성 읽기</h3>

<ul>
	<li>페이지 영역 : ${pageScope.scopeValue }</li>
	<li>리퀘스트 영역 : ${requestScope.scopeValue }</li>
	<li>세션 영역 : ${sessionScope.scopeValue }</li>
	<li>애플리케이션 영역 : ${applicationScope.scopeValue }</li>
</ul>

<h3>영역 지정 없이 속성 읽기</h3>
<ul>
	<!-- 영역을 따로 지정하지 않으면 가장 좁은 영역 부터 속성을 찾아옴 -->
	<li>${scopeValue }</li>
</ul>


</body>
</html>