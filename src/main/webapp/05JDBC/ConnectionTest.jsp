<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import = "common.JDBConnect" %>   
<%@ page import = "common.DBConnPool" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

 <h3> JDBC Ŀ�ؼ� �׽�Ʈ </h3>
<% JDBConnect jdbc1 = new JDBConnect();    //Ŀ�ؼ� ��ü ���� 

	jdbc1.close();    //Ŀ�ؼ� ��ü �ݳ�
%>

<h2>JDBC �׽�Ʈ 2</h2>
<%
String driver = application.getInitParameter("OracleDriver");
String url = application.getInitParameter("OracleURL");
String id = application.getInitParameter("OracleId");
String pwd = application.getInitParameter("OraclePwd");

JDBConnect jdbc2 = new JDBConnect(driver, url, id, pwd);
jdbc2.close();

%>

<h2>JDBC �׽�Ʈ 3</h2>
<%
JDBConnect jdbc3 = new JDBConnect(application);
jdbc3.close();
%>

<h2>Ŀ�ؼ� Ǯ �׽�Ʈ</h2>
<%
DBConnPool pool = new DBConnPool();
pool.close();
%>


</body>
</html>