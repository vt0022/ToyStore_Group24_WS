package com.nhom8.controller.customer;

import com.nhom8.dao.CategoryDAOImpl;
import com.nhom8.dao.ProductDAOImpl;
import com.nhom8.entity.Category;
import com.nhom8.entity.Product;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ProductServlet", urlPatterns = {"/productlist"})
public class ProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // Đặt số sản phẩm trên một trang
        int count = 9;
        // Lấy chỉ mục trang
        String indexPage = request.getParameter("index");
        // Khi mới mở chưa chọn index, đặt index mặc định
        if(indexPage == null){
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
          
        ProductDAOImpl dao  = new ProductDAOImpl();
        CategoryDAOImpl dao2 = new CategoryDAOImpl();
        
        // Tính số trang
        int total = dao.countProducts();
        int endPage = total / count;
        if (total % count != 0) {
            endPage++;
        }
        
        List<Product> product = dao.pagingProducts(index, count);
        List<Category> category = dao2.getActiveCategories();
           
        request.setAttribute("productlist", product);
        request.setAttribute("end", endPage);
        request.setAttribute("page", index);
        request.setAttribute("categorylist", category);
        
        HttpSession session = request.getSession();
        session.setAttribute("url", "/productlist?index=" + index);
        
        request.getRequestDispatcher("/View/Customer/product-list.jsp").forward(request, response);       
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

}
