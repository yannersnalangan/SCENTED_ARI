/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import scented.dao.InventoryDao;
import scented.model.InventoryModel;

public class Inventory extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/product/create/form":
                showProductCreateForm(request, response);
                break;
            case "/product/create":
                createProduct(request, response);
                break;
            case "/product/update/form":
                showProductUpdateForm(request, response);
                break;
            case "/product/update":
                updateProduct(request, response);
                break;
            case "/product/delete":
                deleteProduct(request, response);
                break;
            default:
                viewProduct(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void viewProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        InventoryDao product = new InventoryDao();
        ArrayList<InventoryModel> productList = product.getProductList();
        request.setAttribute("productList", productList);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/WEB-INF/Inventory/Inventory.jsp");
        rd.forward(request, response);
    }

    private void showProductCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/WEB-INF/Inventory/InventoryCreate.jsp");
        rd.forward(request, response);
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    int productId = Integer.parseInt(request.getParameter("productId"));
    String productName = request.getParameter("productName");
    String productDescription = request.getParameter("productDescription");
    String size = request.getParameter("size");
    double price = Double.parseDouble(request.getParameter("price"));
    int quantity = Integer.parseInt(request.getParameter("quantity"));

    InventoryDao product = new InventoryDao();
    InventoryModel createProduct = new InventoryModel(productId, productName, productDescription, size, price, quantity);
    product.createProduct(createProduct);

    request.getSession().setAttribute("message", "Product added successfully.");
    response.sendRedirect(request.getContextPath() + "/product");
}


    private void showProductUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        InventoryDao product = new InventoryDao();
        InventoryModel productDetails = product.getProductDetails(productId);
        request.setAttribute("productDetails", productDetails);
        request.setAttribute("productId", productId); // Add this line
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/WEB-INF/Inventory/InventoryUpdate.jsp");
        rd.forward(request, response);
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    int productId = Integer.parseInt(request.getParameter("productId"));
    String productName = request.getParameter("productName");
    String productDescription = request.getParameter("productDescription");
    String size = request.getParameter("size");
    double price = Double.parseDouble(request.getParameter("price"));
    int quantity = Integer.parseInt(request.getParameter("quantity"));

    InventoryDao product = new InventoryDao();
    InventoryModel updateProduct = new InventoryModel(productId, productName, productDescription, size, price, quantity);
    product.updateProduct(updateProduct);

    request.getSession().setAttribute("message", "Product updated successfully.");
    response.sendRedirect(request.getContextPath() + "/product");
}


    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    int productId = Integer.parseInt(request.getParameter("productId"));
    InventoryDao product = new InventoryDao();
    product.deleteProduct(productId);

    request.getSession().setAttribute("message", "Product deleted successfully.");
    response.sendRedirect(request.getContextPath() + "/product");
}


}