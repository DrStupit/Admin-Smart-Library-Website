/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kerev
 */
public class InsertBookServlet extends HttpServlet {

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
            doPost(request, response);
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
                
        response.setContentType("text/html;charset=UTF-8");
         PrintWriter out = response.getWriter();
        //Add code for Admin Insertion here
          try {
              String bname = request.getParameter("Name");
              String bauthor = request.getParameter("Author");
              String bisbn = request.getParameter("ISBN");
              String category = request.getParameter("Cat");
              int copies = Integer.parseInt(request.getParameter("Copies"));
              int testCopies =10;
              
              
              LibDAO dao = new LibDAO();
              BookPojo newBook = new BookPojo();
              //newBook.setBookID(0);
              newBook.setBookName(bname);
              newBook.setBookAuthor(bauthor);
              newBook.setBookISBN(bisbn);
              newBook.setBookCategory(category);
              newBook.setNoCopies(copies);
              newBook.setAvailable("Yes");
              dao.AddBook(newBook);
          }
           finally {
            out.close();
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
