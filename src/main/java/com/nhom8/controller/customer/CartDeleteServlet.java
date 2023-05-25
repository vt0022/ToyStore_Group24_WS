package com.nhom8.controller.customer;

import com.nhom8.dao.CartItemDAOImpl;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "DeleteCartServlet", urlPatterns = {"/deletecart"})
public class CartDeleteServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    CartItemDAOImpl dao = new CartItemDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        if (session != null && session.getAttribute("account") != null) {
            int cartitemid = Integer.parseInt(request.getParameter("id")); // lấy id của cart item

            dao.delete(cartitemid);

            response.sendRedirect(request.getContextPath() + "/mycart");
        }
    }
}
