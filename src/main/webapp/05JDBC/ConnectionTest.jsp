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

 <h3> JDBC 커넥션 테스트 </h3>
<% JDBConnect jdbc1 = new JDBConnect();    //커넥션 객체 생성 

	jdbc1.close();    //커넥션 객체 반납
%>

<h2>JDBC 테스트 2</h2>
<%
String driver = application.getInitParameter("OracleDriver");
String url = application.getInitParameter("OracleURL");
String id = application.getInitParameter("OracleId");
String pwd = application.getInitParameter("OraclePwd");

JDBConnect jdbc2 = new JDBConnect(driver, url, id, pwd);
jdbc2.close();

%>

<h2>JDBC 테스트 3</h2>
<%
JDBConnect jdbc3 = new JDBConnect(application);
jdbc3.close();
%>

<h2>커넥션 풀 테스트</h2>
<%
DBConnPool pool = new DBConnPool();
pool.close();
%>


</body>
</html>