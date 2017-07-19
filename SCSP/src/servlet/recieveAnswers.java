package servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.AnswerSheet;
import service.service;

public class recieveAnswers extends HttpServlet {
	int a=0;
	
	public recieveAnswers(){
		super();		
	}
	public void init()throws ServletException{
		
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response){
		this.doPost(request,response);
		}
	public void doPost(HttpServletRequest request,HttpServletResponse response){
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		service service =new service();
		AnswerSheet answersheet=new AnswerSheet();
		answersheet.setAnswer1(request.getParameter("grade"));
		System.out.println(answersheet.getAnswer1());
		answersheet.setAnswer2(request.getParameter("city"));
		answersheet.setAnswer3(request.getParameter("sex"));
		answersheet.setAnswer4(request.getParameter("total_cost"));
		answersheet.setAnswer5(request.getParameter("cost_type"));
		answersheet.setAnswer6(request.getParameter("food_cost"));
		answersheet.setAnswer7(request.getParameter("shopping_cost"));
		answersheet.setAnswer8(request.getParameter("amusement_cost"));
		answersheet.setAnswer9(request.getParameter("study_cost"));
		answersheet.setAnswer10(request.getParameter("together_times"));
		answersheet.setAnswer11(request.getParameter("together_cost"));
		answersheet.setAnswer12(request.getParameter("isImpulse"));
		answersheet.setAnswer13(request.getParameter("isBorrowing"));
		answersheet.setAnswer14(request.getParameter("isBudget"));
		answersheet.setAnswer15(request.getParameter("isRecord"));
		answersheet.setAnswer16(request.getParameter("living_supports"));
		answersheet.setAnswer17(request.getParameter("isEnough"));
		answersheet.setAnswer18(request.getParameter("isCompare"));
		answersheet.setAnswer19(request.getParameter("factors"));
		answersheet.setAnswer20(request.getParameter("isSatisfied"));
		answersheet.setAnswer21(request.getParameter("hasLover"));
		if(answersheet.getAnswer21()=="a"){
		answersheet.setAnswer22(request.getParameter("love_cost"));
		answersheet.setAnswer23(request.getParameter("isAA"));
		answersheet.setAnswer24(request.getParameter("isIncrease"));
		}else{
			answersheet.setAnswer22(null);
			answersheet.setAnswer23(null);
			answersheet.setAnswer24(null);
			
		}		
		answersheet.setAnswer25(request.getParameter("consumption_view"));

		int a=service.addAnswerSheet(answersheet);
		if(a==1){
			//��ӳɹ�
			//��ת����¼����
			try {
				request.getRequestDispatcher("/FinishQuiz.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else{
			//���ʧ��,��ת��ע�����
			try {
				request.getRequestDispatcher("/QuestionSet.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
	}
}
