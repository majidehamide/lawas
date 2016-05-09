/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author _guhkun
 */
@WebServlet(name = "TambahUserServlet", urlPatterns = {"/TambahUserServlet"})
public class TambahUserServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
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
        PrintWriter out = response.getWriter();
        
        //out.print(formatDate);
        String base = request.getContextPath();
        
        String id_anggota = request.getParameter("id_anggota");
        String username = request.getParameter("username");
        String temp_password = request.getParameter("password");
        int id_role = Integer.parseInt(request.getParameter("id_role"));       
        String last_login = null;
        String password = "";
        
        try{
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.reset();
            md.update(temp_password.getBytes());
            byte[] digest = md.digest();
            StringBuffer hexString = new StringBuffer();

            for (int i = 0; i < digest.length; i++) {
                temp_password = Integer.toHexString(0xFF & digest[i]);

                if (temp_password.length() < 2) {
                    temp_password = "0" + temp_password;
                }
                hexString.append(temp_password);
            }
            out.print("temp_password= " + hexString);
            password = hexString.toString();
        } catch (NoSuchAlgorithmException ex) {
            out.print(ex.getMessage());
        }
        
        try {
            //koneksi to database
            Class.forName("com.mysql.jdbc.Driver");
            String uname = "root";
            String pass = "admin";
            String url = "jdbc:mysql://localhost/sikopi";
            Connection connection = (Connection) DriverManager.getConnection(url, uname, pass);
            Statement statement = (Statement) connection.createStatement();
            String sql_insert = "INSERT INTO user(username, password, id_role, "
                    + "id_anggota, last_login) VALUES (?,?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql_insert);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setInt(3, id_role);
            ps.setString(4, id_anggota);
            ps.setString(5, last_login);
            
            ps.executeUpdate();

            response.sendRedirect(base + "/member/home.jsp");
        } catch (Exception e) {
            out.print(e.getMessage());
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
