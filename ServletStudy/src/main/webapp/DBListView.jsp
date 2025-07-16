<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MustHave DB</title>
</head>
<body>
	<h2>MustHave DB 출력하기</h2>
	
	<form action="DBListView" method="get">
	테이블 선택 :	<select name="tname">
					<option value="member">member</option>
					<option value="board">board</option>
				</select>
				<br/>
				<input type="submit" value="출력하기">
	</form>
	
	<div>
	 ${list }
	</div>
</body>
</html>