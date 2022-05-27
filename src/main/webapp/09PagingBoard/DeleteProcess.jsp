<%@ page import="model1.board.BoardDAO" %>
<%@ page import="model1.board.BoardDTO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="./IsLoggedIn.jsp" %>
<%
String num = request.getParameter("num");
BoardDTO dto = new BoardDTO();
BoardDAO dao = new BoardDAO(application);
dto = dao.selectView(num);		// 주어진 일련번호에 해당하는 기존 게시물 얻기

//로그인된 사용자 ID 얻기
String sessionId = session.getAttribute("UserId").toString();
int delResult = 0;

if(sessionId.equals(dto.getId())){
	dto.setNum(num);
	delResult = dao.deletePost(dto);
	dao.close();
	
	if(delResult == 1){
		JSFunction.alertLocation("삭제되었습니다.", "List.jsp", out);
	}else{
		JSFunction.alertBack("삭제에 실패하였습니다.", out);
	}
}else{
	JSFunction.alertBack("본인만 삭제 가능합니다.", out);
	return;
}

%>