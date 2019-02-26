<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
%>
	<form name="form1" action="modify_after_edit" method="post"
		target="_self">

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
               
               /*  if (Integer.parseInt(modify_qid) < Tot_ques)
                {
                	for (int i = 0; i < Integer.parseInt(modify_qid) - 1; i++) 
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
                	 RequestDispatcher rd=request.getRequestDispatcher("modify_edit.jsp");
                     if(rd !=null)
                     {
                         rd.forward(request, response);
                     }
                } */
                
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

		<p>
			<input type="hidden" name="qid" value="<%=qid %>" />
			<textarea name="question" cols="50" rows="5" Readonly id="question"><%=ques %>
               </textarea>
		</p>

		<p>
			A). <input type="text" name="option1" value=<%=opt1%>>
		</p>
		<p>
			B). <input type="text" name="option2" value=<%=opt2%>>
		</p>
		<p>
			C). <input type="text" name="option3" value=<%=opt3%>>
		</p>
		<p>
			D). <input type="text" name="option4" value=<%=opt4%>>
		</p>
		
		<p>
			Ans.) <input type="text" name="corans" value="<%=ans %>" />
		</p>
		<BR />
		<p>

			<input type="HIDDEN" name="hidden" value="<%=Integer.parseInt(modify_qid) %>" /> 
			<INPUT TYPE="submit" VALUE="modify">

		</p>
	</form>

</body>
</html>