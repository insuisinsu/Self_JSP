<%@ page import="model1.board.BoardDAO" %>
<%@ page import="model1.board.BoardDTO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="./IsLoggedIn.jsp" %>
<%
String num = request.getParameter("num");
BoardDTO dto = new BoardDTO();
BoardDAO dao = new BoardDAO(application);
dto = dao.selectView(num);		// �־��� �Ϸù�ȣ�� �ش��ϴ� ���� �Խù� ���

//�α��ε� ����� ID ���
String sessionId = session.getAttribute("UserId").toString();
int delResult = 0;

if(sessionId.equals(dto.getId())){
	dto.setNum(num);
	delResult = dao.deletePost(dto);
	dao.close();
	
	if(delResult == 1){
		JSFunction.alertLocation("�����Ǿ����ϴ�.", "List.jsp", out);
	}else{
		JSFunction.alertBack("������ �����Ͽ����ϴ�.", out);
	}
}else{
	JSFunction.alertBack("���θ� ���� �����մϴ�.", out);
	return;
}

%>