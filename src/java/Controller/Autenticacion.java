/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author adsi2
 */
@WebServlet(name = "Autenticacion", urlPatterns = {"/Autenticacion"})
public class Autenticacion extends HttpServlet {

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

        String usuario = request.getParameter("usr");
        String password = request.getParameter("pwd");

        ConectaDB con = new ConectaDB();
        Connection c = con.conectar();
        Statement stmt = c.createStatement();

        String query = "SELECT * FROM UsuariosLogin WHERE Usuario='" + usuario + "' AND Password='" + password + "';";

        System.out.println(query);

        ResultSet rs = stmt.executeQuery(query);

        String nombreUsuario = "INVITADO";
        String rolUsuario = "invitado";
        String pwdUsuario = "";

        while (rs.next()) {
            nombreUsuario = rs.getString("Usuario");
            rolUsuario = rs.getString("Rol");
            pwdUsuario = rs.getString("Password");
        }
                
        if (usuario.equals(nombreUsuario)) {
            if (password.equals(pwdUsuario)) {
                System.out.println(nombreUsuario);
                System.out.println(rolUsuario);
                HttpSession sesion = request.getSession(true);
                sesion.setAttribute("usuhv", nombreUsuario);
                sesion.setAttribute("rolhv", rolUsuario);

                response.sendRedirect("BarraNav.jsp");
            }
        } else {
            HttpSession sesion = request.getSession(true);
            sesion.setAttribute("usuhv", "INVITADO");
            sesion.setAttribute("rolhv", "invitado");
            
            response.sendRedirect("BarraNav.jsp");
            }
        rs.close();
        stmt.close();
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
            Logger.getLogger(Autenticacion.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Autenticacion.class.getName()).log(Level.SEVERE, null, ex);
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
