<%@ page import="model1.board.BoardDAO" %>
<%@ page import="model1.board.BoardDTO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="./IsLoggedIn.jsp" %>
<%
String num = request.getParameter("num");
String title = request.getParameter("title");
String content = request.getParameter("content");

//DTO �� ����
BoardDTO dto = new BoardDTO();
dto.setNum(num);
dto.setTitle(title);
dto.setContent(content);

//DB�� �ݿ�
BoardDAO dao = new BoardDAO(application);
int affected = dao.updateEdit(dto);
dao.close();

//���� ���� ó��
if(affected == 1){
	response.sendRedirect("View.jsp?num=" + dto.getNum());
}else{
	JSFunction.alertBack("�����ϱ⿡ �����߽��ϴ�.", out);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>