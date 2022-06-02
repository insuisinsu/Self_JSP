<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import ="fileupload.MyfileDAO" %>
<%@ page import ="fileupload.MyfileDTO" %>
<%@ page import ="java.util.Date" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="java.io.File" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String saveDirectory = application.getRealPath("/Uploads");
int maxPostSize = 1024 * 1000;	//1MB
String encoding = "UTF-8";

try{
	//1. MultipartRequest 객체 생성
	// 객체가 정상적으로 생성되면 파일 업로드가 완료됨
	// 원본파일명 그대로 저장되었음
	MultipartRequest mr = new MultipartRequest(request, saveDirectory, maxPostSize, encoding);
	
	//2. 새로운 파일명 생성
	String fileName = mr.getFilesystemName("attachedFile");	// 현재 파일 이름
	String ext = fileName.substring(fileName.lastIndexOf(".")); // 파일의 확장자 추출
	String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
	String newFileName = now + ext;	// 새로운 파일 이름("업로드 일시.확장자")
	
	//3. 파일명 변경
	File oldFile = new File(saveDirectory + File.separator + fileName);
	File newFile = new File(saveDirectory + File.separator + newFileName);
	oldFile.renameTo(newFile);
	
	//4. 다른 폼값 받기
	String name = mr.getParameter("name");
	String title = mr.getParameter("title");
	String[] cateArray = mr.getParameterValues("cate");
	StringBuffer cateBuf = new StringBuffer();
	if(cateArray == null){
		cateBuf.append("선택 없음");
	}else{
		for(String s : cateArray){
			cateBuf.append(s + ", ");
		}
	}
	
	//5. DTO 생성
	MyfileDTO dto = new MyfileDTO();
	dto.setName(name);
	dto.setTitle(title);
	dto.setCate(cateBuf.toString());
	dto.setOfile(fileName);
	dto.setSfile(newFileName);
	
	//6. DAO 를 통해 데이터베이스에 반영
	MyfileDAO dao = new MyfileDAO();
	dao.insertFile(dto);
	dao.close();
	
	//7. 파일 목록 JSP로 리다이렉션
	// 파일 저장에 성공했다면 FileList.jsp 로 이동
	response.sendRedirect("FileList.jsp");
	
	
}catch(Exception e){
	e.printStackTrace();
	// 저장에 실패하면 경고 메시지를 request 영역에 저장한 후
	// FileUploadMain.jsp 로 포워드
	request.setAttribute("errorMessage", "파일 업로드 오류"	);
	request.getRequestDispatcher("FileUploadMain.jsp").forward(request, response);
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>