package model1.board;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class BoardDAO extends JDBConnect {
	public BoardDAO(ServletContext application) {
		//application ���� ��ü�� ���� web.xml �� �����ص�
		//����Ŭ ���� ������ ������ DB ����
		super(application);
	}
	
	//�˻� ���ǿ� �´� �Խù��� ������ ��ȯ
	//�Ű������� �Խù� �˻��� ���� ����(�˻���)�� �������
	public int selectCount(Map<String, Object> map) {
		int totalCount = 0;
		
		//�Խù� ���� ������ ������ �ۼ�
		String query = "SELECT COUNT(*) FROM board";
		if(map.get("searchWord") != null) {
			query += " WHERE " + map.get("searchFiled") + " "
					+ " LIKE '%" + map.get("searchWord") + "%'";
		}
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			rs.next(); //Ŀ���� ù ��° ������ �̵�
			//SELECT COUNT(*) FROM board �� ù ��° �÷��� ������ = �Խù� ��
			totalCount = rs.getInt(1);	
		}catch(Exception e) {
			System.out.println("�Խù� ���� ���ϴ� �� ���� �߻�");
			e.printStackTrace();
		}
		
		return totalCount;	//jsp �� ��ȯ
	}
	
	
	//�˻� ���ǿ� �´� �Խù� ����� ��ȯ
	public List<BoardDTO> selectList(Map<String, Object>map){
		List<BoardDTO> bbs = new Vector<BoardDTO>();
		
		String query = "SELECT * FROM board ";
		if(map.get("searchWord") != null) {
			query += " WHERE " + map.get("searchField") + " "
					+ " LIKE '%" + map.get("searchWord") + "%'";
		}
		query += " ORDER BY num DESC ";
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id"));
				dto.setVisitcount(rs.getString("visitcount"));

				bbs.add(dto);
				
			}
		}catch(Exception e) {
			System.out.println("�Խù� ��ȸ �� ���� �߻�");
			e.printStackTrace();
		}
		
		return bbs;
	}
	
	//�˻� ���ǿ� �´� �Խù� ����� ��ȯ(����¡ ó�� ����)
	public List<BoardDTO> selectListPage(Map<String, Object> map){
		//���(�Խù� ���)�� ���� ����
		List<BoardDTO> bbs = new Vector<BoardDTO>();
		
		String query = " SELECT * FROM ( "
					+ " 	SELECT tb.*, ROWNUM rNUM FROM ("
					+ "			SELECT * FROM board	";
		
		// �˻����� �߰�
		if(map.get("searchWord") != null) {
			query += " WHERE " + map.get("searchField") + " "
					+ " LIKE '%" + map.get("searchWord") + "%'";
		}
		
		query += " ORDER BY num DESC "
				+ " )TB"
				+ " ) "
				+ " WHERE rNum BETWEEN ? AND ?";
		
		try {
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, map.get("start").toString());
			psmt.setString(2, map.get("end").toString());
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id"));
				dto.setVisitcount(rs.getString("visitcount"));

				bbs.add(dto);
				
			}
			
		}catch(Exception e) {
			System.out.println("�Խù� ��ȸ �� ���� �߻�");
			e.printStackTrace();
		}
		
		return bbs;
	}
	
	
	//�Խñ� �����͸� �޾� DB�� �߰��մϴ�.
	public int insertWrite(BoardDTO dto) {
		int result = 0;
		
		try {
			String query = "INSERT INTO board ( "
						+ " num, title, content, id, visitcount) "
						+ " VALUES ( "
						+ " seq_board_num.NEXTVAL, ?, ?, ?, 0)";
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getId());
			
			result = psmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("�Խù� �Է� �� ���� �߻�");
			e.printStackTrace();
		}
		
		return result;
	}
	
	// ������ �Խù��� ã�� ������ ��ȯ�մϴ�.
	public BoardDTO selectView(String num) {
		BoardDTO dto = new BoardDTO();
		
		String query = "SELECT B.*, M.name "
					+ " FROM member M INNER JOIN board B "
					+ " ON M.id=B.id "
					+ " WHERE num=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, num);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id"));
				dto.setVisitcount(rs.getString("visitcount"));
				dto.setName(rs.getString("name"));
			}
		}catch(Exception e) {
			System.out.println("�Խù� �󼼺��� �� ���� �߻�");
			e.printStackTrace();
		}
		return dto;
	}
	
	//������ �Խù��� ��ȸ���� 1 ������Ų��.
	public void updateVisitCount(String num) {
		String query = " UPDATE board SET "
					+ " visitcount=visitcount+1 "
					+ " WHERE num=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, num);
			rs = psmt.executeQuery();
		}catch(Exception e) {
			
		}
	}
	
	//������ �Խù��� �����մϴ�.
	public int updateEdit(BoardDTO dto) {
		int result = 0;
		
		try {
			String query = " UPDATE board SET "
						+ " title=?, content=? "
						+ " WHERE num=? ";
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getNum());
			
			result = psmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("�Խù� ���� �� ���� �߻�");
			e.printStackTrace();
		}
		
		return result;
	}
	
	// ������ �Խù� ����
	public int deletePost(BoardDTO dto) {
		int result = 0;
		
		try {
			String query = " DELETE board WHERE num=? ";
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getNum());
			
			result = psmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("�Խù� ���� �� ���� �߻�");
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	
	
	
	
	
	
}
