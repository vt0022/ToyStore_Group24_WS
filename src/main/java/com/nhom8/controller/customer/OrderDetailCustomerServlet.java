package com.nhom8.controller.customer;

import com.nhom8.dao.OrderItemDAOImpl;
import com.nhom8.entity.Account;
import com.nhom8.entity.MyOrder;
import com.nhom8.entity.OrderItem;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;
import javax.persistence.criteria.Order;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "OrderDetailCustomerServlet", urlPatterns = {"/orderdetail"})
public class OrderDetailCustomerServlet extends HttpServlet {

   private static final long serialVersionUID = 1L;

   OrderItemDAOImpl dao = new OrderItemDAOImpl();

   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
      doPost(request, response);
   }

   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {

      response.setContentType("text/html;charset=UTF-8");

      int orderID = Integer.parseInt(request.getParameter("id"));

      HttpSession session = request.getSession();
      Account account = (Account) session.getAttribute("account");
      if (session != null && account != null) {

         List<Integer> id = account.getOrder().stream().
                 map(MyOrder::getId)
                 .collect(Collectors.toList());

         if (id.contains(orderID)) {
            response.sendRedirect(request.getContextPath() + "/View/Customer/login.jsp");
         } else {
            List<OrderItem> orderItems = dao.getOrderItemByOrder(orderID);

            request.setAttribute("orderitem", orderItems);
            request.getRequestDispatcher("/View/Customer/order-detail.jsp").forward(request, response);
         }
      } else {
         response.sendRedirect(request.getContextPath() + "/View/Customer/login.jsp");
      }
   }
}
