<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../Common/Link.jsp" />
<h2>로그인 페이지</h2>
<span style="color:red; font-size:1.2em;">
	<%=
		request.getAttribute("LoginErrMsg") == null ?
				"" : request.getAttribute("LoginErrMsg")
	%>
</span>

<%
	if(session.getAttribute("UserId") == null) { // 로그인 상태 확인
		//로그아웃 상태
%>

<script>
function validateform(form){	// 자바스크립트로 작성한 유효성 검사 함수, 경고창 띄움
	if(!form.user_id.value){
		alert("아이디를 입력하세요.");
		return false;
	}
	if(form.user_pw.value == ""){
		alert("패스워드를 입력하세요.");
		return false;
	}
}
</script>

<form action="LoginProcess.jsp" method="post" name="loginFrm"
	onsubmit="return validateForm(this);">
	<!-- onsubmit 이벤트 핸들러가 validateForm() 을 호출
		유효성 검사에서 통과하면 폼에 입력한 값이 post 방식으로 LoginProcess.jsp 에 전송됨 -->
	아이디 : <input type="text" name="user_id" /> <br>
	패스워드 : <input type="password" name="user_pw" /><br>
	<input type="submit" value="로그인하기" />
</form>

<%
	} else {		//로그인 상태
%>

	<%= session.getAttribute("UserName") %> 회원님, 로그인 하셨습니다. <br>
	<a href = "Logout.jsp"> [로그아웃]</a>
<%
	}
%>
</body>
</html>
















