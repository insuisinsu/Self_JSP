<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>1. Ŭ���̾�Ʈ�� ������ ȯ������ �б�</h2>
	<a href="./RequestWebInfo.jsp?eng=Hello&han=�ȳ�"> GET ��� ����</a>
	<br>
	<form action = "RequestWebInfo.jsp" method="post">
		���� : <input type ="text" name="eng" value="Bye" /> <br>
		�ѱ� : <input type="text" name="han" value="�� ��"> <br>
		<input type="submit" value= "post ��� ����" >
	</form>
	
	<h2>2. Ŭ���̾�Ʈ�� ��û �Ű����� �б�</h2>

	<form method="post" action="RequestParameter.jsp">
		���̵� : <input type="text" name="id" value="" /><br>
		���� : 
		<input type="radio" name="sex" value="man"/> ����
		<input type="radio" name="sex" value="woman" checked="checked"/> ���� <br>
		���ɻ��� : 
		<input type="checkbox"	name="favo" value="eco"/> ����
		<input type="checkbox"	name="favo" value="pol;"/> ��ġ
		<input type="checkbox"	name="favo" value="ent"/> ���� <br>
		�ڱ�Ұ� : 
		<textarea name="intro" cols="30" rows="4"></textarea><br>
		<input type="submit" value="�����ϱ�"/>
	</form>
	
	<h2>3. HTTP ��û ��� ���� �б�</h2>
	<a href="RequestHeader.jsp"> ��û ��� ���� �б�</a>

</body>
</html>
