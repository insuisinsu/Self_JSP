<%@ page import="model1.board.BoardDAO" %>
<%@ page import="model1.board.BoardDTO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 로그인 확인을 위함
	글쓰기 페이지에서 세션 유지 시간동안 동작이 없었다면
	로그인이 해제될 수 있음
 -->
<%@ include file="./IsLoggedIn.jsp" %>
<%
//폼값 받기
String title = request.getParameter("title");
String content = request.getParameter("content");

//폼값을 DTO 객체에 저장
BoardDTO dto = new BoardDTO();
dto.setTitle(title);
dto.setContent(content);
//board 테이블의 id 컬럼은 member 테이블의 id 와 외래키 설정되어 있어서
//id 가 빈 값이면 Insert 할 때 오류 발생함
dto.setId(session.getAttribute("UserId").toString());

//DAO 객체를 통해 DB에 DTO 저장
BoardDAO dao = new BoardDAO(application);
int iResult = dao.insertWrite(dto);
dao.close();

// 성공 or 실패?
if(iResult == 1){
	response.sendRedirect("List.jsp");
}else{
	JSFunction.alertBack("글쓰기에 실패하였습니다.", out);
}

%>