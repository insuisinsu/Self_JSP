<%@ page import="model1.board.BoardDAO" %>
<%@ page import="model1.board.BoardDTO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="./IsLoggedIn.jsp" %>
<%
String num = request.getParameter("num");

BoardDAO dao = new BoardDAO(application);
BoardDTO dto = dao.selectView(num);	// �Խù� ��������
String sessionId = session.getAttribute("UserId").toString();
if(!sessionId.equals(dto.getId())){
	JSFunction.alertBack("�ۼ��� ���θ� ���� ����", out);
	return;
}
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
<h2>ȸ���� �Խ��� - �����ϱ�(Edit))</h2>
<form name="writeFrm" method="post" action="EditProcess.jsp"
		onsubmit="return validateForm(this)">
		<input type="hidden" name="num" value="<%= dto.getNum() %>" />
	<table border="1" width="90%">
		<tr>
			<td>����</td>
			<td>
				<input type="text" name="title" style="width: 90%;" 
					value="<%= dto.getTitle() %>" />
			</td>
		</tr>
		<tr>
			<td>����</td>
			<td>
				<textarea name="content" style="width: 90%; height: 100px;">
				<%= dto.getContent() %>
				</textarea>
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