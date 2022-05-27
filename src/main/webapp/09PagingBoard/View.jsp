<%@ page import="model1.board.BoardDAO" %>
<%@ page import="model1.board.BoardDTO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String num = request.getParameter("num");

BoardDAO dao = new BoardDAO(application);
dao.updateVisitCount(num);
BoardDTO dto = dao.selectView(num);	// �Խù� ��������
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
function deletePost(){
	var confirmed = confirm("������ �����Ͻðڽ��ϱ�?");
	if(confirmed){
		var form = document.writeFrm;	// �̸�(name)�� writeFrm �� �� ����
		form.method = "post";
		form.action = "DeleteProcess.jsp";
		form.submit();
	}
}
</script>
</head>
<body>
<jsp:include page="../Common/Link.jsp" />
<h2>ȸ���� �Խ��� - �� ����(View)</h2>
<form name="writeFrm">
	<input type="hidden" name="num" value="<%= num %>" />
	<table border="1" width="90%">
		<tr>
			<td>��ȣ</td>
			<td><%= dto.getNum() %></td>
			<td>�ۼ���</td>
			<td><%= dto.getName() %></td>
		</tr>
		<tr>
			<td>�ۼ���</td>
			<td><%= dto.getPostdate() %></td>
			<td>��ȸ��</td>
			<td><%= dto.getVisitcount() %></td>
		</tr>
		<tr>
			<td>����</td>
			<td colspan="3"><%= dto.getTitle() %></td>
		</tr>
		<tr>
			<td>����</td>
			<td colspan="3" height="100">
				<%= dto.getContent().replace("\r\n", "<br>") %></td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				<%
				if(session.getAttribute("UserId") != null && session.getAttribute("UserId").toString().equals(dto.getId())){
				%>
				<button type="button"
					onclick="location.href='Edit.jsp?num=<%= dto.getNum() %>';">�����ϱ�</button>
				<button type="button" onclick="deletePost();">�����ϱ�</button>
				<%
				}
				%>
				<button type="button" onclick="location.href='List.jsp';">��Ϻ���</button>
			</td>
		</tr>
	</table>
</form>





</body>
</html>