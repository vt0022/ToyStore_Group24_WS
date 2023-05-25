package com.nhom8.controller.admin;

import com.nhom8.dao.AccountDAOImpl;
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

@WebServlet(name = "AccountDeleteServlet", urlPatterns = {"/admin/account/delete"})
public class AccountDeleteServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    AccountDAOImpl dao = new AccountDAOImpl();

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

            int id = Integer.parseInt(request.getParameter("id"));

            Account a = dao.getAccountByID(id);
            List<MyOrder> order = a.getOrder();
            if (!order.isEmpty()) {
                a.setStatus(0);
                dao.update(a);
                request.setAttribute("message", "Tài khoản đã thực hiện giao dịch trước đây! Đã chuyển về trạng thái vô hiệu!");
                request.getRequestDispatcher("/admin/account/manage").forward(request, response);
            } else {
                dao.delete(id);
                request.setAttribute("message", "Đã xoá tài khoản thành công!");
                request.getRequestDispatcher("/admin/account/manage").forward(request, response);
            }

        } else {
            response.sendRedirect(request.getContextPath() + "/View/Admin/login.jsp");
        }

    }
}
