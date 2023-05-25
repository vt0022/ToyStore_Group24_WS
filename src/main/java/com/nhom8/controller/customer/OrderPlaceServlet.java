package com.nhom8.controller.customer;

import com.nhom8.dao.CartDAOImpl;
import com.nhom8.dao.CartItemDAOImpl;
import com.nhom8.dao.OrderDAOImpl;
import com.nhom8.dao.OrderItemDAOImpl;
import com.nhom8.dao.ProductDAOImpl;
import com.nhom8.entity.Account;
import com.nhom8.entity.Cart;
import com.nhom8.entity.CartItem;
import com.nhom8.entity.MyOrder;
import com.nhom8.entity.OrderItem;
import com.nhom8.entity.Product;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "OrderPlaceServlet", urlPatterns = {"/placeorder"})
public class OrderPlaceServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    OrderDAOImpl dao = new OrderDAOImpl();
    OrderItemDAOImpl dao2 = new OrderItemDAOImpl();
    CartDAOImpl dao3 = new CartDAOImpl();
    CartItemDAOImpl dao4 = new CartItemDAOImpl();
    ProductDAOImpl dao5 = new ProductDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("account") != null) {
            Account a = (Account) session.getAttribute("account");

            // Tìm cart
            Cart cart = dao3.getCartByCusID(a.getId());
            if (cart == null) {
                cart = new Cart();
                cart.setAccount(a);
                dao3.insert(cart);
            }
            // Tìm cartitem
            List<CartItem> cartitem = dao4.getCartItemByCart(cart.getId());

            double total = 0;
            int count = 0;
            for (CartItem ci : cartitem) {
                total += ci.getQuantity() * ci.getProduct().getPrice();
                count += 1;
            }
            total = Math.round(total);

            count = Math.round(count);

            request.setAttribute("total", total);

            request.setAttribute("count", count);

            request.getRequestDispatcher("/View/Customer/product-checkout.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());

        if (session != null && session.getAttribute("account") != null) {
            Account a = (Account) session.getAttribute("account");

            MyOrder order = new MyOrder();
            order.setAccount(a);
            order.setName(name);
            order.setEmail(email);
            order.setPhone(phone);
            order.setAddress(address);
            order.setDateOrder(date);

            dao.insert(order);

            Cart cart = dao3.getCartByCusID(a.getId());
            List<CartItem> cartItem = dao4.getCartItemByCart(cart.getId());

            double total = 0;

            for (CartItem ci : cartItem) {
                OrderItem oi = new OrderItem();
                oi.setAmount(ci.getQuantity());
                
                // Cập nhật số lượng và trạng thái
                Product product = ci.getProduct();
                product.setQuantity(product.getQuantity() - ci.getQuantity());
                if(product.getQuantity() == 0){
                    product.setStatus(0);
                }
                dao5.update(product);
                
                oi.setPrice(ci.getProduct().getPrice());
                oi.setOrder(order);
                oi.setProduct(ci.getProduct());
                dao2.insert(oi);
                total += ci.getQuantity() * ci.getProduct().getPrice();
            }

            order.setTotal(total);
            dao.update(order);
            
            session.setAttribute("order", order);

//////////////////////////////////////SEND MAIL///////////////////////////////////////
            // Recipient's email ID needs to be mentioned.
            String to = email;

            // Sender's email ID needs to be mentioned
            String from = "toyismykingdom@gmail.com";

            // Assuming you are sending email from through gmails smtp
            String host = "smtp.gmail.com";

            // Get system properties
            Properties properties = System.getProperties();

            // Setup mail server
            properties.put("mail.smtp.host", host);
            properties.put("mail.smtp.port", "465");
            properties.put("mail.smtp.ssl.enable", "true");
            properties.put("mail.smtp.auth", "true");

            // Get the Session object.// and pass username and password
            Session mysession = Session.getInstance(properties, new javax.mail.Authenticator() {

                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(from, "syoaokpzdytujrzi");

                }

            });

            // Used to debug SMTP issues
            mysession.setDebug(true);

            try {
                // Create a default MimeMessage object.
                MimeMessage message = new MimeMessage(mysession);

                // Set From: header field of the header.
                message.setFrom(new InternetAddress(from));

                // Set To: header field of the header.
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

                // Set Subject: header field
                message.setSubject("Hoá đơn điện tử cho đơn hàng " + order.getId(), "UTF-8");

                // Now set the actual message
                String orderdetail = "Sau đây là chi tiết đơn hàng: \n";
                int i = 1;
                for (CartItem item : cartItem) {
                    orderdetail = orderdetail + i + ". " + item.getProduct().getName()
                            + ", giá: " + item.getProduct().getPrice() + " VNĐ"
                            + ", số lượng: " + item.getQuantity()
                            + ", tổng tiền: " + item.getQuantity() * item.getProduct().getPrice()
                            + ".\n";
                    i++;
                }
                orderdetail = orderdetail + "Tổng chi phí đơn hàng: " + order.getTotal()
                        + " VNĐ.\n"
                        + "Chúc quý khách có trải nghiệm mua hàng vui vẻ.\n"
                        + "Rất mong được gặp lại quý khách!\n";

                message.setContent("Xin chào " + a.getName() + " . " + "Cảm ơn quý khách đã đặt hàng tại Toy Kingdom! "
                        + "Ngày đặt hàng: " + new SimpleDateFormat("dd-MM-yyyy").format(order.getDateOrder()) + "\n"
                        + "\n" + "Đơn hàng được giao đến: " + "\n"
                        + " - Họ và tên: " + name + "\n"
                        + " - Email: " + email + "\n"
                        + " - Số điện thoại: " + phone + "\n"
                        + " - Địa chỉ: " + address + "\n"
                        + orderdetail, "text/plain;charset=UTF-8");

                // Send message
                Transport.send(message);

            } catch (MessagingException mex) {
                mex.printStackTrace();
            }

//////////////////////////////////////SEND MAIL///////////////////////////////////////
            for (CartItem ci : cartItem) {
                ci.setCart(null);
                ci.setProduct(null);
                dao4.delete(ci.getId());
            }

            cartItem = dao4.getCartItemByCart(cart.getId());
            session.setAttribute("list-cart", cartItem);

            response.sendRedirect(request.getContextPath() + "/View/Customer/order-success.jsp");
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Customer/user-login.jsp");
        }
    }
}
