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
  padding:  8px 50px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  margin: 4px 2px;
  cursor: text;
}.text5 {border-radius: 12px;}</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<script language=javascript>

</script>
<body>
<center>
<h1>Register</h1>
 <form action = "RegistrationController" method = "post">
<h3>Username</h3>
<input type="text" value="" name="reg_email" class = "text text5">
<h3>Password</h3>
<input type="password" value="" name="reg_password" class = "text text5"><br><br>
<input type="submit" value="Register"  class = "button button4"  /><br><br>
Already have account?
<a href="index.jsp">Sign In</a>
</form>

</center>
</body>
</html>