/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package scented;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import scented.dao.logvalid;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**

*/
public class login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            default -> viewlogin(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        logvalid log = new logvalid();
        try {
            if (log.isValidUser(userName, password)) {
                // Login successful, direct to home page
                response.sendRedirect("homepage.jsp");
            } else {
                // Login failed, stay on login page
                request.setAttribute("error", "Invalid username or password");
                viewlogin(request, response);
            }
        } catch (ClassNotFoundException e) {
            // Handle exception
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void viewlogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher lg = getServletContext().getRequestDispatcher("/login.jsp");
        lg.forward(request, response);
    }

    // Add this method to handle user addition
    private void addUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        // Assume addUser logic here, then set success message
        request.setAttribute("message", "User successfully added");
        viewlogin(request, response);
    }
}
