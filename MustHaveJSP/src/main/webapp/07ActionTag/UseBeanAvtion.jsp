<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그 - UseBean</title>
</head>
<body>
	<h2>액션 태그로 폼값 한번에 받기</h2>
	<jsp:useBean id="person" class="common.Person" />
	<jsp:setProperty property="*" name="person"/>
	<jsp:setProperty property="name" name="person" value=""/>
	
	<ul>
		<li>이름 : <jsp:getProperty property="name" name="person"/> </li>
		<li>나이 : <jsp:getProperty property="age" name="person"/> </li>
	
	</ul>
</body>
</html>