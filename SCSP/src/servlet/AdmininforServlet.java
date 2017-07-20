package servlet;
import service.service;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class Admininfor_manage
 */
@WebServlet("/Admininfor_manage")
public class AdmininforServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdmininforServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		JSONObject object=new JSONObject();
		service service = new service();
		String adminname=request.getParameter("username");
		String nickname=request.getParameter("nickname");
		String sex=request.getParameter("sex");
		String phonenumber=request.getParameter("phonenumber");
		String email=request.getParameter("email");
		String birthday=request.getParameter("birthday");
		if (service.Changepeason_infor(adminname, nickname, sex, phonenumber, email, birthday)) {
			object.put("status", "success");
			object.put("adminname", adminname);
		}else object.put("status", "error");
		out.print(object);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		JSONObject object=new JSONObject();
		service service = new service();
		String newpwd=request.getParameter("password");
		String oldpwd=request.getParameter("oldpassword");
		String username=request.getParameter("username");
		if(service.Changesafe_infor(newpwd, oldpwd, username)){
			object.put("status", "success");
			object.put("adminname", username);
		}else 
			object.put("status", "error");
		
		out.print(object);
	}

}
