package com.nhom8.controller.admin;

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

@MultipartConfig()
@WebServlet(name = "AccountUpdateServlet", urlPatterns = {"/admin/account/update"})
public class AccountUpdateServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    AccountDAOImpl dao = new AccountDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("adminAccount") != null) {
            int id = Integer.parseInt(request.getParameter("id"));

            Account a = dao.getAccountByID(id);
            
            session.setAttribute("updatedaccount", a);

            request.setAttribute("thisaccount", a);

            request.getRequestDispatcher("/View/Admin/edit-user.jsp").forward(request, response);
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

        int type = Integer.parseInt(request.getParameter("type"));

        Account a = new Account();

        HttpSession session = request.getSession();
        if (session != null && session.getAttribute("adminAccount") != null) {
            try {
                BeanUtils.populate(a, request.getParameterMap());
                
                Account b = (Account) session.getAttribute("updatedaccount");
                if (dao.checkExist(a.getUsername()) == null || //nhập username mới
                        (dao.checkExist(a.getUsername()) != null && a.getUsername().equals(b.getUsername()))) { // giữ username cũ
                    a.setType(type);

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

                    int status = Integer.parseInt(request.getParameter("status"));
                    a.setStatus(status);

                    dao.update(a);

                    request.setAttribute("message", "Đã cập nhật tài khoản thành công!");
                    request.getRequestDispatcher("/admin/account/manage").forward(request, response);
                } else {
                    request.setAttribute("message", "Tên đăng nhập đã tồn tại!"); // Có thể thêm phần lưu lại thông tin
                    request.getRequestDispatcher("/admin/account/manage").forward(request, response);
                }
            } catch (Exception e) {
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/View/Admin/login.jsp");
        }

    }
}
