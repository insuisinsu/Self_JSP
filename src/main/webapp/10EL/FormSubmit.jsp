<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>���� �����ϱ�</h2>
<form name="frm" method="post" action="FormResult.jsp">
	�̸� : <input type = "text" name="name"	/><br>
	���� : <input type="radio" name="gender" value="Man" />����
			<input type="radio" name="gender" value="Woman" />����<br>
	�з� :
		<select name="grade">
			<option value="ele">�ʵ�</option>
			<option value="mid">�ߵ�</option>
			<option value="high">���</option>
			<option value="uni">���</option>
		</select><br>
	���ɻ��� : 
		<input type="checkbox" name="inter" value="pol" /> ��ġ
		<input type="checkbox" name="inter" value="eco" /> ����
		<input type="checkbox" name="inter" value="ent" /> ����
		<input type="checkbox" name="inter" value="spo" /> �
	<input type="submit" value="�����ϱ�" />
</form>
</body>
</html>