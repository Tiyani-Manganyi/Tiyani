<%-- 
    Document   : view_all_outcome
    Created on : May 31, 2024, 10:48:15 PM
    Author     : Marvin
--%>

<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.model.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Outcome Page</title>
    </head>
    <body>
        <h1>View All Outcome</h1>
        
        <%
            List<Student> list = (List<Student>) request.getAttribute("list");
            
            if(list != null) {
            
                for(Student s: list) {
                
                    String img_source = "data:image;base64," + Base64.getEncoder().encodeToString(s.getPhoto());
                    
                    %>

                        <img src="<%=img_source%>" alt="alt" width="200px" height="200px"/>

                        <table>
                            <tr>
                                <td>Student Number: </td>
                                <td><b><%=s.getStudent_number()%></b></td>
                            </tr>
                            <tr>
                                <td>Name: </td>
                                <td><b><%=s.getName()%></b></td>
                            </tr>
                            <tr>
                                <td>Surname: </td>
                                <td><b><%=s.getSurname()%></b></td>
                            </tr>
                            <tr>
                                <td>Age: </td>
                                <td><b><%=s.getAge()%></b></td>
                            </tr>
                            <tr>
                                <td>Gender: </td>
                                <td><b><%=s.getGender()%></b></td>
                            </tr>

                            <tr>
                                <td>Module(s): </td>

                                <%
                                    String modules = "";

                                    for(String x: s.getSubjects()) {
                                        modules += x + "; "; 
                                    }
                                %>

                                <td><b><%=modules%></b></td>
                            </tr>
                        </table>
                    <%
                }
            } else {
                %>
                    <p>No students found in the class list database</p>
                <%
            }
        %>
        
        <p>Click <a href="menu.html">here</a> to go back to menu</p>
        <p>Click <a href="index.html">here</a> to go back to home page</p>
        <p>Click <a href="LogoutServlet.do">here</a> to logout</p>
    </body>
</html>
