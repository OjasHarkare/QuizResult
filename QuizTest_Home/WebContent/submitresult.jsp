<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>.button {
  background-color: #008CBA; 
  border: none;
  color: white;
  padding:  14px 40px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
   box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);   
}.button4 {border-radius: 12px;}</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<form action ="Displayresult" method ="post">
<%
	HttpSession sess=request.getSession();
	int Tot_ques =(int)sess.getAttribute("Tot_ques");
	int count = (int)sess.getAttribute("count");
	sess.setAttribute("Tot_ques", Tot_ques);
	sess.setAttribute("count", count);
%>
<h1 align="center">Press the submit button to view your result</h1>
<h2 align="center">All the Best..!</h2>
 <input TYPE="submit" VALUE="Submit Exam" class="button button4"/>
 </form>
 </center>
</body>
</html>