<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="./IsLoggedIn.jsp" %>  <!-- 로그인 확인 -->
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript">
		function validateForm (form){
			if(form.title.value == "" || form.title.value.length==){
				alert("제목을 입력하새요");
				form.title.focus();
				return false;
			}
			if(form.content.value == "" || form.content.value.length==){
				alert("내용 입력하새요");
				form.content.focus();
				return false;
			}
		}
</script>
</head>
<body>

<jsp:include page="../Common/Link.jsp" />
<h2>회원제 게시판 - 글쓰기(Write)</h2>
<form name="writeFrm" method="post" action="WriteProcess.jsp"
		onsubmit="return validateForm(this)">
	<table border="1" width="90%">
		<tr>
			<td>제목</td>
			<td>
				<input type="text" name="title" style="width: 90%;" />
			</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>
				<textarea name="content" style="width: 90%; height: 100px;"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit">작성 완료</button>
				<button type="reset">다시 입력</button>
				<button type="button" onclick="location.href='List.jsp';">목록 보기</button>
			</td>
		</tr>
	</table>


</body>
</html>