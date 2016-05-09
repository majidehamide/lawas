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
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author _guhkun
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

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
        //processRequest(request, response);
        PrintWriter out = response.getWriter();
        String base = request.getContextPath();

        String username = request.getParameter("username");
        String temp_password = request.getParameter("password");
        String password = "";

        try {
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
            Class.forName("com.mysql.jdbc.Driver");
            String uname = "root";
            String pass = "";
            String url = "jdbc:mysql://localhost/sikopi";
            Connection connection = (Connection) DriverManager.getConnection(url, uname, pass);
            Statement statement = (Statement) connection.createStatement();
            String sql = "select * from user";
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                out.print(resultSet.getString("username"));
                out.print(resultSet.getString("password"));
            }
            PreparedStatement ps = connection.prepareStatement("SELECT username,password,id_role FROM user WHERE username=? AND password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            //set the session
            
            if (rs.next()) {
                HttpSession session = request.getSession(true);
                String param_name = "member_login";
                String param_value = username;
                session.setAttribute(param_name, param_value);
                
                int id_role = (int) rs.getObject(3);                
                String role_member = getRole(id_role);
                
                param_name = "role_member";
                param_value = role_member;
                session.setAttribute(param_name, param_value);
                response.sendRedirect(base + "/admin/dashboard.jsp");
            } else {
                //response.sendRedirect(base+"/login.jsp");
                out.println("something wrong! username = " + username + ", password = " + password);
            }
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

    private String getRole(int id_role) {
        String param = "";
        if (id_role == 1) {
            param = "SuperAdmin";
        } else if (id_role == 2) {
            param = "Admin";
        } else if (id_role == 3) {
            param = "User";
        } else {
            param = "Undefined";
        }
        return param;
    }

}
