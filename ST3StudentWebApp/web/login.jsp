<%-- 
    Document   : login
    Created on : May 31, 2024, 11:50:37 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login</h1>
        
        <form action="j_security_check" method="POST">
            <table>
                <tr>
                    <td>Username: </td>
                    <td><input type="text" name="j_username" required /></td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><input type="password" name="j_password" required /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Login" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
