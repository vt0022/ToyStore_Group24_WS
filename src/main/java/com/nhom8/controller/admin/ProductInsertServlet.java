package com.nhom8.controller.admin;

import com.nhom8.dao.CategoryDAOImpl;
import com.nhom8.dao.ProductDAOImpl;
import com.nhom8.entity.Category;
import com.nhom8.entity.Product;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.commons.beanutils.BeanUtils;

@MultipartConfig()
@WebServlet(name = "ProductInsertServlet", urlPatterns = {"/admin/product/insert"})
public class ProductInsertServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    ProductDAOImpl dao = new ProductDAOImpl();
    CategoryDAOImpl dao2 = new CategoryDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("adminAccount") != null) {

            List<Category> category = dao2.getAllCategories();

            request.setAttribute("categorylist", category);

            request.getRequestDispatcher("/View/Admin/add-product.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Admin/login.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("adminAccount") != null) {
            int catid = Integer.parseInt(request.getParameter("catid"));
            int status = Integer.parseInt(request.getParameter("status"));

            Product product = new Product();
            Category c = dao2.getCategoryByID(catid);

            try {
                BeanUtils.populate(product, request.getParameterMap());
                product.setCategory(c);
                if(product.getQuantity() <= 0){
                    status = 0; // Nếu nhập số lượng bé hơn bằng 0 thì chuyển về trạng thái vô hiệu
                    product.setQuantity(0); 
                }
                product.setStatus(status);

                Map result = null;
                Collection<Part> fileParts = request.getParts();
                for (Part part : fileParts) {
                    if (part.getName().equals("image")) {
                        String fileName = part.getSubmittedFileName();
                        result = UploadImage.uploadImage(fileName, part);
                        String url = String.valueOf(result.get("url"));
                        product.setImage(url);
                        if (result == null) {
                            throw new RuntimeException("Loi upload");
                        }
                    }
                }
                dao.insert(product);

                request.setAttribute("message", "Đã thêm đồ chơi thành công!");
                request.getRequestDispatcher("/admin/product/manage").forward(request, response);
            } catch (Exception e) {
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Admin/login.jsp");
        }
    }
}
