package model1.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import common.JDBConnect;
import jakarta.servlet.ServletContext;
import utils.JSFunction;

public class BoardDAO extends JDBConnect {
	
	PreparedStatement psmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	public BoardDAO(ServletContext application) {
		super(application);
	}
	
	//검색 조건에 맞는 게시물의 개수를 반홥합니다.
	public int selectCount(Map<String, Object> map) {
		
		int totalcount =0;
		
		//게시물 수 얻어오는 쿼리문 작성
		String query = "select count(*) from board";
		if (map.get("searchWord") != null) {
			query += " where " + map.get("searchField") + " "
					+ " like '%" + map.get("searchWord") + "%'";
		}
			System.out.println(query);
		
		try {
			stmt = getCon().createStatement();
			rs = stmt.executeQuery(query);
			rs.next();
			totalcount = rs.getInt(1);
		} catch (Exception e) {
			System.out.println("게시물 수를 구하는 줄 예외 발생");
			e.printStackTrace();
		}
		System.out.println(totalcount);
		return totalcount;
	}
	
	public List<BoardDTO> selectList(Map<String, Object> map) {
		List<BoardDTO> bbs = new Vector<BoardDTO>();
		
		String query = "select * from board";
		if (map.get("searchWord") != null) {
			query += " where " + map.get("searchField") + " "
					+ "like '%" + map.get("searchWord") + "%' ";
		}
		query += " order by num desc;";
		
		try {
			stmt = getCon().createStatement();
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
			
		} catch (Exception e) {
		    System.out.println("게시물 목록 조회 중 예외 발생");
		    e.printStackTrace(); // 예외의 상세 내용을 콘솔에 출력
		}

		return bbs;
	}
	
	public int insertWrite(BoardDTO dto) {
		int result =0;
		
		
		
		try {
			String query = "INSERT INTO board ( "
						 + "title,content,id,visitcount) "
						 + "VALUES ( "
						 + " ?, ?, ?, 0)";
			
			psmt = getCon().prepareStatement(query);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getId());
			
			result = psmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("게시물 입력 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}
	
	public BoardDTO selectView(String num) {
		BoardDTO dto = new BoardDTO();
		
		// 클릭한 글의 num 가져오고, 방문수 update,  content는 view에 출력시키기
		String query = "select b.*, m.name "
					 + "from board b, member m "
					 + "where b.id = m.id "
					 + "and m.id = (select id from board where num=?)";
		
		try {
			psmt =getCon().prepareStatement(query);
			
			psmt.setString(1, dto.getNum());
			
			
			
			psmt.executeUpdate();
		
			if (rs.next()) {
				dto.setNum(rs.getString(1));
				dto.setTitle(rs.getString(2));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id"));
				dto.setVisitcount(rs.getString(6));
				dto.setName(rs.getString("name"));
			}
			
		} catch (Exception e) {
			System.out.println("게시판 상세보기 중 예외 발생");
			e.printStackTrace();
		}
		
		return dto;
	}
	
	
	public void updateVisitCount(String num) {
		
		
		String query = "update board set "
				 	 + " visitcount = visitcount + 1 "
				 	 + "where num = ? ";
		
		try {
			psmt = getCon().prepareStatement(query);
			
			psmt.setString(1, num);
			
			System.out.println(query);
			
			rs = psmt.executeQuery();
			
		} catch (Exception e) {
			System.out.println("게시물 조회수 증가 중 예외 발생");
			e.printStackTrace();
		}
		
		
	}
	
	
	
	
	
	
	
	
}

	
