<%-- 
    Document   : youngest_outcome
    Created on : May 31, 2024, 11:32:49 PM
    Author     : Marvin
--%>

<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.model.entity.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Youngest Student Outcome Page</title>
    </head>
    <body>
        <h1>Youngest Student Outcome</h1>
        
        <%
            List<Student> list = (List<Student>) request.getAttribute("list");
            
            if(list.size() != 0) {
                String img_source = "data:image;base64," + Base64.getEncoder().encodeToString(list.get(0).getPhoto());
                %>
                
                    <img src="<%=img_source%>" alt="alt" width="200px" height="200px"/>
                    
                    <table>
                        <tr>
                            <td>Student Number: </td>
                            <td><b><%=list.get(0).getStudent_number()%></b></td>
                        </tr>
                        <tr>
                            <td>Name: </td>
                            <td><b><%=list.get(0).getName()%></b></td>
                        </tr>
                        <tr>
                            <td>Surname: </td>
                            <td><b><%=list.get(0).getSurname()%></b></td>
                        </tr>
                        <tr>
                            <td>Age: </td>
                            <td><b><%=list.get(0).getAge()%></b></td>
                        </tr>
                        <tr>
                            <td>Gender: </td>
                            <td><b><%=list.get(0).getGender()%></b></td>
                        </tr>
                        
                        <tr>
                            <td>Module(s): </td>
                            
                            <%
                                String modules = "";
                                
                                for(String x: list.get(0).getSubjects()) {
                                    modules += x + "; "; 
                                }
                            %>
                            
                            <td><b><%=modules%></b></td>
                        </tr>
                    </table>
                <%
            } else {
                %>
                    <p>Youngest student was not found</p>
                <%
            }
        %>
        
        <p>Click <a href="menu.html">here</a> to go back to menu</p>
        <p>Click <a href="index.html">here</a> to go back to home page</p>
        <p>Click <a href="LogoutServlet.do">here</a> to logout</p>
    </body>
</html>
