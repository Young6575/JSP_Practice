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
	<h2>게시판 추가 테스트</h2>

	<%
		JDBConnect jdbc = new JDBConnect();
	
	
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String userId = request.getParameter("userId");
		
		//쿼리문 생성
		String sql = "insert into  board(title,content,id) values(?, ?, ?)";
		PreparedStatement psmt = jdbc.getCon().prepareStatement(sql);
		psmt.setString(1, title);
		psmt.setString(2, content);
		psmt.setString(3, userId);
		
		//쿼리 수행
		int intResult = psmt.executeUpdate();
		out.println(intResult + "행이 입력되었습니다.");
		
		psmt.close();
		jdbc.close();
		
		  response.sendRedirect("ExeQuery1.jsp");
	%>
	
	<%--
		JDBConnect jdbc = new JDBConnect();
		jdbc.Insert("test3", "3", "테스트회원3");
	--%>
	
	
</body>
</html>