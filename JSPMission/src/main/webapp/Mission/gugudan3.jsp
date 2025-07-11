<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String val = request.getParameter("val");
int dan;
if (val == null) {
	dan =2;
}  

else dan =Integer.parseInt(val);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<h2><%=dan %> 단입니다.</h2> 

<%
for (int i = 1; i<=9; i++) {
	out.println(dan +"x" + i +"=" + (dan*i) + "<br>");
	
}

%>


</body>
</html>