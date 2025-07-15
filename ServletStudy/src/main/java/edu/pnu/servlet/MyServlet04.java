package edu.pnu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/MyServlet04")
public class MyServlet04 extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	String[] c1 = {"대한민국", "미국","일본","중국"};
	String[] c2 = {"서울", "워싱턴", "도쿄", "베이징"};

	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.println("<h2> 나라 정보<h2>");
		out.println("<table style='border: 1px solid black; border-collapse: collapse;'>");
		out.println("<tr style='border: 1px solid black;'>"
				+ "<td style='border: 1px solid black;'>번호</td>"
				+ "<td style='border: 1px solid black;'>나라</td>"
				+ "<td style='border: 1px solid black;'>수도</td>"
				+ "</tr>");
		
		for (int i=0; i<4; i++) {
			int j = i+1;
			out.println("<tr style='border: 1px solid black;'>");
			out.println("<td style='border: 1px solid black;'>" + j + "</td>");
			out.println("<td style='border: 1px solid black;'>"+ c1[i] +"</td>");
			out.println("<td style='border: 1px solid black;'>"+ c2[i] +"</td>");
			
			out.println("</tr>");
		}
		
				
		out.println("</table>");
	}

}
