/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import za.ac.tut.model.bl.StudentFacadeLocal;
import za.ac.tut.model.entity.Student;

/**
 *
 * @author Marvin
 */
@MultipartConfig
public class TeacherControllerServlet extends HttpServlet {
    @EJB
    private StudentFacadeLocal st;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        char op = request.getParameter("op").charAt(0);
        String web = "";
        
        switch (op) {
            case '1': 
                Long student_number = Long.valueOf(request.getParameter("student_number"));
                String name = request.getParameter("name");
                String surname = request.getParameter("surname");
                int age = Integer.parseInt(request.getParameter("age"));
                char gender = request.getParameter("gender").charAt(0);

                Date timestamp = Date.from(Instant.now());

                String[] subject_array = request.getParameterValues("module");

                List<String> subjects = new ArrayList<>();

                for(String x: subject_array) {
                    subjects.add(x);
                }

                byte[] photo = getStudentPhoto(request.getPart("photo"));

                Student student = new Student(student_number, name, surname, photo, age, gender, timestamp, subjects);

                st.create(student);
                
                request.setAttribute("student_number", student_number);
                
                web = "create_outcome.jsp";
                
                ;break;
            case '2':
                Long search_student_number = Long.valueOf(request.getParameter("search_student_number"));
                
                Student search_stud = st.find(search_student_number);
                
                request.setAttribute("search_stud", search_stud);
                request.setAttribute("search_student_number", search_student_number);
                
                web = "search_outcome.jsp";
                
                ;break;
            case '3':
                List<Student> list = st.findAll();
                
                request.setAttribute("list", list);
                
                web = "view_all_outcome.jsp";
                
                ;break;
            case '4':
                Long r_stud = Long.valueOf(request.getParameter("remove_student_number"));
                
                Student r = st.find(r_stud);
                
                if(r != null) {
                    st.remove(r);
                } else {
                    r_stud = -1L;
                }
                
                request.setAttribute("r_stud", r_stud);
                
                web = "remove_outcome.jsp";
                
                ;break;
            case '5':
                
                int count = st.count();
                
                request.setAttribute("count", count);
                
                web = "count_outcome.jsp";
                
                ;break;
        }
        
        RequestDispatcher disp = request.getRequestDispatcher(web);
        disp.forward(request, response);
    }

    private byte[] getStudentPhoto(Part part) {
        InputStream input = null;
        
        byte[] photo = null;
        
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        int num = 0;
        
        try {
            input = part.getInputStream();
            
            while( (num = input.read(buffer)) != -1) {
                baos.write(buffer, 0, num);
            }
            
            photo = baos.toByteArray();
            
        } catch(IOException ex) {
            System.err.println(ex.getMessage());
        }
        
        return photo;
    }
}
