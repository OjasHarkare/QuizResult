package com.quiz.reg;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Displayresult
 */
@WebServlet("/Displayresult")
public class Displayresult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Displayresult() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		HttpSession sess=request.getSession();
		
		Double Tot_ques= new Double((int)sess.getAttribute("Tot_ques"));
		Double count= new Double((int)sess.getAttribute("count"));
		
		double percentage = (count/Tot_ques)*100;
		
		if(percentage >= 70)
		{
			 sess.setAttribute("result",Double.toString(percentage));
			 RequestDispatcher rd=request.getRequestDispatcher("Passed.jsp");
	         if(rd !=null)
	         {
	             rd.forward(request, response);
	         }
		}
		else
		{
			 sess.setAttribute("result",Double.toString(percentage));
			 RequestDispatcher rd=request.getRequestDispatcher("Failed.jsp");
	         if(rd !=null)
	         {
	             rd.forward(request, response);
	         }
		}
	}

}
