<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TestResult</title>
</head>
<body>
<%
	HttpSession sess=request.getSession();
	String Result =(String)sess.getAttribute("result");
%>
<h1 style="color:green" align="center" >Congratulations !</h1>
<h2 align="center">You've passed the exam by </h2>
<h2 style="text-align:center"><%=Result%></h2>
</body>
</html>