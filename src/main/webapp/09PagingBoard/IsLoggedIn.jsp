<%@ page import="utils.JSFunction" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
if(session.getAttribute("UserId") == null){
	JSFunction.alertLocation("�α��� �� �̿����ּ���.", "../06Session/LoginForm.jsp", out);
	return;
}
%>
