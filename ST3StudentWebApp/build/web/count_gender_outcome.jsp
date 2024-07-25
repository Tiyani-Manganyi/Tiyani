<%-- 
    Document   : count_gender_outcome
    Created on : May 31, 2024, 11:19:42 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Number of Male and Female Outcome Page</title>
    </head>
    <body>
        <h1>Number of Male and Female Outcome</h1>
        
        <%
            int males = (Integer) request.getAttribute("males");
            int females = (Integer) request.getAttribute("females");
        %>
        
        <p>Number of Male students is <b><%=males%></b></p>
        <p>Number of Female students is <b><%=females%></b></p>
        
        <p>Click <a href="menu.html">here</a> to go back to menu</p>
        <p>Click <a href="index.html">here</a> to go back to home page</p>
        <p>Click <a href="LogoutServlet.do">here</a> to logout</p>
    </body>
</html>
