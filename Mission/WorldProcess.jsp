<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	<%
		//String qnumber = request.getParameter("qnumber");
		String val = request.getParameter("val");
			
		Connection con = null;
		PreparedStatement psmt= null;
		ResultSet rs = null;
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/world";
		String id = "root";
		String pwd = "0115";
		String sql = "";
		int num = 1; //Integer.parseInt(qnumber);
		
		
		switch(num) {
			case 1 : sql = "select * from city where population > ?  ";
					 psmt = con.prepareStatement(sql);
					 int value = Integer.parseInt(val);
					 psmt.setInt(1, value);
					 rs = psmt.executeQuery();
					 break;
			case 2 : sql = "select * from city";
			 		 break;
			case 3 : sql = "select * from city";
					 break;
			case 4 : sql = "select * from city";
					 break;
			case 5 : sql = "select * from city";
					 break;
			case 6 : sql = "select * from city";
					 break;
			case 7 : sql = "select * from city";
					 break;
			case 8 : sql = "select * from city";
					 break;
			case 9 : sql = "select * from city";
					 break;
			case 10 : sql = "select * from city";
					 break;
		}
		

		
		
		
		JDBConnect jdbc = new JDBConnect();
		con = DriverManager.getConnection(url,id,pwd);
		
		
		ResultSetMetaData rsmd = rs.getMetaData();
		int columnCount = rsmd.getColumnCount();
	%>
	
	<table>
		<tr>
		<%for (int i = 1; i <= columnCount; i++) { %>
                <th><%= rsmd.getColumnName(i) %></th>
		<% } %>
		</tr>
	
	<% while (rs.next()) { // 다음 행으로 이동 (성공하면 true) %>
           
         <tr>
			<% for (int i = 1; i <= columnCount; i++) { %>
            	<td><%= rs.getString(i) %></td> <%-- 현재 행의 i번째 열 값을 가져옴 --%>
			<% } %>
         </tr>
	<% } %>
	
	</table>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

</body>
</html>