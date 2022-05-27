<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>포워드 결과</h2>
	<ul>
		<li>
			page 영역 : <%= pageContext.getAttribute("pAttr") %>
		</li>
		<li>
			request 영역 : <%= request.getAttribute("rAttr") %>
		</li>
	</ul>
</body>
</html>