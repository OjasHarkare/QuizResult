<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Test</title>
</head>
<body>
<%
	HttpSession sess=request.getSession();
	String test_id1 =(String)sess.getAttribute("test_id");
	sess.setAttribute("test_id", test_id1);
	sess.setAttribute("jsp_page", "admin_createtest.jsp");
	sess.setAttribute("exception_page", "admin_createtest.jsp");
%>
<h1>Create Test</h1>
 <form action = "insert_ques" method = "post">
Question : <input type="text" value="" name="ques"><br>
Option 1 : <input type="text" value="" name="op1"><br>
Option 2 : <input type="text" value="" name="op2"><br>
Option 3 : <input type="text" value="" name="op3"><br>
Option 4 : <input type="text" value="" name="op4"><br>
Correct answer : <input type="text" value="" name="ansop">
<input type="Submit" value="Insert" name="insert_data">
</form>
 <form action = "adminLogin.jsp" method = "post">
<center><input type="Submit" value="Submit" name="submit_data"></center></form>
</body>
</html>