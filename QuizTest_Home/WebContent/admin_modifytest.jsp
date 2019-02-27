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
  font-size: 18px;
  margin: 4px 2px;
  cursor: pointer;
   box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);   
}.button4 {border-radius: 12px;}


.text5 {
border: 2px solid #008CBA;
    color: Black;
  padding:  10px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  margin: 2px 2px;
  cursor: text;
}.text5 {border-radius: 20px;}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modify Test</title>
</head>
<body>
<center>
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
		<input type="submit" value="Add Question" class="button button4"><br>
	</form>

<br><form action="modify_delete" method="post">
<table>
<tr>
<td>Enter QID to Delete Question :</td><td><input type = "text" value = "" name ="delete_qid" class = "text5 text5"></td>
	<td><input type="submit" value="Delete Question"  class="button button4"></td></tr>
	</table></form>

<br><form action="modify_before_edit" method="post">
<table>
<tr>
<td>Enter QID to Modify Question :</td><td><input type = "text" value = "" name ="modify_qid" class = "text5 text5"></td>
	<td><input type="submit" value="Edit Questions"  class="button button4"></td></tr>
	</table></form>

</center>
</body>
</html>