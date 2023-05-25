package com.nhom8.controller.admin;

import com.nhom8.dao.ProductDAOImpl;
import com.nhom8.entity.OrderItem;
import com.nhom8.entity.Product;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ProductDeleteServlet", urlPatterns = {"/admin/product/delete"})
public class ProductDeleteServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    ProductDAOImpl dao = new ProductDAOImpl();

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

            int pid = Integer.parseInt(request.getParameter("id"));

            Product product = dao.getProductByID(pid);
            List<OrderItem> orderitem = product.getOrderitems();
            if (!orderitem.isEmpty()) {
                product.setStatus(0);
                dao.update(product);

                request.setAttribute("message", "Đồ chơi đang nằm trong hoá đơn khác! Đã chuyển trạng thái về vô hiệu!");
                request.getRequestDispatcher("/admin/product/manage").forward(request, response);
            } else {
                dao.delete(pid);
                request.setAttribute("message", "Đã xoá đồ chơi thành công!");
                request.getRequestDispatcher("/admin/product/manage").forward(request, response);
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Admin/login.jsp");
        }

    }

}
