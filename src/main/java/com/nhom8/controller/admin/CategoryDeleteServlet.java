package com.nhom8.controller.admin;

import com.nhom8.dao.CategoryDAOImpl;
import com.nhom8.entity.Category;
import com.nhom8.entity.Product;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CategoryDeleteServlet", urlPatterns = {"/admin/category/delete"})
public class CategoryDeleteServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    CategoryDAOImpl dao = new CategoryDAOImpl();

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

            int cid = Integer.parseInt(request.getParameter("id"));

            Category category = dao.getCategoryByID(cid);

            List<Product> product = category.getProducts();

            if (!product.isEmpty()) {
                category.setStatus(0);
                dao.update(category);
                request.setAttribute("message", "Danh mục đang chứa đồ chơi! Đã chuyển về trạng thái vô hiệu!");
                request.getRequestDispatcher("/admin/category/manage").forward(request, response);
            } else {
                dao.delete(cid);
                request.setAttribute("message", "Đã xoá danh mục thành công!");
                request.getRequestDispatcher("/admin/category/manage").forward(request, response);
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Admin/login.jsp");
        }

    }
}
