<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="model1.board.BoardDAO" %>
<%@ page import="model1.board.BoardDTO" %>
<%@ page import="utils.BoardPage" %>
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

/* ����¡ ó�� ���� */
//��ü ������ �� ���
int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));
int totalPage = (int)Math.ceil((double)totalCount / pageSize);	//��ü ������ ��

//���� ������ Ȯ��
int pageNum = 1;	//�⺻��
String pageTemp = request.getParameter("pageNum");
if(pageTemp != null && !pageTemp.equals(""))
	pageNum = Integer.parseInt(pageTemp);


//��Ͽ� ����� �Խù� ���� ���
int start = (pageNum - 1) * pageSize + 1;	// ù �Խù� ��ȣ
int end = pageNum * pageSize;	// ������ �Խù� ��ȣ
param.put("start", start);
param.put("end", end);
/* ������ ó�� ��*/


List<BoardDTO> boardLists = dao.selectListPage(param); //�Խù� ��� �ޱ�
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
	
	<h2>��� ����(List) - ���� ������ : <%= pageNum %> (��ü : <%= totalPage %>)</h2>
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
		int countNum = 0;
		for(BoardDTO dto : boardLists){
//			virtualNum = totalCount--;	// ��ü �Խù� ������ ������ 1�� ����
			virtualNum = totalCount -(((pageNum - 1)* pageSize) + countNum++);
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
		<tr align="center">
			<!-- ����¡ ó�� -->
			<td>
				<%= BoardPage.pagingStr(totalCount, pageSize, blockPage, pageNum,
						request.getRequestURI()) %>
			</td>
			<!-- �۾��� ��ư -->
			<td><button type="button" onclick="location.href='Write.jsp';">�۾���
				</button></td>
		</tr>
	</table>
	
	
	

</body>
</html>
















