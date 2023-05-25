package com.nhom8.controller.customer;

import com.nhom8.dao.AccountDAOImpl;
import com.nhom8.entity.Account;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ChangePasswordServlet", urlPatterns = {"/changepassword"})
public class ChangePasswordServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    AccountDAOImpl dao = new AccountDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/View/Customer/user-change-password.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String oldpassword = request.getParameter("oldpassword");
        String newpassword = request.getParameter("newpassword");
        String repeatednewpassword = request.getParameter("repeatednewpassword");

        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("account") != null) {
            Account a = (Account) session.getAttribute("account");
            if (!a.getPassword().equals(oldpassword)) {
                request.setAttribute("message", "Mật khẩu cũ bị sai!");
                request.getRequestDispatcher("/View/Customer/user-change-password.jsp").forward(request, response);
            } else if (newpassword.equals(oldpassword)) {
                request.setAttribute("message", "Vui lòng chọn mật khẩu khác mật khẩu cũ!");
                request.getRequestDispatcher("/View/Customer/user-change-password.jsp").forward(request, response);
            } else if (!repeatednewpassword.equals(newpassword)) {
                request.setAttribute("message", "Mật khẩu mới không trùng khớp!");
                request.getRequestDispatcher("/View/Customer/user-change-password.jsp").forward(request, response);
            } else {
                a.setPassword(newpassword);
                dao.update(a);
                session.setAttribute("account", a);

                request.setAttribute("message", "Thay đổi mật khẩu thành công!");
                request.getRequestDispatcher("/View/Customer/user-account.jsp").forward(request, response);
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Customer/login.jsp");
        }

    }
}
