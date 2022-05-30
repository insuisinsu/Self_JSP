package model1.board;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class BoardDAO extends JDBConnect {
	public BoardDAO(ServletContext application) {
		//application 내장 객체를 통해 web.xml 에 정의해둔
		//오라클 접속 정보를 가져와 DB 연결
		super(application);
	}
	
	//검색 조건에 맞는 게시물의 개수를 반환
	//매개변수에 게시물 검색을 위한 조건(검색어)이 담겨있음
	public int selectCount(Map<String, Object> map) {
		int totalCount = 0;
		
		//게시물 수를 얻어오는 쿼리문 작성
		String query = "SELECT COUNT(*) FROM board";
		if(map.get("searchWord") != null) {
			query += " WHERE " + map.get("searchFiled") + " "
					+ " LIKE '%" + map.get("searchWord") + "%'";
		}
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			rs.next(); //커서를 첫 번째 행으로 이동
			//SELECT COUNT(*) FROM board 의 첫 번째 컬럼을 가져옴 = 게시물 수
			totalCount = rs.getInt(1);	
		}catch(Exception e) {
			System.out.println("게시물 수를 구하는 중 예외 발생");
			e.printStackTrace();
		}
		
		return totalCount;	//jsp 로 반환
	}
	
	
	//검색 조건에 맞는 게시물 목록을 반환
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
			System.out.println("게시물 조회 중 예외 발생");
			e.printStackTrace();
		}
		
		return bbs;
	}
	
	//검색 조건에 맞는 게시물 목록을 반환(페이징 처리 지원)
	public List<BoardDTO> selectListPage(Map<String, Object> map){
		//결과(게시물 목록)을 담을 변수
		List<BoardDTO> bbs = new Vector<BoardDTO>();
		
		String query = " SELECT * FROM ( "
					+ " 	SELECT tb.*, ROWNUM rNUM FROM ("
					+ "			SELECT * FROM board	";
		
		// 검색조건 추가
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
			System.out.println("게시물 조회 중 예외 발생");
			e.printStackTrace();
		}
		
		return bbs;
	}
	
	
	//게시글 데이터를 받아 DB에 추가합니다.
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
			System.out.println("게시물 입력 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}
	
	// 지정한 게시물을 찾아 내용을 반환합니다.
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
			System.out.println("게시물 상세보기 중 예외 발생");
			e.printStackTrace();
		}
		return dto;
	}
	
	//지정한 게시물의 조회수를 1 증가시킨다.
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
	
	//지정한 게시물을 수정합니다.
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
			System.out.println("게시물 수정 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}
	
	// 지정한 게시물 삭제
	public int deletePost(BoardDTO dto) {
		int result = 0;
		
		try {
			String query = " DELETE board WHERE num=? ";
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getNum());
			
			result = psmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("게시물 삭제 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	
	
	
	
	
	
}
