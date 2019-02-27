<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" import="java.util.*" %>
<html>
<head>
<style>
/* The container */
.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
/* Hide the browser's default radio button */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}
/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
  border-radius: 50%;
}
/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}
/* When the radio button is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}
/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}
/* Show the indicator (dot/circle) when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}
/* Style the indicator (dot/circle) */
.container .checkmark:after {
 	top: 9px;
	left: 9px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: white;
}
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
  cursor: ;
   box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}.button4 {border-radius: 12px;}
.text {
border: 2px solid #008CBA;
    color: Black;
  padding:  14px 40px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: text;
}.text4 {border-radius: 12px;}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quiz</title>
</head>
<body>
<form name="form1" action="CalculateResult" method="post" target="_self">
<% 				
		        
                int current = 0;
                int num=1;
                HttpSession sess=request.getSession();
    			String test_id1 =(String)sess.getAttribute("test_id");
    			
                Object qlist=sess.getAttribute("qlist");
                int Tot_ques = (Integer)sess.getAttribute("Tot_ques");
                int count = (int)sess.getAttribute("count");
                List qlist1= (ArrayList)qlist;
                ListIterator itr=qlist1.listIterator();
               // if (request.getParameter("hidden") != null) 
               //{
               //  current = Integer.parseInt(request.getParameter("hidden"));
               // }
               current =(Integer)sess.getAttribute("hidden");
                
               sess.setAttribute("qlist",qlist);
               sess.setAttribute("Tot_ques", Tot_ques);
               sess.setAttribute("test_id", test_id1);
               
                if (current < Tot_ques)
                {
                	for (int i = 0; i < current; i++) 
                	{	
                	
                    	itr.next();
                    	itr.next();
                    	itr.next();
                    	itr.next();
                    	itr.next();
                    	itr.next();
                    	itr.next();                     
                   		num++;                    
                	} 
                	
                }
                else
                {
                	sess.setAttribute("count", count);
                	 RequestDispatcher rd=request.getRequestDispatcher("submitresult.jsp");
                     if(rd !=null)
                     {
                         rd.forward(request, response);
                     }
                }
                
                String qid=(String)itr.next(),
                 		ques=(String)itr.next(),
                 		ans=(String)itr.next(),
                 		opt1=(String)itr.next(),
                 		opt2=(String)itr.next(),
                 		opt3=(String)itr.next(),
                 		opt4=(String)itr.next();
                
                sess.setAttribute("count", count);
                %>

<p>
 				<input type="hidden" name="qid" value="<%=qid %>"/>
               <textarea name="question" cols="50" rows="5"  Readonly id="question" class="text text4"><%=num %>.<%=ques %>
               </textarea>
            </p>
                  <input type="hidden" name="corans" value="<%=ans %>"/>
                   
            <p>
            	<label class="container"><%=opt1%>
 				 <input type="radio"  name="option" value="A">
  				<span class="checkmark"></span>
				</label>
				<label class="container"><%=opt2%>
 				 <input type="radio" name="option" value="B">
  				<span class="checkmark"></span>
				</label>
					<label class="container"><%=opt3%>
 				 <input type="radio" name="option" value="C">
  				<span class="checkmark"></span>
				</label>
					<label class="container"><%=opt4%>
 				 <input type="radio" name="option" value="D">
  				<span class="checkmark"></span>
				</label>
                           
             
            <BR/>       
                
                    <input type="hidden" name="hidden" value="<%=current %>"/>
                    <input type="submit" VALUE="Next" class="button button4">      
                            
            </form>        
                <center>
            
            <form action="quiz.jsp" ></form>
            <input type="button" VALUE="Submit Exam" onclick="location.href='ResultServlet'" class="button button4"/>
	</center>
</body>
</html> 
