package servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import membership.MemberDAO;
import membership.MemberDTO;

public class MemberAuth extends HttpServlet{
	MemberDAO dao;
	
	@Override
	public void init() throws ServletException{
		// application ���� ��ü ���
		ServletContext application = this.getServletContext();
		
		//web.sml ���� DB ���� ���� ���
		String driver = application.getInitParameter("OracleDriver");
		String connectUrl = application.getInitParameter("OracleURL");
		String oId = application.getInitParameter("OracleId");
		String oPass = application.getInitParameter("OraclePwd");
		
		//DAO ����
		dao = new MemberDAO(driver, connectUrl, oId, oPass);
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException{
		
		// ���� �ʱ�ȭ �Ű��������� ������ ID �ޱ�
		String admin_id = this.getInitParameter("admin_id");
		
		//������ ��û�� ID/�н�����
		//jsp ���� �谳������ ������
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");
		
		//ȸ�� ���̺��� ���� ��û�� ID/�н����忡 �ش��ϴ� ȸ�� ã��	// �ٷ� ������ �޾ƿ�
		MemberDTO memberDTO = dao.getMemberDTO(id, pass);
		
		// ã�� ȸ���� �̸��� ���� ó��
		String memberName = memberDTO.getName();	// id/pw �� ã�� dto ���� �̸��� ������
		if(memberName != null) {
			req.setAttribute("authMessage",  memberName + " ȸ���� ��2");
		}else { // ��ġ�ϴ� ȸ���� ���ٸ� => ������ or ȸ���� �ƴ�
			if(admin_id.equals(id)) {	//������ Ȯ��
				req.setAttribute("authMessage", admin_id + " �� �ְ� �������Դϴ�.");
			}else {
				req.setAttribute("authMessage", "���ϴ� ȸ���� �ƴմϴ�.");
			}
		}
		req.getRequestDispatcher("/13Servlet/MemberAuth.jsp").forward(req, resp);
		
	}
	
	@Override
	public void destroy() {
		dao.close();
	}
	
}
