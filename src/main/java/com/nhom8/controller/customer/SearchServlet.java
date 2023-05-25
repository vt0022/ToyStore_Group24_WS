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

@WebServlet(name = "SearchServlet", urlPatterns = {"/search"})
public class SearchServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        // Lấy dữ liệu từ ô search
        String txtSearch = request.getParameter("s");

        // Đặt số sản phẩm trên một trang
        int count = 9;

        // Lấy chỉ mục trang
        String indexPage = request.getParameter("index");

        // Khi mới mở chưa chọn index, đặt index mặc định
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);

        // B1: Lấy dữ liệu từ DAO
        ProductDAOImpl dao = new ProductDAOImpl();
        CategoryDAOImpl dao2 = new CategoryDAOImpl();

        // Tính số trang
        int total = dao.countProductsWithSearch(txtSearch);
        int endPage = total / count;
        if (total % count != 0) {
            endPage++;
        }

        // Thực hiện tìm kiếm
        List<Product> searchproduct = dao.searchProducts(txtSearch, index, count);
        List<Category> category = dao2.getActiveCategories();

        // B2: Đẩy dữ liệu cho JSP
        request.setAttribute("productlist", searchproduct);
        request.setAttribute("categorylist", category);
        request.setAttribute("end", endPage);
        request.setAttribute("page", index);
        request.setAttribute("txtSearch", txtSearch);

        HttpSession session = request.getSession();
        session.setAttribute("url", "/search?index=" + index + "&s=" + txtSearch);

        request.getRequestDispatcher("/View/Customer/search-result.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

}
