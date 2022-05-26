<%@ page import="membership.MemberDTO" %>
<%@ page import="membership.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
//�α��� �����κ��� ���� ���̵�� �н�����
String userId = request.getParameter("user_id");
String userPwd = request.getParameter("user_pw");

//web.xml ���� ������ �����ͺ��̽� ���� ����
String oracleDriver = application.getInitParameter("OracleDriver");
String oracleURL = application.getInitParameter("OracleURL");
String oracleId = application.getInitParameter("OracleId");
String oraclePwd = application.getInitParameter("OraclePwd");

// ȸ�� ���̺� DAO �� ���� ȸ�� ���� DTO ȹ�� �� DB ����
MemberDAO dao = new MemberDAO(oracleDriver, oracleURL, oracleId, oraclePwd);
//����ڰ� �Է��� ���̵�� �н����带 �μ��� getMemberDTO �� ȣ����
// -> ���̵� �н����尡 ��ġ�ȴٸ� �ش� ȸ���� DTO ��ü�� memberDTO �� �����
MemberDTO memberDTO = dao.getMemberDTO(userId, userPwd);
dao.close();

//�α��� ���� ���ο� ���� ó��
if(memberDTO.getId() != null){
	//�α��� ���� - memberDTO �� id ���� �ִ� = ���̵� �н����尡 ��ġ�Ͽ� ȸ���� ��ü�� �����Դ�
	// �α��� ���������� session �� ���̵� �н����带 ������
	// session ������ �������� ���� �� ���� ��� ���������� ������
	session.setAttribute("UserId", memberDTO.getId());
	session.setAttribute("UserName", memberDTO.getName());
	response.sendRedirect("LoginForm.jsp");
}else{
	//�α��� ����
	// request ������ ����� ���� ������� ���������� ������
	request.setAttribute("LoginErrMsg", "�α��� �����Դϴ�.");
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