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
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String sex = request.getParameter("sex");

//checkbox 는 여러값을 넘길 수 있어서 하나로 이어붙여 줌
String[] favo = request.getParameterValues("favo");
String favoStr = "";
if(favo != null){
	for (int i = 0; i < favo.length; i++){
		favoStr += favo[i] + " ";
	}
}

// 엔터 처리 - 엔터를 br 태그로 바꿈
String intro = request.getParameter("intro").replace("\r\n", "<br>");
%>
<ul>
	<li> <%= id %>	</li>
	<li> <%= sex %>	</li>
	<li> <%= favoStr %>	</li>
	<li> <%= intro %>	</li>
</ul>


</body>
</html>