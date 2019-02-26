package com.quiz.reg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class modify_after_edit
 */
@WebServlet("/modify_after_edit")
public class modify_after_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public modify_after_edit() {
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
		PrintWriter out = response.getWriter();
		
		HttpSession sess = request.getSession(true);
		String test_id = (String) sess.getAttribute("test_id");
		int Tot_ques = (int)sess.getAttribute("Tot_ques");
		Object qlist1=sess.getAttribute("qlist");
		List qlist = (ArrayList)qlist1;
		String modifying_qid = (String)sess.getAttribute("modify_qid");
		
		sess.setAttribute("modify_qid", modifying_qid);
		sess.setAttribute("qlist",qlist);
        sess.setAttribute("Tot_ques", Tot_ques);
        sess.setAttribute("test_id", test_id);
		
		String qid = (String)sess.getAttribute("qid");
        String ques = (String)sess.getAttribute("ques");
        String ans = (String)sess.getAttribute("ans");
        String opt1 = (String)sess.getAttribute("opt1");
        String opt2 = (String)sess.getAttribute("opt2");
        String opt3 = (String)sess.getAttribute("opt3");
        String opt4 = (String)sess.getAttribute("opt4");
        
        
        String modify_ques = request.getParameter("question");
        String modify_op1 = request.getParameter("option1");
        String modify_op2 = request.getParameter("option2");
        String modify_op3 = request.getParameter("option3");
        String modify_op4 = request.getParameter("option4");
        String modify_ans = request.getParameter("corans");
        System.out.println("Quest : "+modify_ques);
        
       /* if(ques.equals(modify_ques) || ans.equals(modify_ans) || opt1.equals(opt1) || opt2.equals(opt2) || opt3.equals(opt3) || opt4.equals(opt4))
        {
        	RequestDispatcher rd = request.getRequestDispatcher("modify_edit.jsp");
			if (rd != null) {
				rd.forward(request, response);
			}
        }
        else
        {*/
        	try
        	{
        		Class.forName("oracle.jdbc.driver.OracleDriver");
        		java.sql.Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
				PreparedStatement pi = ((java.sql.Connection) connection).prepareStatement("UPDATE " + test_id + " SET QUES = '"+modify_ques+"', ANS = '"+modify_ans+"', OP1 = '"+modify_op1+"', OP2 = '"+modify_op2+"', OP3 = '"+modify_op3+"', OP4 = '"+modify_op4+"' WHERE QID = "+qid);
				pi.executeQuery();
				//update ojas set QUES = '4+3',OP4='7',ANS='7',OP1='3' where QID = 3
				RequestDispatcher rd = request.getRequestDispatcher("admin_modifytest.jsp");
				if (rd != null) 
				{
					rd.forward(request, response);
				}
			
        	}
        	catch(Exception e2) 
        	{
        		out.println("<meta http-equiv='refresh' content='3;URL=modfy_edit.jsp'>");
		         out.println("<p style='color:red;'>entered data invalid</p>");}
		
        		
        	}
        }
	


