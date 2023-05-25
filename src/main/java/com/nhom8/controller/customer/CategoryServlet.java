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

@WebServlet(name = "CategoryServlet", urlPatterns = {"/categorylist"})
public class CategoryServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Đặt số sản phẩm trên một trang
        int count = 6;

        // Lấy chỉ mục trang
        String indexPage = request.getParameter("index");
        // Khi mới mở chưa chọn index, đặt index mặc định
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);

        // Lấy id khi click
        String id = request.getParameter("categoryid");
        if (id == null) {
            id = "-1";
        }
        int cid = Integer.parseInt(id);

        // Lấy dữ liệu từ DAO
        ProductDAOImpl dao = new ProductDAOImpl();
        CategoryDAOImpl dao2 = new CategoryDAOImpl();

        // Tính số trang
        int total = dao.countProductsWithCategory(cid);
        int endPage = total / count;
        if (total % count != 0) {
            endPage++;
        }

        // Thực hiện lấy dữ liệu phân trang và danh mục
        List<Product> product = dao.pagingProductsByCategory(cid, index, count);
        List<Category> category = dao2.getActiveCategories();

        // Đẩy dữ liệu cho JSP
        request.setAttribute("productlist", product);
        request.setAttribute("end", endPage);
        request.setAttribute("page", index);
        request.setAttribute("categorylist", category);
        request.setAttribute("catid", cid);

        HttpSession session = request.getSession();
        session.setAttribute("url", "/categorylist?index=" + index + "&categoryid=" + cid);

        request.getRequestDispatcher("/View/Customer/category-by.jsp").forward(request, response);
    }

}
