package com.nhom8.controller.customer;

import com.nhom8.controller.admin.UploadImage;
import com.nhom8.dao.AccountDAOImpl;
import com.nhom8.entity.Account;
import java.io.IOException;
import java.util.Collection;
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

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
@WebServlet(name = "UpdateCustomerServlet", urlPatterns = {"/updateaccount"})
public class UpdateCustomerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    AccountDAOImpl dao = new AccountDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("account") != null) {

            Account a = (Account) session.getAttribute("account");

            request.setAttribute("account", a);

            request.getRequestDispatcher("/View/Customer/user-update.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Customer/user-login.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Account a = new Account();

        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("account") != null) {
            Account myaccount = (Account) session.getAttribute("account");
            try {
                BeanUtils.populate(a, request.getParameterMap());

                // Xử lý nếu ảnh không được up lên
                Map result = null;
                Collection<Part> fileParts = request.getParts();
                for (Part part : fileParts) {
                    if (part.getName().equals("image")) {
                        String fileName = part.getSubmittedFileName();
                        result = UploadImage.uploadImage(fileName, part);
                        String url = String.valueOf(result.get("url"));
                        a.setImage(url);
                        if (result == null) {
                            throw new RuntimeException("Loi upload");
                        }
                    }
                }

                dao.update(a);
                
                session.setAttribute("account", a);

                request.setAttribute("message", "Đã cập nhật tài khoản thành công!");
                request.getRequestDispatcher("/View/Customer/user-account.jsp").forward(request, response);
            } catch (Exception e) {
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Customer/user-login.jsp");
        }

    }
}
