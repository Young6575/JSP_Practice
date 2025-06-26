<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Member 입력</h2>
	
	<form action = "ExeUpdate2.jsp">
	아이디  <input type="text" name="userId"> <br/>
    비밀번호 <input type="password" name="userPw"> <br/>
    이름    <input type="text" name="userName"> <br/>
	<input type="submit" value="추가하기">
	</form>
	
	<br/> 
	<br/> 
	
	<div>
		  <jsp:include page="ExeQuery.jsp" />
	</div>
</body>
</html>