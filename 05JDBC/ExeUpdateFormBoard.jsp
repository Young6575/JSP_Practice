<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Board 입력</h2>
	
	<form action = "ExeUpdateBoard.jsp">
		
	제목    <input type="text" name="title"> <br/>
    내용    <input type="text" name="content"> <br/>
    아이디   <input type="text" name="userId"> <br/>
	<input type="submit" value="추가하기">
	</form>
	
	<br/> 
	<br/> 
	
	<div>
		  <jsp:include page="ExeQuery1.jsp" />
	</div>
</body>
</html>