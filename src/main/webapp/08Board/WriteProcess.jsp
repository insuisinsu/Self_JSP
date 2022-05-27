<%@ page import="model1.board.BoardDAO" %>
<%@ page import="model1.board.BoardDTO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- �α��� Ȯ���� ����
	�۾��� ���������� ���� ���� �ð����� ������ �����ٸ�
	�α����� ������ �� ����
 -->
<%@ include file="./IsLoggedIn.jsp" %>
<%
//���� �ޱ�
String title = request.getParameter("title");
String content = request.getParameter("content");

//������ DTO ��ü�� ����
BoardDTO dto = new BoardDTO();
dto.setTitle(title);
dto.setContent(content);
//board ���̺��� id �÷��� member ���̺��� id �� �ܷ�Ű �����Ǿ� �־
//id �� �� ���̸� Insert �� �� ���� �߻���
dto.setId(session.getAttribute("UserId").toString());

//DAO ��ü�� ���� DB�� DTO ����
BoardDAO dao = new BoardDAO(application);
int iResult = dao.insertWrite(dto);
dao.close();

// ���� or ����?
if(iResult == 1){
	response.sendRedirect("List.jsp");
}else{
	JSFunction.alertBack("�۾��⿡ �����Ͽ����ϴ�.", out);
}

%>