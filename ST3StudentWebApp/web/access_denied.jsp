<%-- 
    Document   : access_denied
    Created on : Jun 1, 2024, 8:23:25 PM
    Author     : Marvin
--%>

<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Access Denied Error Page</title>
    </head>
    <body>
        <h1>Access Denied</h1>
        
        <p style="color: red;">You do not have authorization to access this page</p>
        
        <p>Click <a href="menu.html">here</a> to go back to menu</p>
        <p>Click <a href="index.html">here</a> to go back to home page</p>
        <p>Click <a href="LogoutServlet.do">here</a> to logout</p>
    </body>
</html>
