<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/View/Admin" var="url"></c:url>
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li class="text-center"><img src="${url}/img/find_user.png"
                                         class="user-image img-responsive" /></li>
<!--            class="active-menu"-->
            <li><a href="<c:url value="/View/Admin/index.jsp"/>"><i
                        class="fa fa-dashboard fa-3x"></i> Dashboard</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/category/manage">
                    <i class="fa fa-list fa-3x"></i>
                    Quản lý danh mục</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/product/manage">
                    <i class="fa fa-book fa-3x"></i>
                    Quản lý sản phẩm</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/account/manage">
                    <i class="fa fa-group fa-3x"></i>
                    Quản lý người dùng</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/order/manage"> 
                    <i class="fa fa-pencil-square fa-3x">
                    </i>Quản lý đơn hàng</a></li>
        </ul>

    </div>

</nav>