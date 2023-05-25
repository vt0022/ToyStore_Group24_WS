package com.nhom8.controller.admin;

import com.nhom8.dao.CategoryDAOImpl;
import com.nhom8.entity.Category;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.beanutils.BeanUtils;

@WebServlet(name = "CategoryUpdateServlet", urlPatterns = {"/admin/category/update"})
public class CategoryUpdateServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    CategoryDAOImpl dao = new CategoryDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("adminAccount") != null) {

            int cid = Integer.parseInt(request.getParameter("id"));

            Category category = dao.getCategoryByID(cid);

            request.setAttribute("category", category);

            request.getRequestDispatcher("/View/Admin/edit-category.jsp").forward(request, response);
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

            int status = Integer.parseInt(request.getParameter("status"));
            CategoryDAOImpl dao = new CategoryDAOImpl();

            Category c = new Category();

            try {
                BeanUtils.populate(c, request.getParameterMap());
                c.setStatus(status);
                dao.update(c);
                
                request.setAttribute("message", "Đã cập nhật danh mục thành công!");
                request.getRequestDispatcher("/admin/category/manage").forward(request, response);
            } catch (Exception e) {
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Admin/login.jsp");
        }
    }

}
