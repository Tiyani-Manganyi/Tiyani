<%-- 
    Document   : remove_outcome
    Created on : May 31, 2024, 11:00:39 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Outcome Page</title>
    </head>
    <body>
        <h1>Remove Outcome</h1>
        
        <%
            Long student_number = (Long) request.getAttribute("r_stud");
            
            if(student_number != -1L) {
                %>
                    <p>Student with student number <b><%=student_number%></b> removed successfully</p>
                <%
            } else {
                %>
                    <p>Student does not exist thus removal not successful</p>
                <%
            }
        %>
        
        <p>
            Student with student number <b><%=student_number%></b> has been added successfully
        </p>
        
        <p>Click <a href="menu.html">here</a> to go back to menu</p>
        <p>Click <a href="index.html">here</a> to go back to home page</p>
        <p>Click <a href="LogoutServlet.do">here</a> to logout</p>
    </body>
</html>
