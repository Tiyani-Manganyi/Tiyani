<%-- 
    Document   : count_outcome
    Created on : May 31, 2024, 11:08:32 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Number Of Students Outcome Page</title>
    </head>
    <body>
        <h1>Number Of Students Outcome</h1>
        
        <%
            int count = (Integer) request.getAttribute("count");
        %>
        
        <p>Number of students is <b><%=count%></b></p>
        <br>
        
        <p>Click <a href="menu.html">here</a> to go back to menu</p>
        <p>Click <a href="index.html">here</a> to go back to home page</p>
        <p>Click <a href="LogoutServlet.do">here</a> to logout</p>
    </body>
</html>
