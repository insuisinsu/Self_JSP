<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String chkVal = request.getParameter("inactiveToday"); 	//inactiveToday �� �� ���

if(chkVal != null && chkVal.equals("1")){
	Cookie cookie = new Cookie("PopupClose", "off");	// ��Ű ����
	cookie.setPath(request.getContextPath());		//��Ű�� ��� ����
	cookie.setMaxAge(60*60*24);		//�����Ⱓ ����
	response.addCookie(cookie);		//���� ��ü�� ��Ű �߰�
	out.println("��Ű : �Ϸ絿�� ���� ����");
}

%>
