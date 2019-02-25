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
Congratulations you have passed!
<form>
<input type="text" name="option" Readonly value=<%=Result%> >
</form>
</body>
</html>