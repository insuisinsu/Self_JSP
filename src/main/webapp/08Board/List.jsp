<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="model1.board.BoardDAO" %>
<%@ page import="model1.board.BoardDTO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
//DAO�� ������ DB�� ����
BoardDAO dao = new BoardDAO(application);

//����ڰ� �Է��� �˻� ������ Map�� ����
Map<String, Object> param = new HashMap<>();
String searchField = request.getParameter("searchField");
String searchWord = request.getParameter("searchWord");
if(searchWord != null){
	param.put("searchField", searchField);
	param.put("searchWord", searchWord);
}

int totalCount = dao.selectCount(param);	//�Խù� �� Ȯ��
List<BoardDTO> boardLists = dao.selectList(param); //�Խù� ��� �ޱ�
dao.close();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../Common/Link.jsp"></jsp:include>
	
	<h2>��� ����(List)</h2>
	<!-- �˻� �� -->
	<form method="get">
	<table border="1" width="90%">
	<tr>
		<td align="center">
			<select name="searchField">
				<option value="title">����</option>
				<option value="content">����</option>
			</select>
			<input type="text" name="searchWord" />
			<input type="submit" value="�˻��ϱ�" />
		</td>
	</tr>
	</table>
	</form>

	<!-- �Խù� ��� ���̺�(ǥ) -->
	<table border="1" width="90%">
		<!-- �� �÷��� �̸� -->
		<tr>
			<th width="10%">��ȣ</th>
			<th width="50%">����</th>
			<th width="15%">�ۼ���</th>
			<th width="10%">��ȸ��</th>
			<th width="15%">�ۼ���</th>
		</tr>
		
		<!-- ����� ���� -->
	<%
	if(boardLists.isEmpty()){
		// �Խù��� �ϳ��� ���� ��
	%>
		<tr>
			<td colspan="5	 align="center">
				��ϵ� �Խù��� �����ϴ�.
			</td>
		</tr>
	<%
	}else{
		// �Խù��� ���� ��
		int virtualNum = 0; 	// ȭ��󿡼��� �Խù� ��ȣ
		for(BoardDTO dto : boardLists){
			virtualNum = totalCount--;	// ��ü �Խù� ������ ������ 1�� ����
	%>
	
		<tr align="center">
			<td><%= virtualNum %></td>
			<td align="left"> <!-- ���� + �����۸�ũ -->
				<a href="View.jsp?num=<%= dto.getNum() %>"><%= dto.getTitle() %></a>
			</td>
			<td align="center"><%= dto.getId() %> </td>
			<td align="center"><%= dto.getVisitcount() %> </td>
			<td align="center"><%= dto.getPostdate() %> </td>
	<%
		}
	}
	%>
	</table>
	
	<!-- ��� �ϴ��� [�۾���] ��ư -->
	<table border="1" width="90%">
		<tr align="right">
			<td><button type="button" onclick="location.href='Write.jsp';">�۾���
				</button></td>
		</tr>
	</table>
	
	
	

</body>
</html>
















