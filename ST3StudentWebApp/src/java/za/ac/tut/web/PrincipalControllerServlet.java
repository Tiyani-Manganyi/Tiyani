/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.StudentFacadeLocal;
import za.ac.tut.model.entity.Student;

/**
 *
 * @author Marvin
 */
public class PrincipalControllerServlet extends HttpServlet {
    @EJB
    private StudentFacadeLocal st;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        char op = request.getParameter("op").charAt(0);
        String web = "";
        
        switch(op) {
            case '1':
                int males = st.countMaleStudents();
                int females = st.countFemaleStudents();
                
                System.out.println("MALE " + males + " -> FEMALE " + females);
                
                request.setAttribute("males", males);
                request.setAttribute("females", females);
                
                web = "count_gender_outcome.jsp";
                
                ;break;
            case '2':
                int m_avg = st.calcAverageMaleAverageAge();
                
                request.setAttribute("m_avg", m_avg);
                
                web = "average_male_age_outcome.jsp";
                
                ;break;
            case '3':
                int f_avg = st.calcAverageFemaleAverageAge();
                
                request.setAttribute("f_avg", f_avg);
                
                web = "average_female_age_outcome.jsp";
                
                ;break;
            case '4':
                List<Student> list = st.findYoungestStudent();
                
                request.setAttribute("list", list);
                
                web = "youngest_outcome.jsp";
                
                ;break;
        }
        
        RequestDispatcher disp = request.getRequestDispatcher(web);
        disp.forward(request, response);
    }
}
