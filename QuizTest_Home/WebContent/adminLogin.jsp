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
<title>Admin login</title>
</head>
<body>
<center>
<h1>Admin</h1>

 <form action = "createtest" method = "post"><table><tr>
 <td>Enter test ID to Create Test : </td><td><input type="text" name="test_id" class = "text5 text5"></td> 
<td><input type="submit" value="Create Test" class = "button button4"></td></tr></table></form>

 <form action = "deletetest" method = "post"><table><tr>
 <td>Enter test ID to Delete Test : </td><td><input type="text" name="delete_test_id" class = "text5 text5"></td>  
<td><input type="submit" value="Delete Test"  class = "button button4"></td></tr></table></form>

 <form action = "CheckforModify" method = "post"><table><tr>
 <td>Enter test ID to Modify Test : </td><td><input type="text" name="modify_test_id" class = "text5 text5"></td>
<td><input type="submit" value="Modify Test" class = "button button4"></td></tr></table></form>
</center>
</body>
</html>