<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="common.JDBConnect" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>ȸ�� �߰� �׽�Ʈ(executeUpdate() ���)</h2>

<%
// DB �� ����
JDBConnect jdbc = new JDBConnect();

//������ ����
String sql = "INSERT INTO member Values (?,?,?,sysdate)";
PreparedStatement psmt = jdbc.con.prepareStatement(sql);
psmt.setString(1, "test");
psmt.setString(2, "1111");
psmt.setString(3, "�׽�Ʈ1");

//���� ����
int inResult = psmt.executeUpdate();
out.println(inResult + "���� �ԷµǾ����ϴ�.");

jdbc.close();

%>


</body>
</html>