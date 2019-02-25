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
	String Result =(String)sess.getAttribute("result");
%>
Sorry, but you couldn't pass the exam..
Better luck next time
<input type="text" name="option" Readonly value=<%=Result%> >
</body>
</html>