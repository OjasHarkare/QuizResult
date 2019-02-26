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
 * Servlet implementation class modify_delete
 */
@WebServlet("/modify_delete")
public class modify_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public modify_delete() {
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
		String delete_qid = request.getParameter("delete_qid");
		System.out.println(delete_qid);
		HttpSession sess=request.getSession();
		String test_id =(String) sess.getAttribute("test_id");
		sess.setAttribute("test_id", test_id);
		
		
		try 
		{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			
			java.sql.Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
			System.out.println(test_id);
	        PreparedStatement preparedStatement = null;
			preparedStatement = connection.prepareStatement("DELETE FROM " + test_id + " WHERE QID = " + delete_qid);
			preparedStatement.executeQuery();
			System.out.println("Ques Deleted");
			RequestDispatcher req = request.getRequestDispatcher("admin_modifytest.jsp");
			req.forward(request, response);
		}
		
		catch(Exception e2) 
		{
			System.out.println(e2);
			out.println("<meta http-equiv='refresh' content='3;URL=admin_modifytest.jsp '>");
			out.println("<p style='color:red;'>Invalid Question ID</p>");
		}
	}

}
