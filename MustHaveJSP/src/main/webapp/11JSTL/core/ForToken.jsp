<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - forTokens</title>
</head>
<body>
<%
String rgba = "Red,Green/Blue,Black/Yellow";
%>
	<h4>JSTL의 forTokens 태그 사용</h4>
	<c:set var="colors" value="<%= rgba %>"></c:set>
	<c:forTokens items="${colors }" delims="/," var="color">
		<span style="color: ${color}">${color} </span> <br />
	</c:forTokens>
	

</body>
</html>