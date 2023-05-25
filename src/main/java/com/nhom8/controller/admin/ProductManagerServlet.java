package com.nhom8.controller.admin;

import com.nhom8.dao.ProductDAOImpl;
import com.nhom8.entity.Product;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ProductManagerServlet", urlPatterns = {"/admin/product/manage"})
public class ProductManagerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("adminAccount") != null) {

            ProductDAOImpl dao = new ProductDAOImpl();

            List<Product> product = dao.getAllProducts();

            request.setAttribute("productlist", product);

            request.getRequestDispatcher("/View/Admin/list-product.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Admin/login.jsp");
        }
    }
}
