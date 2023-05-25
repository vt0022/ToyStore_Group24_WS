package com.nhom8.controller.customer;

import com.nhom8.dao.CategoryDAOImpl;
import com.nhom8.dao.ProductDAOImpl;
import com.nhom8.entity.Category;
import com.nhom8.entity.Product;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProductDetailServlet", urlPatterns = {"/productdetail"})
public class ProductDetailServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);              
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // Lấy id sản phẩm
        String productid = request.getParameter("id");
        int id = Integer.parseInt(productid);

        ProductDAOImpl dao = new ProductDAOImpl();
        Product p = dao.getProductByID(id);
        
        CategoryDAOImpl dao2 = new CategoryDAOImpl();
        List<Category> category = dao2.getAllCategories();

        request.setAttribute("detail", p);
        request.setAttribute("categorylist", category);

        request.getRequestDispatcher("/View/Customer/product-detail.jsp").forward(request, response);
    }

}
