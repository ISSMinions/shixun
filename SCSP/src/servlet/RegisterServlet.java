package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import beans.Manager;
import service.service;


public class RegisterServlet extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		service service =new service();
		String name = req.getParameter("name");
		String pwd = req.getParameter("password");
		String invitePwdTest="666666";
		System.out.println(name+"==="+pwd);
		String invitePwd=req.getParameter("invitePwd");
		if( invitePwd.equals(invitePwdTest)){		
		Manager manager = new Manager();
		manager.setMname(name);
		manager.setMpwd(pwd);
		
		int i=0;
		try {
			i = service.addManager(manager); 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(i==1){
			req.getRequestDispatcher("/Login.jsp").forward(req, resp);
		}else{
			
			req.getRequestDispatcher("/Register.jsp").forward(req, resp);
		}
		
		}
		else{
			req.getRequestDispatcher("/Register.jsp").forward(req, resp);

		}
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {		
	}
	
}
