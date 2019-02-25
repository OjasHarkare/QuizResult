<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
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
               <textarea name="question" cols="50" rows="5"  Readonly id="question" ><%=num %>.<%=ques %>
               </textarea>
            </p>
                  <input type="hidden" name="corans" value="<%=ans %>"/>
                   
            <p>
                  A).<input type="radio" name="option" value="A" ><%=opt1%>
            </p>
            <p>
                  B).<input type="radio" name="option" value="B"><%=opt2%>
            </p>
            <p>
                  C).<input type="radio" name="option" value="C"><%=opt3%>
            </p>
            <p>
                  D).<input type="radio" name="option" value="D"><%=opt4%>
            </p>
             
            <BR/>
            <p>
                
                    <input type="HIDDEN" name="hidden" value="<%=current %>"/>                     
           			<INPUT TYPE="submit" VALUE="next" > 
           			                 
            </p>  </form>
           
          

</body>
</html>