package com.nhom8.controller.customer;

import com.nhom8.dao.AccountDAOImpl;
import com.nhom8.dao.OrderDAOImpl;
import com.nhom8.entity.Account;
import com.nhom8.entity.MyOrder;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "OrderServlet", urlPatterns = {"/myorders"})
public class OrderServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    AccountDAOImpl dao = new AccountDAOImpl();
    OrderDAOImpl dao2 = new OrderDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("account") != null) {
            String message = "";
            // Gọi phiên
            Account a = (Account) session.getAttribute("account");

            // Tìm order
            List<MyOrder> order = dao2.getOrdersByCusID(a.getId());
            if (order.isEmpty() || order == null) {
                message = "Bạn chưa có đơn hàng nào!";
            }
            session.setAttribute("order", order);

            request.setAttribute("order", order);

            request.setAttribute("message", message);

            request.getRequestDispatcher("/View/Customer/order-list.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Customer/user-login.jsp");
        }

    }
}
