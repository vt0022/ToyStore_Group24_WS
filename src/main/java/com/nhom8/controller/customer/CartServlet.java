package com.nhom8.controller.customer;

import com.nhom8.dao.AccountDAOImpl;
import com.nhom8.dao.CartDAOImpl;
import com.nhom8.dao.CartItemDAOImpl;
import com.nhom8.entity.Account;
import com.nhom8.entity.Cart;
import com.nhom8.entity.CartItem;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CartServlet", urlPatterns = {"/mycart"})
public class CartServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    AccountDAOImpl dao = new AccountDAOImpl();
    CartDAOImpl dao2 = new CartDAOImpl();
    CartItemDAOImpl dao3 = new CartItemDAOImpl();

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
            // Gọi phiên
            Account a = (Account) session.getAttribute("account");
            // Tìm cart
            Cart cart = dao2.getCartByCusID(a.getId());
            if (cart == null) {
                cart = new Cart();
                cart.setAccount(a);
                dao2.insert(cart);
            }
            // Tìm cartitem
            List<CartItem> cartitem = dao3.getCartItemByCart(cart.getId());// Có thể null

            String message = "";
            if (cartitem.isEmpty() || cartitem == null) {
                message = "Bạn chưa có sản phẩm nào trong giỏ hàng!";
            }

            double total = 0;
            int count = 0;
            if (!cartitem.isEmpty()) {
                for (CartItem ci : cartitem) {
                    total += ci.getQuantity() * ci.getProduct().getPrice();
                    count += 1;
                }
            }
            total = Math.round(total);
            
            count = Math.round(count);
            
            session.setAttribute("list-cartitem", cartitem);

            request.setAttribute("cartitemlist", cartitem);

            request.setAttribute("total", total);

            request.setAttribute("count", count);

            request.setAttribute("message", message);

            request.getRequestDispatcher("/View/Customer/product-cart.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Customer/user-login.jsp");
        }

    }

}
