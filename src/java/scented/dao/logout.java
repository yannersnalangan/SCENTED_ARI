/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package scented.dao;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class logout extends HttpServlet {
  private static final long serialVersionUID = 1L;
    
  public logout(){
    super();
  }
  
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    HttpSession session = request.getSession(false);
    if (session != null){
      session.removeAttribute("");
      
      RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
    }
  }
}