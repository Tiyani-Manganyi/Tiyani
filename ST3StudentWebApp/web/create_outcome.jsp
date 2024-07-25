<%-- 
    Document   : create_outcome
    Created on : May 31, 2024, 10:04:17 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student Outcome</title>
    </head>
    <body>
        <h1>Add Student Outcome</h1>
        
        <%
            Long student_number = (Long) request.getAttribute("student_number");
        %>
        
        <p>
            Student with student number <b><%=student_number%></b> has been added successfully
        </p>
        
        <p>Click <a href="menu.html">here</a> to go back to menu</p>
        <p>Click <a href="index.html">here</a> to go back to home page</p>
        <p>Click <a href="LogoutServlet.do">here</a> to logout</p>
    </body>
</html>
