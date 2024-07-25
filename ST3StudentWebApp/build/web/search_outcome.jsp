<%-- 
    Document   : search_outcome
    Created on : May 31, 2024, 10:18:55 PM
    Author     : Marvin
--%>

<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.model.entity.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Outcome Page</title>
    </head>
    <body>
        <h1>Search Outcome</h1>
        
        <%
            Long stud_num = (Long) request.getAttribute("search_student_number");
            Student search_stud = (Student) request.getAttribute("search_stud");
            
            if(search_stud != null) {
                String img_source = "data:image;base64," + Base64.getEncoder().encodeToString(search_stud.getPhoto());
                %>
                
                    <img src="<%=img_source%>" alt="alt" width="200px" height="200px"/>
                    
                    <table>
                        <tr>
                            <td>Student Number: </td>
                            <td><b><%=search_stud.getStudent_number()%></b></td>
                        </tr>
                        <tr>
                            <td>Name: </td>
                            <td><b><%=search_stud.getName()%></b></td>
                        </tr>
                        <tr>
                            <td>Surname: </td>
                            <td><b><%=search_stud.getSurname()%></b></td>
                        </tr>
                        <tr>
                            <td>Age: </td>
                            <td><b><%=search_stud.getAge()%></b></td>
                        </tr>
                        <tr>
                            <td>Gender: </td>
                            <td><b><%=search_stud.getGender()%></b></td>
                        </tr>
                        
                        <tr>
                            <td>Module(s): </td>
                            
                            <%
                                String modules = "";
                                
                                for(String x: search_stud.getSubjects()) {
                                    modules += x + "; "; 
                                }
                            %>
                            
                            <td><b><%=modules%></b></td>
                        </tr>
                    </table>
                <%
            } else {
                %>
                    <p>Student with student number <b><%=stud_num%></b> was not found</p>
                <%
            }
        %>
        
        <p>Click <a href="menu.html">here</a> to go back to menu</p>
        <p>Click <a href="index.html">here</a> to go back to home page</p>
        <p>Click <a href="LogoutServlet.do">here</a> to logout</p>
    </body>
</html>
