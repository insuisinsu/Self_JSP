<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<table border="1" width="90%">
	<tr>
		<td align="center">
		<!-- �α��� ���ο� ���� �޴� ��ȭ -->
		<% if(session.getAttribute("UserId") == null) { %>
			<a href="../06Session/LoginForm.jsp">�α���</a>
		<%	} else { %>
			<a href="../06Session/Logout.jsp">�α׾ƿ�</a>
		<%  } %>
		&nbsp;&nbsp;&nbsp;
		<a href="../08Board/List.jsp"> �Խ���(����¡x)</a>
		&nbsp;&nbsp;&nbsp;
		<a href="../08PagingBoard/List.jsp"> �Խ���(����¡O)</a>
		</td>
	</tr>
</table>