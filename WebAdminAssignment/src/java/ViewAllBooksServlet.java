/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kerev
 */
public class ViewAllBooksServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   

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
            response.setContentType("text/html;charset=UTF-8");
            //response.addHeader("Access-Control-Allow-Origin", "*");
            PrintWriter out = response.getWriter();
        
            try {
            
            LibDAO dao = new LibDAO();
            List<BookPojo> listuser =new ArrayList<BookPojo>();  
         
                try {
                     listuser =dao.Books();
                      out.println("<h2>"+listuser.size()+"</h2>");
                     for(int i=0;i<listuser.size();i++){
                        
                     out.println("<tr><td>"+listuser.get(i).getBookName()+"</td>"+
                                     "<td>"+listuser.get(i).getBookAuthor()+"</td>"
                                   + "<td>"+listuser.get(i).getBookISBN()+"</td>"
                                   + "<td>"+listuser.get(i).getBookCategory()+"</td>"
                                   + "<td>"+listuser.get(i).getCopies()+"</td>"
                                   + "<td>"+listuser.get(i).getAvailable()+"</td></tr>");
                     }

                 } catch (SQLException ex) {
                     Logger.getLogger(ViewAllBooksServlet.class.getName()).log(Level.SEVERE, null, ex);
                 }
                
                
            
        } finally {
            out.close();
        }
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
            doGet(request, response);
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
