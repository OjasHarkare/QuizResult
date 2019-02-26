<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modify Test</title>
</head>
<body>
	<h1>Modify Test</h1>

<%
	
	HttpSession sess=request.getSession();

	String test_id1 = (String)sess.getAttribute("test_id");

	if(test_id1 == null)
	{
		test_id1 = request.getParameter("modify_test_id");
	}
	sess.setAttribute("test_id", test_id1);
	System.out.println("modify_createtest : "+test_id1);
%>

	<form action="modify_add.jsp" method="post">
		<input type="submit" value="Add Question">
	</form>

	<form action="modify_delete" method="post">
		<input type = "text" value = "" name ="delete_qid">
		<input type="submit" value="Delete Question">
	</form>

	<form action="modify_before_edit" method="post">
	<input type = "text" value = "" name ="modify_qid">
		<input type="submit" value="Edit Questions">
	</form>

</body>
</html>