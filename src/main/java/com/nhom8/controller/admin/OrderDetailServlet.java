package com.nhom8.controller.admin;

import com.nhom8.dao.OrderItemDAOImpl;
import com.nhom8.entity.OrderItem;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "OrderDetailServlet", urlPatterns = {"/admin/order/orderdetail"})
public class OrderDetailServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    OrderItemDAOImpl dao = new OrderItemDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        int orderID = Integer.parseInt(request.getParameter("id"));
        
        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("adminAccount") != null) {

            List<OrderItem> orderItem = dao.getOrderItemByOrder(orderID);

            request.setAttribute("orderitem", orderItem);

            request.getRequestDispatcher("/View/Admin/order-detail.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Admin/login.jsp");
        }
    }
}
