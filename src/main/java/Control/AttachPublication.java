/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control;

import Model.DataBase.DAOPublication;
import Model.DataBase.DAOVideogame;
import Model.Publication;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author juani
 */
public class AttachPublication extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            Date objDate = new Date();
            String strDateFormat = "Y-MM-dd";
            SimpleDateFormat objSDF = new SimpleDateFormat(strDateFormat);
            String datePub = (objSDF.format(objDate));
            
            Publication publication = new Publication();
            DAOPublication daopublication = new DAOPublication();
            DAOVideogame daogame = new DAOVideogame();
            
            int code = Integer.parseInt(request.getParameter("codigo"));
            String pub = request.getParameter("publicacion");
            
            HttpSession missesion = (HttpSession) request.getSession();
            User user = (User) missesion.getAttribute("user");
            int id = user.getId();
            
            publication.setPublicacion(pub);
            publication.setFechaPublicacion(datePub);
            publication.setUsuario(id);
            publication.setVideojuego(code);
            
            daopublication.addPublication(publication);
            
            response.sendRedirect(request.getContextPath() + "/principal.jsp");
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
        processRequest(request, response);
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
