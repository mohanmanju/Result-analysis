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
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author raghu
 */
public class Result extends HttpServlet {

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
            out.println("<title>Servlet Result</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Result at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        String identify=request.getParameter("identify");
        System.out.println("identify is"+identify);
        if(identify.equals("index")){
         
                             String usr=request.getParameter("username");
                            
                            if(usr.equals("pramukh"))
                            {
                               RequestDispatcher rd =request.getRequestDispatcher("/view/main1.html"); 
                               rd.forward(request, response);
                            }
                            
                            RequestDispatcher rd =request.getRequestDispatcher("/view/error.html"); 
                               rd.forward(request, response);
                            
        }
        if(identify.equals("main")){
        try {
            //processRequest(request, response);
            
            String usn=request.getParameter("usn");
            Class.forName("com.mysql.jdbc.Driver");
        
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/results", "root","raghu");
			PreparedStatement stat = (PreparedStatement) con.prepareStatement("select SUB1,SUB2,SUB3,SUB4,SUB5,SUB6,SUBJECTS from student where USN=?");
                        stat.setString(1,usn );
			ResultSet rs = stat.executeQuery();
                        ArrayList details =new ArrayList();
                        rs.next();
                      
                            details.add(rs.getString("SUB1"));
                            details.add(rs.getString("SUB2"));
                            details.add(rs.getString("SUB3"));
                            details.add(rs.getString("SUB4"));
                            details.add(rs.getString("SUB5"));
                            details.add(rs.getString("SUB6"));
                            details.add(rs.getString("SUBJECTS"));
                            stat=(PreparedStatement) con.prepareStatement("select NAME,USN,CGPA from student where USN=?");
                        stat.setString(1,usn );
			rs = stat.executeQuery();
                        rs.next();
                        details.add(rs.getString("NAME"));
                        details.add(rs.getString("USN"));
                        details.add(rs.getString("CGPA"));
                       
                            RequestDispatcher rd =request.getRequestDispatcher("/view/result.jsp");
                            
                            request.setAttribute("details", details);
                            
                            rd.forward(request, response);
                            System.out.println("done");
                        
                        } catch (Exception ex) {
            Logger.getLogger(Result.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    if(identify.equals("class")){
        try {
            //processRequest(request, response);
            
            String branch=request.getParameter("branch");
            int year=Integer.parseInt(request.getParameter("year"));
            
            Class.forName("com.mysql.jdbc.Driver");
        
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/results", "root","raghu");
			PreparedStatement stat = (PreparedStatement) con.prepareStatement("select USN,NAME,CGPA from student where BRANCH=? and YEAR=?");
                        stat.setString(1,branch);
                        stat.setInt(2,year);
			ResultSet rs = stat.executeQuery();
                        ArrayList USN =new ArrayList();
                        ArrayList NAME =new ArrayList();
                        ArrayList CGPA =new ArrayList();
                       
                        
                        while(rs.next()){
                      
                            USN.add(rs.getString("USN"));
                            NAME.add(rs.getString("NAME"));
                            CGPA.add(rs.getFloat("CGPA"));
                        }
                        
                         
                       
                            RequestDispatcher rd =request.getRequestDispatcher("/view/classresult.jsp");
                            
                            request.setAttribute("USN",USN);
                              request.setAttribute("NAME",NAME);
                                request.setAttribute("CGPA",CGPA);
                            
                            rd.forward(request, response);
                            System.out.println("done");
                        
                        } catch (Exception ex) {
            Logger.getLogger(Result.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    if(identify.equals("department")){
         try {
            //processRequest(request, response);
            
            String branch=request.getParameter("branch");
            
            
            Class.forName("com.mysql.jdbc.Driver");
        
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/results", "root","raghu");
			PreparedStatement stat = (PreparedStatement) con.prepareStatement("select USN,NAME,CGPA from student where BRANCH=?");
                        stat.setString(1,branch);
                        
			ResultSet rs = stat.executeQuery();
                        ArrayList USN =new ArrayList();
                        ArrayList NAME =new ArrayList();
                        ArrayList CGPA =new ArrayList();
                       
                        
                        while(rs.next()){
                      
                            USN.add(rs.getString("USN"));
                            NAME.add(rs.getString("NAME"));
                            CGPA.add(rs.getFloat("CGPA"));
                        }
                        
                         
                       
                            RequestDispatcher rd =request.getRequestDispatcher("/view/departmentresult.jsp");
                            
                            request.setAttribute("USN",USN);
                              request.setAttribute("NAME",NAME);
                                request.setAttribute("CGPA",CGPA);
                            
                            rd.forward(request, response);
                            System.out.println("done");
                        
                        } catch (Exception ex) {
            Logger.getLogger(Result.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
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
