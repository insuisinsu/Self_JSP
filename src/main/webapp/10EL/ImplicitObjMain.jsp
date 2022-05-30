<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
pageContext.setAttribute("scopeValue", "페이지 영역");
request.setAttribute("scopeValue", "리퀘스트 영역");
session.setAttribute("scopeValue", "세션 영역"	);
application.setAttribute("scopeValue", "애플리케이션 영역");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>ImplicitObjMain 페이지</h2>
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

<!-- 포워된 이후에는 새로운 page 영역이 만들어지기 대문에 기존의 page 값을 읽을 수 없음
	그래서 그 다음인 리퀘스트 영역의 속성값이 출력됨
 -->
<jsp:forward page="ImplicitForwardResult.jsp" />	

</body>
</html>