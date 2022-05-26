<%@ page import="utils.CookieManager" %>
<%@ page import="utils.JSFunction" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String save_check = request.getParameter("save_check");

if("must".equals(user_id) && "1234".equals(user_pw)){
	if(save_check != null && save_check.equals("Y")){			// 아이디 저장하기를 체크했는지 확인
		CookieManager.makeCookie(response, "loginId", user_id, 86400);	//쿠키 생성
	}else{
		CookieManager.deleteCookie(response, "loginId");	
	}
	
	JSFunction.alertLocation("로그인에 성공했습니다.", "IdSaveMain.jsp", out);
}else{
	//로그인 실패
	JSFunction.alertBack("로그인에 실패했습니다", out);
}

%>
