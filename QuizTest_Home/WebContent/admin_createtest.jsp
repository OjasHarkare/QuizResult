<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.button {
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
   
}.button4 {border-radius: 12px;}


.text {
border: 2px solid #008CBA;
    color: Black;
  padding:  28px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 18px;
  margin: 4px 2px;
  cursor: text;
}.text4 {border-radius: 12px;}


.text5 {
border: 2px solid #008CBA;
    color: Black;
  padding:  7px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  margin: 4px 2px;
  cursor: text;
}.text5 {border-radius: 12px;}

</style>
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
<table>
<tr>
<td>Question : <input type="text" value="" name="ques" class="text text4"><br></td>
</tr>
<tr>
<td>Option 1 : <input type="text" value="" name="op1" class="text5 text5"></td>
<td>Option 2 : <input type="text" value="" name="op2" class="text5 text5"></td></tr>
<tr>
<td>Option 3 : <input type="text" value="" name="op3" class="text5 text5"></td>
<td>Option 4 : <input type="text" value="" name="op4" class="text5 text5"></td></tr>
<tr>
<td>Correct :  <input type="text" value="" name="ansop" class="text5 text5"><td></tr>
</table>
<center>
<input type="Submit" value="Insert" name="insert_data" class="button button4">
</form>
 <form action = "adminLogin.jsp" method = "post" >
<center><input type="Submit" value="Submit" name="submit_data" class="button button4"></center></form>
</body>
</html>