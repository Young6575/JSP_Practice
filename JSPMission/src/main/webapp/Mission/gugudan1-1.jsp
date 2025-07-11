<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
String makeGugudan(int dan) {
	StringBuffer sb = new StringBuffer();
	for (int j = 1; j<=9; j++){
		sb.append(String.format("%d X %d = %d<br/>", dan, j, dan * j));
	} return sb.toString();
	
	
}

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 미션</title>
</head>
<body>
<%
for (int i =2; i<=3; i++) {
	out.println(String.format("<h2>%d 단</h2>",i));
	out.println(makeGugudan(i));
	out.println("<br/>");
}
%>



</body>
</html>