<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="common.Person"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - forEACH 2</title>
</head>
<body>
	<h4>List 컬랙션 사용하기</h4>
	<%
	LinkedList<Person> lists = new LinkedList<>();
	lists.add(new Person("맹사성",34));
	lists.add(new Person("장영실",44));
	lists.add(new Person("신숙주",54));
	%>
	<c:set var="lists" value="<%= lists %>" />
	<c:forEach items="${lists }" var="list">
	<li>
		이름 : ${list.name }, 나이 : ${list.age }
	</li>
	</c:forEach>
		
	<h4>Map 컬랙션 사용하기</h4>	
	<%
	Map<String, Person> maps = new HashMap<>();
	maps.put("1st", new Person("맹사성",34));
	maps.put("2st", new Person("장영실",44));
	maps.put("3st", new Person("신숙주",54));
	%>
	<c:set var="maps" value="<%= maps %>" />
	<c:forEach items="${maps }" var="map">
		<li>Key => ${map.key } <br />
			Value => 이름 : ${map.value.name }, 나이 : ${map.value.age }
		</li>
	</c:forEach>	
	
	
</body>
</html>