/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author raghu
 */
public class test extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet test</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet test at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
         String text = "<%=USN.get(0) %>";

    response.setContentType("text/plain");  
    response.setCharacterEncoding("UTF-8"); 
     String name = request.getParameter("val");
    response.getWriter().write(text);  
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
         String usn = request.getParameter("usn");
         
         ResultSet rs=null;
          try {
            //processRequest(request, response);
            
           
            Class.forName("com.mysql.jdbc.Driver");
        
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/results", "root","raghu");
			PreparedStatement stat = (PreparedStatement) con.prepareStatement("select NAME,USN,CGPA,SUB1,SUB2,SUB3,SUB4,SUB5,SUB6,SUBJECTS from student where USN=?");
                        stat.setString(1,usn );
			rs = stat.executeQuery();
                        rs.next();
                        String subjects[]=rs.getString("SUBJECTS").split(",");
                        System.out.println(usn);
                        
                       
                        response.getWriter().write("<div id='names'>");
                        response.getWriter().println("<center><h1>"+rs.getString("NAME")+"</h1></center>");
                        response.getWriter().println("<center><h4>"+rs.getString("USN")+"</h4></center>");
                        response.getWriter().println("<h2><center>CGPA-"+rs.getString("CGPA")+"</center></h2>");
                        response.getWriter().println("</div>");
                        
                        
                        response.getWriter().println("<table id='marks1'>");
                        response.getWriter().println("<tr>");
                            response.getWriter().println("<th>Subject</th>");
                            response.getWriter().println("<th>Grade</th>");
                        response.getWriter().println("</tr>");
  
                        for(int i=0;i<subjects.length;i++)
                        {
                        response.getWriter().println("<tr id='details' >");
     
                            response.getWriter().println("<td id='sub'>"+subjects[i]+"</td>");
                            response.getWriter().println("<td id='detail'>"+rs.getString("SUB"+(i+1))+"</td>");
    
                        response.getWriter().println("</tr> ");
                         
                        }
 
 
                    response.getWriter().println("</table>");
          
              
           }
          catch(Exception e){ response.getWriter().write("<p>hello</p>");  }
          
   
     
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
