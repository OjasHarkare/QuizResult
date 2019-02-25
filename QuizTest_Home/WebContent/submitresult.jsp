<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action ="Displayresult" method ="post">
<%
	HttpSession sess=request.getSession();
	int Tot_ques =(int)sess.getAttribute("Tot_ques");
	int count = (int)sess.getAttribute("count");

	sess.setAttribute("Tot_ques", Tot_ques);
	sess.setAttribute("count", count);
%>

Please press the submit button to view your result.
 <input TYPE="submit" VALUE="Submit Exam"/>
</form>
</body>
</html>