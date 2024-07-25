<%-- 
    Document   : average_male_age_outcome
    Created on : May 31, 2024, 11:28:15 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Average Number Of Males Age Outcome Page</title>
    </head>
    <body>
        <h1>Average Number Of Males Age Outcome</h1>
        
        <%
            int f_avg = (Integer) request.getAttribute("f_avg");
        %>
        
        <p>Average age of female students is <b><%=f_avg%></b>. </p>
        
        <p>Click <a href="menu.html">here</a> to go back to menu</p>
        <p>Click <a href="index.html">here</a> to go back to home page</p>
        <p>Click <a href="LogoutServlet.do">here</a> to logout</p>
    </body>
</html>
