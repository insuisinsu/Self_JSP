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

<c:set var="requestVar" value="MustHave" scope="request" />
<c:import url="/11JSTL/inc/OtherPage.jsp" var="contents" >
	<c:param name="user_param1" value="JSP" />
	<c:param name="user_param2" value="�⺻��" />
</c:import>

<h4>�ٸ� ���� �����ϱ�</h4>
${ contents }

<h4>�ܺ� �ڿ� �����ϱ�</h4>
<iframe src="../inc/GoldPage.jsp" style="width:100%;height:600px;"></iframe>
	


</body>
</html>