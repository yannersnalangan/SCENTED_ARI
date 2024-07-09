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
import scented.dao.UserDao;

public class signup extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {

            default -> viewsignup(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            insertUser(request, response);
        } catch (ClassNotFoundException ex) {
        }
    }

    private void viewsignup (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher sp = getServletContext().getRequestDispatcher(
        "/signup.jsp");
        sp.forward(request, response);

    }
    
    private void insertUser (HttpServletRequest request, HttpServletResponse response)
            throws  ServletException, IOException, ClassNotFoundException {

        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String completeAddress = request.getParameter("completeAddress");
        String birthday = request.getParameter("birthday");
        String mobileNumber = request.getParameter("mobileNumber");
        String role = request.getParameter("role"); // added this line

        UserDao reg = new UserDao();
        reg.insertUser(userName, password, firstName, middleName, lastName, completeAddress, birthday, mobileNumber, role); // added role as a parameter

        response.sendRedirect(request.getContextPath() + "/login"); 

        System.out.println(userName +  password +  firstName +  middleName +  lastName +  completeAddress +  birthday +  mobileNumber + role); //printing the data input
    }
}