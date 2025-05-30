<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!


%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 미션</title>
</head>
<body>
<%
for (int i =2; i<=9; i++) {
	out.println(String.format("<h2>%d 단</h2>",i));
	for (int j = 1; j<=9; j++){
		out.println(String.format("%d X %d = %d<br/>", i, j, i * j));
	}
	out.println("<br/>");
}
%>



</body>
</html>