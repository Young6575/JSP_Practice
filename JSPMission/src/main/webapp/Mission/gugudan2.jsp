<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

 <style>
 table {
 border:1px solid;
 border-collapse: collapse;
 }
 td, tr {
 border:1px solid;
 padding: 4px 10px;
 }
 .title {
 text-align: center;
 background-color: lightgray;
 }
 
 </style>

<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
<%
	out.println("<table>");
	out.println("<tr class=title>");

	for (int i=2;i<=9;i++){
		out.println("<td>" +i + "단</td>");
	} 
	out.println("</tr>");
	
	for (int i=1;i<=9;i++){
		out.println("<tr>");
		for (int j=2;j<=9;j++){
			out.println("<td>" +j +"*" +i +"="+i*j+ "</td>");
		}
		out.println("</tr>");
	}
	
	out.println("</table>");
%>
	
</body>
</html>