<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html>
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
<meta charset="ISO-8859-1">
<title>Edit Question</title>
</head>
<body>
<% 				
		        HttpSession sess=request.getSession();
				String test_id1 =(String)sess.getAttribute("modify_test_id");
				String modify_qid = (String)sess.getAttribute("modify_qid");
           
                int num=1;
            	
                Object qlist=sess.getAttribute("qlist");
                int Tot_ques = (Integer)sess.getAttribute("Tot_ques");
                int count = (int)sess.getAttribute("count");
                List qlist1= (ArrayList)qlist;
                ListIterator itr=qlist1.listIterator();
               
                
               sess.setAttribute("qlist",qlist);
               sess.setAttribute("Tot_ques", Tot_ques);
               sess.setAttribute("test_id", test_id1);
               
                              String qid=(String)itr.next(),
                 		ques=(String)itr.next(),
                 		ans=(String)itr.next(),
                 		opt1=(String)itr.next(),
                 		opt2=(String)itr.next(),
                 		opt3=(String)itr.next(),
                 		opt4=(String)itr.next();
                
                sess.setAttribute("qid", qid);
                sess.setAttribute("ques", ques);
                sess.setAttribute("ans", ans);
                sess.setAttribute("opt1", opt1);
                sess.setAttribute("opt2", opt2);
                sess.setAttribute("opt3", opt3);
                sess.setAttribute("opt4", opt4);
                
                sess.setAttribute("count", count);
                %>
<center>
<h1>Edit Question</h1>
	<form name="form1" action="modify_after_edit" method="post"	target="_self">

			<input type="hidden" name="qid" value="<%=qid %>" />
			
			<table>
<tr>
<td>Question : <textarea name="question" cols="50" rows="5"  id="question" class="text5 text5"><%=ques %></textarea><br></td>
</tr>
<tr>
<td>Option 1 : <input type="text" name="option1" class="text5 text5" value=<%=opt1%>></td>
<td>Option 2 : <input type="text" name="option2" class="text5 text5" value=<%=opt2%>></td></tr>
<tr>
<td>Option 3 : <input type="text" name="option3" class="text5 text5" value=<%=opt3%>></td>
<td>Option 4 : <input type="text" name="option4" class="text5 text5"  value=<%=opt4%>></td></tr>
<tr>
<td>Correct :  <input type="text" name="corans" class="text5 text5" value=<%=ans%>><td></tr>
</table>
			<input type="HIDDEN" name="hidden" value="<%=Integer.parseInt(modify_qid) %>" /> 
			<INPUT TYPE="submit" VALUE="modify" class="button button4">

		
	</form>
</center>
</body>
</html>