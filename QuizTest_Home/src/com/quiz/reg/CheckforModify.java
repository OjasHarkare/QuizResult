package com.quiz.reg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CheckforModify
 */
@WebServlet("/CheckforModify")
public class CheckforModify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckforModify() {
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

		String test_id = request.getParameter("modify_test_id");
		HttpSession session = request.getSession();
		session.setAttribute("modify_test_id", test_id);
		
		//System.out.println(test_id);
		try{  
			Class.forName("oracle.jdbc.driver.OracleDriver");  	
			java.sql.Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
			Statement st = con.createStatement();
			st.executeQuery("SELECT * FROM " + test_id);
			
			RequestDispatcher req = request.getRequestDispatcher("admin_modifytest.jsp");
			req.forward(request, response);
			
			}         
			catch (Exception e2) {
				
				out.println("<meta http-equiv='refresh' content='3;URL=adminLogin.jsp'>");
	         out.println("<p style='color:red;'>Invalid Test ID</p>");;
		
			}
	}

}
