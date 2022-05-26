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

<h2>회원 목록 조회 테스트(executeQuery() 사용)</h2>

<%
// DB 에 연결
JDBConnect jdbc = new JDBConnect();

String sql = "SELECT * FROM member";
Statement stmt = jdbc.con.createStatement();

//쿼리 수행
ResultSet rs = stmt.executeQuery(sql);

//결과 확인(웹페이지 출력)
while(rs.next()){
	String id = rs.getString(1);	//get 계열 메서드에서 컬럼을 지정할 때는 인덱스와 컬럼명 둘 다 사용 가능
	String pw = rs.getString(2);
	String name = rs.getString("name");
	Date regidate = rs.getDate("regidate");
	
	out.println(String.format("%s %s %s %s", id, pw, name, regidate) + "<br>");
}

jdbc.close();

%>


</body>
</html>