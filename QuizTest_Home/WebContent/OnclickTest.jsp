<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<BODY>
        <%-- <% 
            //if(request.getParameter("buttonName") != null) {
            if(request.getParameterNames() != null) {
        %>
            You clicked 
            <%= request.getParameter("buttonName") %>
        <%
            }
        %> --%>
        <%int count=0; 
        count = count+1;%>

        <FORM NAME="form1" METHOD="POST">
            <INPUT TYPE="HIDDEN" NAME="buttonName">
            <INPUT TYPE="BUTTON" VALUE="Button 1" ONCLICK="button1()">
        </FORM>

        <SCRIPT LANGUAGE="JavaScript">
            <!--
            function button1()
            {
                //document.form1.buttonName.value = "Yes"
                <%
                System.out.print(count);
                
                %>
                form1.submit()
            }    
            
            // --> 
        </SCRIPT>
    </BODY>
</html>