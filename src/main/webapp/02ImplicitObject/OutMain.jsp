<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
// ���� ���� �����ϱ�
out.print("��µ��� �ʴ� �ؽ�Ʈ"); 	//���ۿ� ����
out.clearBuffer();		//���۸� ���

out.print("<h2>out ���� ��ü</h2>");

//���� ũ�� ���� Ȯ�� / ������ �⺻���� 8KB
out.print("��� ������ ũ�� : " + out.getBufferSize() + "<br>");
out.print("���� ������ ũ�� : " + out.getRemaining() + "<br>");	

//���� ���� ���
out.flush();
out.print("flush �� ������ ũ�� : " + out.getRemaining() + "<br>");

//�پ��� Ÿ���� �� ���
out.print(1);
out.print(false);
out.print('��');
%>

</body>
</html>