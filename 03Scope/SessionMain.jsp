<%@ page import="common.Person"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<%
ArrayList<String> lists = new ArrayList<String>();
lists.add("리스트");
lists.add("컬렉션");

ArrayList<Person> persons = new ArrayList<>();
Person p = new Person("홍",11);
persons.add(p);
persons.add(new Person("Kim",14));

session.setAttribute("lists", lists);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 영역</title>
</head>
<body>
	<h2>페이지 이동 후 session 영역의 속성 읽기</h2>
	<a href="SessionLocation.jsp">SessionLocation.jsp 바로가기</a><br/>
	<% 
		for (String str2 : lists)
		out.println(str2 + "<br/>");
	%>	
</body>
</html>