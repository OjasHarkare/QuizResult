package com.quiz.reg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class modify_before_edit
 */
@WebServlet("/modify_before_edit")
public class modify_before_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public modify_before_edit() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		int Tot_ques = 0;
		HttpSession sess = request.getSession(true);
		List<Object> qlist = new ArrayList<>();
		
		String test_id = (String) sess.getAttribute("test_id");
		
		String modify_qid = request.getParameter("modify_qid");
		/*String modify_qid = (String)sess.getAttribute("modify_qid");
		if(modify_qid == null)
		{
			modify_qid = request.getParameter("modify_qid");		
		}*/
		System.out.println("Before edit qid: "+modify_qid);
		PrintWriter out = response.getWriter();
		
		
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			java.sql.Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
			PreparedStatement preparedStatement = null;
			ResultSet rs = null, resultset = null;

			PreparedStatement pi = ((java.sql.Connection) connection).prepareStatement("SELECT COUNT(QID) FROM " + test_id);
			resultset = pi.executeQuery();
			if (resultset.next())
				Tot_ques = resultset.getInt(1);
			System.out.println(Tot_ques);
			/*if (Tot_ques < Integer.parseInt(modify_qid)) {
				out.println("<meta http-equiv='refresh' content='3;URL=admin_modifytest.jsp'>");
				out.println("<p style='color:red;'>Test ID Incorrect</p>");
			} else {*/
				preparedStatement = connection.prepareStatement("SELECT * FROM " + test_id + " WHERE QID = "+ modify_qid);
				rs = preparedStatement.executeQuery();
				while (rs.next()) {
					qlist.add(rs.getString(1));
					qlist.add(rs.getString(2));
					qlist.add(rs.getString(7));
					qlist.add(rs.getString(3));
					qlist.add(rs.getString(4));
					qlist.add(rs.getString(5));
					qlist.add(rs.getString(6));
				}
				System.out.println("Question : "+qlist);
				// System.out.println(qlist);
				sess.setAttribute("test_id", test_id);
				sess.setAttribute("modify_qid", modify_qid);
				sess.setAttribute("qlist", qlist);

				sess.setAttribute("Tot_ques", Tot_ques);
				sess.setAttribute("count", 0);
				rs.close();
				preparedStatement.close();
				connection.close();
				// current = (Integer)sess.getAttribute("current");
				RequestDispatcher rd = request.getRequestDispatcher("modify_edit.jsp");
				if (rd != null) {
					rd.forward(request, response);
				}
			//}

		} catch (Exception e2) {
			System.out.println(e2);
			out.println("<meta http-equiv='refresh' content='3;URL=admin_modifytest.jsp'>");
			out.println("<p style='color:red;'>Entered QID Incorrect</p>");
		}

	}

}
