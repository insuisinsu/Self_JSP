<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3>EL로 폼값 받기</h3>
<ul>
	<li>이름 : ${ param.name } </li>
	<li>성별 : ${ param.gender } </li>
	<li>학력 : ${ param.grade } </li>
	<!--  checkbox 는 값이 여러개라서 paramValues 를 통해 배열로 받음 -->
	<li>관심사항 : ${ paramValues.inter[0] }
			${ paramValues.inter[1] }
			${ paramValues.inter[2] }
			${ paramValues.inter[3] }
	 </li>
</ul>

</body>
</html>