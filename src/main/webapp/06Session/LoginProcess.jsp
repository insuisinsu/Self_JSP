<%@ page import="membership.MemberDTO" %>
<%@ page import="membership.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
//로그인 폼으로부터 받은 아이디와 패스워드
String userId = request.getParameter("user_id");
String userPwd = request.getParameter("user_pw");

//web.xml 에서 가져온 데이터베이스 연결 정보
String oracleDriver = application.getInitParameter("OracleDriver");
String oracleURL = application.getInitParameter("OracleURL");
String oracleId = application.getInitParameter("OracleId");
String oraclePwd = application.getInitParameter("OraclePwd");

// 회원 테이블 DAO 를 통해 회원 정보 DTO 획득 및 DB 접속
MemberDAO dao = new MemberDAO(oracleDriver, oracleURL, oracleId, oraclePwd);
//사용자가 입력한 아이디와 패스워드를 인수로 getMemberDTO 를 호출함
// -> 아이디 패스워드가 일치된다면 해당 회원의 DTO 객체가 memberDTO 에 저장됨
MemberDTO memberDTO = dao.getMemberDTO(userId, userPwd);
dao.close();

//로그인 성공 여부에 따른 처리
if(memberDTO.getId() != null){
	//로그인 성공 - memberDTO 에 id 값이 있다 = 아이디 패스워드가 일치하여 회원의 객체를 가져왔다
	// 로그인 성공했으니 session 에 아이디 패스워드를 저장함
	// session 영역은 브라우저를 닫을 때 까지 모든 페이지에서 공유됨
	session.setAttribute("UserId", memberDTO.getId());
	session.setAttribute("UserName", memberDTO.getName());
	response.sendRedirect("LoginForm.jsp");
}else{
	//로그인 실패
	// request 영역에 저장된 값은 포워드된 페이지까지 공유됨
	request.setAttribute("LoginErrMsg", "로그인 오류입니다.");
	request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
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