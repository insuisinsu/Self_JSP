<%@ page import="utils.CookieManager" %>
<%@ page import="utils.JSFunction" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String save_check = request.getParameter("save_check");

if("must".equals(user_id) && "1234".equals(user_pw)){
	if(save_check != null && save_check.equals("Y")){			// ���̵� �����ϱ⸦ üũ�ߴ��� Ȯ��
		CookieManager.makeCookie(response, "loginId", user_id, 86400);	//��Ű ����
	}else{
		CookieManager.deleteCookie(response, "loginId");	
	}
	
	JSFunction.alertLocation("�α��ο� �����߽��ϴ�.", "IdSaveMain.jsp", out);
}else{
	//�α��� ����
	JSFunction.alertBack("�α��ο� �����߽��ϴ�", out);
}

%>
