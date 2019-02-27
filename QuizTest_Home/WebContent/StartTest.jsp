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

<title>StartTest</title>
</head>
<body>
<center>
<h1>Start Test</h1>
<form action = "StartTest" method = "post">
 Enter Test ID to start the test : <input type="text" name="test_id" class = "test5 text5"> <br>
<br><input type="submit" value="Start Test" class = "button button4"></form>
</center>
</body>
</html>