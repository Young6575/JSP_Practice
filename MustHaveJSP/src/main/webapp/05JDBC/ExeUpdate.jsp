<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@page import="org.apache.tomcat.dbcp.dbcp2.PStmtKey"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 추가 테스트</h2>

	<%
		JDBConnect jdbc = new JDBConnect();
	
		String id = "test4";
		String pass = "44444";
		String name = "테스트4회원";
		
		//쿼리문 생성
		String sql = "insert into member(id,pass,name) values(?, ?, ?)";
		PreparedStatement psmt = jdbc.getCon().prepareStatement(sql);
		psmt.setString(1, id);
		psmt.setString(2, pass);
		psmt.setString(3, name);
		
		//쿼리 수행
		int intResult = psmt.executeUpdate();
		out.println(intResult + "행이 입력되었습니다.");
		
		psmt.close();
		jdbc.close();
	%>
	
	<%--
		JDBConnect jdbc = new JDBConnect();
		jdbc.Insert("test3", "3", "테스트회원3");
	--%>
	
	
</body>
</html>