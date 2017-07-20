package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.service;
import beans.Manager;

public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("doget");
		doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {	
		System.out.println("dopost");
		int i=0;
		service service = new service();
		Manager manager = new Manager();
		manager.setMname(req.getParameter("name"));
		manager.setMpwd(req.getParameter("password"));
		System.out.println(manager.getMname()+"==="+manager.getMpwd());
		try {
			i=service.queryManager(manager);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (i==1){
			//返回登录成功
			req.getRequestDispatcher("/PersonalInfo.jsp").forward(req, resp);
		}else{
			//设置弹窗，登录失败
			PrintWriter out = resp.getWriter();
			out.print("false");
			/*req.getRequestDispatcher("/Login.jsp").forward(req, resp);*/
		}
	}
	
	
}
