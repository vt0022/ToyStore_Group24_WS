package com.nhom8.controller.customer;

import com.nhom8.dao.CartDAOImpl;
import com.nhom8.dao.CartItemDAOImpl;
import com.nhom8.dao.ProductDAOImpl;
import com.nhom8.entity.Account;
import com.nhom8.entity.Product;
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

@WebServlet(name = "AddCartServlet", urlPatterns = {"/addcart"})
public class CartAddServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    CartDAOImpl dao = new CartDAOImpl();
    CartItemDAOImpl dao2 = new CartItemDAOImpl();
    ProductDAOImpl dao3 = new ProductDAOImpl();

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
            String url = (String)session.getAttribute("url");
            
            int productid = Integer.parseInt(request.getParameter("id"));//
            Product product = dao3.getProductByID(productid);
            
            String quant = request.getParameter("quantity");
            // Quantity mặc định là 1
            if (quant == null) {
                quant = "1";
            }
            int quantity = Integer.parseInt(quant);
            Account a = (Account) session.getAttribute("account");
            Cart cart = dao.getCartByCusID(a.getId());
            // Nếu khách hàng chưa có cart thì thêm mới
            if (cart == null) {
                cart = new Cart();
                cart.setAccount(a);
                dao.insert(cart);
            }

            List<CartItem> cartItem = dao2.getCartItemByCart(cart.getId());
//            session.setAttribute("list-cart", cartItem);
//            List<CartItem> cart_Item = (List<CartItem>) session.getAttribute("list-cart");
            // Nếu chưa có sản phẩm nào trong giỏ hàng thì thêm vào
            if (cartItem == null) {
                CartItem ci = new CartItem();
                ci.setQuantity(quantity);
                ci.setCart(cart);
                ci.setProduct(product);
                dao2.insert(ci);
                cartItem = dao2.getCartItemByCart(cart.getId());
                session.setAttribute("list-cart", cartItem);
                response.sendRedirect(request.getContextPath() + url);
            } else {
                boolean exist = false;
                for (CartItem ci : cartItem) {
                    if (ci.getProduct().getId() == productid) { // Sản phẩm đã có trong giỏ hàng thì cập nhật số lượng
                        ci.setId(ci.getId());
                        ci.setQuantity(ci.getQuantity() + quantity);
                        ci.setCart(cart);
                        ci.setProduct(product);
                        dao2.update(ci);
                        response.sendRedirect(request.getContextPath() + url);
                        return;
                    }
                }
                if (!exist) { // Chưa có trong giỏ hàng thì thêm mới
                    CartItem ci = new CartItem();
                    ci.setQuantity(quantity);
                    ci.setCart(cart);
                    ci.setProduct(product);
                    dao2.insert(ci);
                    response.sendRedirect(request.getContextPath() + url);
                }
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Customer/user-login.jsp");
        }
    }

}
