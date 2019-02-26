<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	HttpSession sess=request.getSession();
	String test_id1 =(String)sess.getAttribute("modify_test_id");
	sess.setAttribute("test_id", test_id1);
	sess.setAttribute("jsp_page", "modify_add.jsp");
	sess.setAttribute("exception_page", "admin_modifytest.jsp");
	
%>
<h1>Add Ques</h1>
 <form action = "insert_ques" method = "post">
Question : <input type="text" value="" name="ques"><br>
Option 1 : <input type="text" value="" name="op1"><br>
Option 2 : <input type="text" value="" name="op2"><br>
Option 3 : <input type="text" value="" name="op3"><br>
Option 4 : <input type="text" value="" name="op4"><br>
Correct answer : <input type="text" value="" name="ansop">
<input type="Submit" value="Insert" name="insert_data">
</form>
 <form action = "admin_modifytest.jsp" method = "post">
<center><input type="Submit" value="Submit" name="submit_data"></center></form>
</body>
</html>