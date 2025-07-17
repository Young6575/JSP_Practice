package fileupload;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.Vector;

import common.JDBConnect;

public class MyFileDAO extends JDBConnect {
	PreparedStatement psmt = null;
	Statement stmt = null;
	ResultSet rs= null;
	
	public int insertFile(MyFileDTO dto) {
		int applyresult = 0;
		
		
		try {
			String query = "insert into myfile ( "
					+ " title, cate, ofile, sfile) "
					+ " values ( "
					+ " ?, ?, ?, ? ) ";
			
			psmt = getCon().prepareStatement(query);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getCate());
			psmt.setString(3, dto.getOfile());
			psmt.setString(4, dto.getSfile());
			applyresult = psmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("inserfile 중 오류입니다.");
			e.printStackTrace();
		}
		
		return applyresult;
		
	}
		
		public List<MyFileDTO> myFileList() {
			List<MyFileDTO> fileList = new Vector<MyFileDTO>();
			
			String query = "select * from myfile order by idx desc";
			try {
				stmt = getCon().createStatement();
				rs = stmt.executeQuery(query);
				
				while(rs.next()) {
					MyFileDTO dto = new MyFileDTO();
					dto.setIdx(rs.getString(1));
					dto.setTitle(rs.getString(2));
					dto.setCate(rs.getString(3));
					dto.setOfile(rs.getString(4));
					dto.setSfile(rs.getString(5));
					dto.setPostdate(rs.getString(6));
					
					fileList.add(dto);
				}
				
			} catch (Exception e) {
				System.out.println("select 시 예외 발생");
				e.printStackTrace();
			}
			
			return fileList;
			
		}
		
		
		
		
		
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
