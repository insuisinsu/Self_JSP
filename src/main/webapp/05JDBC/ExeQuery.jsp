<%@page import="java.sql.Date"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
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

<h2>ȸ�� ��� ��ȸ �׽�Ʈ(executeQuery() ���)</h2>

<%
// DB �� ����
JDBConnect jdbc = new JDBConnect();

String sql = "SELECT * FROM member";
Statement stmt = jdbc.con.createStatement();

//���� ����
ResultSet rs = stmt.executeQuery(sql);

//��� Ȯ��(�������� ���)
while(rs.next()){
	String id = rs.getString(1);	//get �迭 �޼��忡�� �÷��� ������ ���� �ε����� �÷��� �� �� ��� ����
	String pw = rs.getString(2);
	String name = rs.getString("name");
	Date regidate = rs.getDate("regidate");
	
	out.println(String.format("%s %s %s %s", id, pw, name, regidate) + "<br>");
}

jdbc.close();

%>


</body>
</html>