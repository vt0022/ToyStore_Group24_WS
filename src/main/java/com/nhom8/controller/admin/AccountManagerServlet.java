package com.nhom8.controller.admin;

import com.nhom8.dao.AccountDAOImpl;
import com.nhom8.entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "AccountManagerServlet", urlPatterns = {"/admin/account/manage"})
public class AccountManagerServlet extends HttpServlet {

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

            List<Account> account = dao.getAllAccounts();

            request.setAttribute("account", account);

            request.getRequestDispatcher("/View/Admin/list-user.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Admin/login.jsp");
        }

    }
}
