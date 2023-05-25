package com.nhom8.controller.customer;

import com.nhom8.dao.AccountDAOImpl;
import com.nhom8.entity.Account;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

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
        
        String username = request.getParameter("username");

        AccountDAOImpl dao = new AccountDAOImpl();

        Account a = dao.checkExist(username);
        Account b = new Account();
        if (a != null) {
            request.setAttribute("message", "Tên đăng nhập đã tồn tại!");
            request.getRequestDispatcher(request.getContextPath() + "/View/Customer/user-register.jsp").forward(request, response);
        } else {
            try {
                BeanUtils.populate(b, request.getParameterMap());
                b.setType(1);
                b.setStatus(1);
                
                dao.register(b);

                request.setAttribute("message", "Đăng ký thành công! Vui lòng đăng nhập!");
                request.getRequestDispatcher("/View/Customer/user-login.jsp").forward(request, response);

            } catch (Exception e) {
            }
        }
    }
}
