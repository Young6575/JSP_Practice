<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="gugudanProc.jsp">
		<input type="radio" name="sel" value="sel1" checked>Type1 : 세로<br/>
		<input type="radio" name="sel" value="sel2">Type2 : 가로<br/>
		<input type="radio" name="sel" value="sel3">Type3 : 하나만 출력<br/>
		<input type="radio" name="sel" value="sel4">Type4 : 여러개씩 묶어서 출력<br/>
		<input type="text"  name="val" value="">단수/열수
		<input type="submit" value="select">
	</form>

</body>
</html>