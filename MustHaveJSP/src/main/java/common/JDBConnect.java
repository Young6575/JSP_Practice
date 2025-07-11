package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletContext;

public class JDBConnect {
	
	private Connection con;
	
	
	
	public void setCon(Connection con) {
		this.con = con;
	}

	public Connection getCon() {
		return con;
	}

	public JDBConnect() {
		try {
			// JDBC 드라이버 로드
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//DB에 연결
			String url = "jdbc:mysql://localhost:3306/musthave";
			String id = "musthave";
			String pwd = "tiger";
			con = DriverManager.getConnection(url, id, pwd);
			
			System.out.println("DB 연결 성공(기본 생성자)");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public JDBConnect(String driver, String url, String id, String pwd) {
		try {
			// JDBC 드라이버 로드
						Class.forName(driver);
						
						con = DriverManager.getConnection(url, id, pwd);
						
						System.out.println("DB 연결 성공(인수 생성자 1)");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public JDBConnect(ServletContext application) {
		try {
			String driver = application.getInitParameter("MySQLDriver");
			Class.forName(driver);
			
			//DB 연결
			String url = application.getInitParameter("MySQLURL");
			String id = application.getInitParameter("MySQLId");
			String pwd = application.getInitParameter("MySQLPwd");
			con = DriverManager.getConnection(url, id, pwd);
			
			System.out.println("DB 연결 성공(인수 생성자 2)");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void Insert(String id, String pass, String name) {
		try {
			String sql = "insert into member(id,pass,name) values(?, ?, ?)";
			PreparedStatement psmt = con.prepareStatement(sql);
			
			psmt.setString(1, id);
			psmt.setString(2, pass);
			psmt.setString(3, name);
			
			//쿼리 수행
			int intResult = psmt.executeUpdate();
			System.out.println(intResult + "행이 입력되었습니다.");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	//연결 해제(자원 반납)
	public void close() {
		try {
			if (con != null) con.close();
			System.out.println("JDBC 자원 해제");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
