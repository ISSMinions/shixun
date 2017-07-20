package servlet;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.question_imfor;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import service.service;

public class Manager_servlet extends HttpServlet {

	/**
		 * The doPost method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to post.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out =response.getWriter();

		JSONArray array=new JSONArray();
		String question_id=request.getParameter("questionID");
		service service = new service();
		List<question_imfor> list=service.count_option(question_id);
		for(int i=0;i<list.size();i++)
		{		JSONObject object=new JSONObject();
			object.put("name", list.get(i).answer_num);
			object.put("value", list.get(i).count_num);
			array.add(object);
		}
		/*JSONObject object=new JSONObject();
		object.put("a", "a");
		object.put("n", "1");
		array.add(object);
		JSONObject object2=new JSONObject();
		object2.put("a", "b");
		object2.put("n", "2");
		array.add(object2);*/
	out.print(array);
	if (out!=null)out.close();


	}

}
