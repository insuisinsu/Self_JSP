<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../Common/Link.jsp" />
<h2>�α��� ������</h2>
<span style="color:red; font-size:1.2em;">
	<%=
		request.getAttribute("LoginErrMsg") == null ?
				"" : request.getAttribute("LoginErrMsg")
	%>
</span>

<%
	if(session.getAttribute("UserId") == null) { // �α��� ���� Ȯ��
		//�α׾ƿ� ����
%>

<script>
function validateform(form){	// �ڹٽ�ũ��Ʈ�� �ۼ��� ��ȿ�� �˻� �Լ�, ���â ���
	if(!form.user_id.value){
		alert("���̵� �Է��ϼ���.");
		return false;
	}
	if(form.user_pw.value == ""){
		alert("�н����带 �Է��ϼ���.");
		return false;
	}
}
</script>

<form action="LoginProcess.jsp" method="post" name="loginFrm"
	onsubmit="return validateForm(this);">
	<!-- onsubmit �̺�Ʈ �ڵ鷯�� validateForm() �� ȣ��
		��ȿ�� �˻翡�� ����ϸ� ���� �Է��� ���� post ������� LoginProcess.jsp �� ���۵� -->
	���̵� : <input type="text" name="user_id" /> <br>
	�н����� : <input type="password" name="user_pw" /><br>
	<input type="submit" value="�α����ϱ�" />
</form>

<%
	} else {		//�α��� ����
%>

	<%= session.getAttribute("UserName") %> ȸ����, �α��� �ϼ̽��ϴ�. <br>
	<a href = "Logout.jsp"> [�α׾ƿ�]</a>
<%
	}
%>
</body>
</html>
















