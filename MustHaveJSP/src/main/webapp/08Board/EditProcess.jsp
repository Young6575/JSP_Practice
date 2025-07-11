<%@page import="model1.board.BoardDAO"%>
<%@page import="model1.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp" %>
<%
String num = request.getParameter("num");
String title = request.getParameter("title");
String content = request.getParameter("content");

BoardDTO dto = new BoardDTO();

dto.setNum(num);
dto.setTitle(title);
dto.setContent(content);

//DB에 반영

BoardDAO dao = new BoardDAO(application);

int result = dao.updateEdit(dto);
dao.close();

if (result == 1) {
	//  성공 시 상세보기 페이지로 이동
	response.sendRedirect("View.jsp?num=" + dto.getNum());
}
else {
	JSFunction.alertBack("수정하기 실패하였습니다", out);
}
%>
