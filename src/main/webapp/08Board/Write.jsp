<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="./IsLoggedIn.jsp" %>  <!-- �α��� Ȯ�� -->
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript">
		function validateForm (form){
			if(form.title.value == "" || form.title.value.length==){
				alert("������ �Է��ϻ���");
				form.title.focus();
				return false;
			}
			if(form.content.value == "" || form.content.value.length==){
				alert("���� �Է��ϻ���");
				form.content.focus();
				return false;
			}
		}
</script>
</head>
<body>

<jsp:include page="../Common/Link.jsp" />
<h2>ȸ���� �Խ��� - �۾���(Write)</h2>
<form name="writeFrm" method="post" action="WriteProcess.jsp"
		onsubmit="return validateForm(this)">
	<table border="1" width="90%">
		<tr>
			<td>����</td>
			<td>
				<input type="text" name="title" style="width: 90%;" />
			</td>
		</tr>
		<tr>
			<td>����</td>
			<td>
				<textarea name="content" style="width: 90%; height: 100px;"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit">�ۼ� �Ϸ�</button>
				<button type="reset">�ٽ� �Է�</button>
				<button type="button" onclick="location.href='List.jsp';">��� ����</button>
			</td>
		</tr>
	</table>


</body>
</html>