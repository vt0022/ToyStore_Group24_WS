package com.nhom8.controller.customer;

import com.nhom8.dao.AccountDAOImpl;
import com.nhom8.entity.Account;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginServlet", urlPatterns = {"/customer/login"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //doPost(request, response);

        Cookie ck[] = request.getCookies();
        if (ck != null) {
            for (Cookie c : ck) {
                if (c.getName().equals("username")) {
                    request.setAttribute("username", c.getName());
                    request.setAttribute("password", c.getName());
                }
            }
        }
        request.getRequestDispatcher("/View/Customer/user-login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String save = request.getParameter("savepassword");

        System.out.println(username);
        
        AccountDAOImpl dao = new AccountDAOImpl();

        Account a = dao.login(username, password);

        if (a == null) {
            request.setAttribute("message", "Sai tên đăng nhập hoặc mật khẩu!");
            request.getRequestDispatcher("/View/Customer/user-login.jsp").forward(request, response);
        } else if (a.getStatus() == 0) {
            request.setAttribute("message", "Tài khoản đã bị vô hiệu hoá!");
            request.getRequestDispatcher("/View/Customer/user-login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("account", a);

            if (save != null) {
                Cookie u = new Cookie("username", username);
                Cookie p = new Cookie("password", password);
                u.setMaxAge(60 * 60 * 24 * 365);
                p.setMaxAge(60 * 60 * 24 * 365);
                response.addCookie(u);
                response.addCookie(p);
            }

            response.sendRedirect(request.getContextPath() + "/View/Customer/index.jsp");
        }
    }
}
