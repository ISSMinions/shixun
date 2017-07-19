/*package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.service;

public class Analyse extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {		
		service service =new service();
		int [][]Array=new int[24][8];
		try {
			Array=service.getTimes();
		} catch (SQLException e) {			
			e.printStackTrace();
		}
		req.getSession().setAttribute("report", Array);
		resp.sendRedirect("Analyse.jsp");
	}
	
}
*/