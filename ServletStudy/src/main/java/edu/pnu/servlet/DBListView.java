package edu.pnu.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DBListView")
public class DBListView extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String sName = req.getParameter("tname");
		
		req.setAttribute("list", sName);
		
		req.getRequestDispatcher("DBListView.jsp")
			.forward(req, resp);
	
		
	}
}
