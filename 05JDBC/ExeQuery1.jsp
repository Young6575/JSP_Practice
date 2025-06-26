<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mysql.cj.x.protobuf.MysqlxSql.StmtExecute"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table  {
border: 1px solid;
border-collapse: collapse;
}
table > td,th,tr {
border: 2px solid;
padding: 4px 10px;

}

</style>

</head>
<body>
	<h2>회원 목록 조회 테스트</h2>
	<%
		JDBConnect jdbc = new JDBConnect();
		
		String sql = "select * from board";
		Statement stmt = jdbc.getCon().createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		out.println("<table>");
		
		out.println("<tr>");
		out.println("<th>num</th>");
		out.println("<th>title</th>");
		out.println("<th>cotent</th>");
		out.println("<th>id</th>");
		out.println("<th>postdate</th>");
		out.println("<th>visitcount</th>");
		out.println("</tr>");
		
		
		while (rs.next()) {
			out.println("<tr>");
			Integer num = rs.getInt(1);
			String title = rs.getString(2);
			String cotent = rs.getString(3);
			String id = rs.getString(4);
			String postdate = rs.getString(5);
			Integer visitcount = rs.getInt(6);
			
			out.println(String.format("<td>%d</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td><td>%d</td>",
					num, title, cotent, id, postdate, visitcount));
			out.println("<tr>");
		}
		out.println("</table>");
		
		
		rs.close();
		stmt.close();
		jdbc.close();
	
	%>
	
	<br/>
	<form action="ExeUpdateFormBoard.jsp">
	<input type="submit" value="홈으로">
	</form>
	
	
</body>
</html>