/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author adsi2
 */
@WebServlet(name = "Insercion2", urlPatterns = {"/Insercion2"})
public class Insercion2 extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String ideins = request.getParameter("ide");
        String nomins = request.getParameter("nom");
        String apeins = request.getParameter("ape");
        String teleins = request.getParameter("tele");
        String dirins = request.getParameter("dir");
        String fecins = request.getParameter("fec");
        String emains = request.getParameter("ema");
        String pas2ins = request.getParameter("pas2");
        
        try{
        ConectaDB con = new ConectaDB();
        Connection c = con.conectar();
       
        Statement stmt = c.createStatement();

        String query = "INSERT INTO UsuariosHV(Id,Nombres,Apellidos,Telefono,Direccion,Fecha,Email,Password) "
                + "values (" + ideins + ",'" + nomins + "','" + apeins + "','" + teleins + "','" + dirins + "','" + fecins + "','" + emains + "','" + pas2ins + "');";

        System.out.println(query);

        stmt.executeUpdate(query);

        response.sendRedirect("InsercionOK.jsp");

        stmt.close();

        c.close();
        }catch(SQLException ecx){
            response.sendRedirect("Error.jsp");
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
        try {
            processRequest(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(Insercion.class
                    .getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(Insercion.class
                    .getName()).log(Level.SEVERE, null, ex);
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
