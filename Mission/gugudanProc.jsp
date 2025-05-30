<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

String select = request.getParameter("sel");
String value = request.getParameter("val");
String url="";

if (select.equals("sel1")) url = "gugudan1.jsp";
else if (select.equals("sel2")) url = "gugudan2.jsp";
else if (select.equals("sel3")) {url = "gugudan3.jsp" + "?val=" + value; }
else if (select.equals("sel4")) url = "gugudan4.jsp" + "?val=" + value;;

request.getRequestDispatcher(url).forward(request,response);



%>    
    