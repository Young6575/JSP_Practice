<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String val = request.getParameter("val");
int dan = 2;
if (val != null) dan = Integer.parseInt(val);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("<h2>" + dan + "단 입니다.</h2>");

	for (int j=1;j<=9;j++){
		out.println(dan +"x" +j + "=" +  (dan*j) + "<br>");
	}
%>


</body>
</html>