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

<h2>회원 추가 테스트(executeUpdate() 사용)</h2>

<%
// DB 에 연결
JDBConnect jdbc = new JDBConnect();

//쿼리문 생성
String sql = "INSERT INTO member Values (?,?,?,sysdate)";
PreparedStatement psmt = jdbc.con.prepareStatement(sql);
psmt.setString(1, "test");
psmt.setString(2, "1111");
psmt.setString(3, "테스트1");

//쿼리 수행
int inResult = psmt.executeUpdate();
out.println(inResult + "행이 입력되었습니다.");

jdbc.close();

%>


</body>
</html>