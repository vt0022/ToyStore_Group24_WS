<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<!DOCTYPE html>

<html lang="en">
    <!-- Page Loader -->
    <div id="page-preloader">
        <div class="page-loading">
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
        </div>
    </div>

    <head>
        <!-- Basic Page Needs -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Sản phẩm</title>

        <meta name="keywords" content="Toy, Kingdom, Paradise">
        <meta name="description" content="Toy Kingdom - Where the kids wanna come">
        <meta name="author" content="Group8">


        <!-- Mobile Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,700" rel="stylesheet">

        <!-- libs CSS -->
        <link rel="stylesheet" href="<c:url value="/View/Customer/libs/bootstrap/css/bootstrap.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/View/Customer/libs/font-awesome/css/font-awesome.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/View/Customer/libs/nivo-slider/css/nivo-slider.css"/>">
        <link rel="stylesheet" href="<c:url value="/View/Customer/libs/nivo-slider/css/animate.css"/>">
        <link rel="stylesheet" href="<c:url value="/View/Customer/libs/nivo-slider/css/style.css"/>">
        <link rel="stylesheet" href="<c:url value="/View/Customer/libs/font-material/css/material-design-iconic-font.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/View/Customer/libs/slider-range/css/jslider.css"/>">
        <link rel="stylesheet" href="<c:url value="/View/Customer/libs/owl-carousel/assets/owl.carousel.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/View/Customer/libs/slick-slider/css/slick.css"/>">
        <link rel="stylesheet" href="<c:url value="/View/Customer/libs/slick-slider/css/slick-theme.css"/>">

        <!-- Template CSS -->
        <link rel="stylesheet" type="text/css" href="<c:url value="/View/Customer/styles/main.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/View/Customer/styles/responsive.css"/>">
    </head>

    <body id="product-sidebar-left" class="product-grid-sidebar-left">      
        <!-- header -->
        <header>
            <jsp:include page="header.jsp" />
        </header>

        <!-- main content -->
        <div class="main-content">
            <div id="wrapper-site">
                <div id="content-wrapper" class="full-width">
                    <div id="main">
                        <div class="page-home">
                            <!-- breadcrumb -->
                            <nav class="breadcrumb-bg">
                                <div class="container no-index">
                                    <div class="breadcrumb">
                                        <ol>
                                            <li>
                                                <a href="<c:url value="/View/Customer/index.jsp"/>">
                                                    <span>Trang chủ</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="productlist">
                                                    <span>Sản phẩm</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <c:forEach items = "${categorylist}" var = "cat">
                                                        <c:if test="${cat.id == tag}">
                                                            <span>${cat.name}</span>
                                                        </c:if>
                                                    </c:forEach>

                                                </a>
                                            </li>
                                        </ol>
                                    </div>
                                </div>
                            </nav>

                            <div class="container">
                                <div class="content">
                                    <div class="row">
                                        <div class="sidebar-3 sidebar-collection col-lg-3 col-md-4 col-sm-4">

                                            <!-- category menu -->
                                            <div class="sidebar-block">
                                                <!--Sửa chữa danh mục-->
                                                <div class="title-block">Danh mục</div>
                                                <div class="block-content">
                                                    <!--Loại bỏ nút mở rộng-->
                                                    <c:forEach items = "${categorylist}" var = "cat">
                                                        <div class="cateTitle hasSubCategory open level1">
                                                            <a class="cateItem" href="categorylist?categoryid=${cat.id}">${cat.name}</a>
                                                        </div>
                                                    </c:forEach>
                                                    <!--Loại bỏ các mục nhỏ-->
                                                </div>
                                            </div>
                                        </div>

                                        <!--Đồ chơi-->
                                        <div class="col-sm-8 col-lg-9 col-md-8 product-container">
                                            <c:forEach items = "${categorylist}" var = "cat">
                                                <c:if test="${cat.id == tag}">
                                                    <h1>${cat.name}</h1>
                                                </c:if>
                                            </c:forEach>
                                            <div class="js-product-list-top firt nav-top">
                                                <div class="d-flex justify-content-around row">
                                                    <div class="col col-xs-12">
                                                        <ul class="nav nav-tabs">
                                                            <li>
                                                                <a href="#grid" data-toggle="tab" class="active show fa fa-th-large"></a>
                                                            </li>
                                                            <li>
                                                                <a href="#list" data-toggle="tab" class="fa fa-list-ul"></a>
                                                            </li>
                                                        </ul>
                                                        <div class="hidden-sm-down total-products">
                                                            <p>Các sản phẩm trùng khớp</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-content product-items">
                                                <div id="grid" class="related tab-pane fade in active show">
                                                    <div class="row">
                                                        <!-- Hiển thị dữ liệu -->
                                                        <c:forEach items="${productlist}" var="pro">
                                                            <div class="item text-center col-md-4">
                                                                <div class="product-miniature js-product-miniature item-one first-item">
                                                                    <div class="thumbnail-container border">
                                                                        <a href="productdetail?id=${pro.id}">
                                                                            <img class="img-fluid image-cover" src="<c:url value="${pro.image}"/>" alt="img">
                                                                            <img class="img-fluid image-secondary" src="<c:url value="${pro.image}"/>" alt="img">
                                                                        </a>
                                                                    </div>
                                                                    <div class="product-description">
                                                                        <div class="product-groups">
                                                                            <div class="product-title">
                                                                                <a href="productdetail?id=${pro.id}">${pro.name}</a>
                                                                            </div>
                                                                            <div class="product-group-price">
                                                                                <div class="product-price-and-shipping">
                                                                                    <span class="price">
                                                                                        <fmt:setLocale value = "vi_VN"/>
                                                                                        <fmt:formatNumber value = "${pro.price}" type = "currency"/>
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-buttons d-flex justify-content-center">
                                                                            <form action="${pageContext.request.contextPath}/addcart" method="post" class="formAddToCart">
                                                                                <input type="hidden" name="quantity" value="1">
                                                                                <!-- đưa đến trang chi tiết sản phẩm -->
                                                                                <a class="add-to-cart" href="${pageContext.request.contextPath}/addcart?id=${pro.id}" data-button-action="add-to-cart">
                                                                                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                                                                </a>
                                                                            </form>
                                                                            <a href="productdetail?id=${pro.id}" class="quick-view hidden-sm-down" data-link-action="quickview">
                                                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- pagination -->
                                            <div class="pagination">
                                                <div class="js-product-list-top ">
                                                    <div class="d-flex justify-content-around row">
                                                        <div class="showing col col-xs-12">
                                                            <span>${page} / ${end}</span>
                                                        </div>
                                                        <div class="page-list col col-xs-12">
                                                            <ul>
                                                                <c:if test="${page != 1}">
                                                                    <li>
                                                                        <a rel="prev" href="search?index=${page-1}&s=${txtSearch}" class="disabled js-search-link"> <!-- Kích hoạt hoặc vô hiệu nút Trước -->
                                                                            Trước
                                                                        </a>
                                                                    </li>
                                                                </c:if>
                                                                <c:forEach begin = "1" end = "${end}" var = "i">
                                                                    <li class="${page == i?"current active":""}"> <!-- Tô đậm trang dùng toán tử 3 ngôi -->
                                                                        <a rel="nofollow" href="search?index=${i}&s=${txtSearch}" class="disabled js-search-link"> <!-- cẩn thận nhầm url -->
                                                                            ${i}
                                                                        </a>
                                                                    </li>
                                                                </c:forEach>
                                                                <c:if test="${page != end}">
                                                                    <li>
                                                                        <a rel="next" href="search?index=${page+1}&s=${txtSearch}"}" class="next disabled js-search-link"> <!-- Kích hoạt hoặc vô hiệu nút Trước -->
                                                                            Sau
                                                                        </a>
                                                                    </li>
                                                                </c:if>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- footer -->
        <jsp:include page="footer.jsp" />

        !-- back top top -->
        <div class="back-to-top">
            <a href="#">
                <i class="fa fa-long-arrow-up"></i>
            </a>
        </div>

        <!-- Vendor JS -->
        <script src="<c:url value="/View/Customer/libs/jquery/jquery.min.js"/>"></script>
        <script src="<c:url value="/View/Customer/libs/popper/popper.min.js"/>"></script>
        <script src="<c:url value="/View/Customer/libs/bootstrap/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/View/Customer/libs/nivo-slider/js/jquery.nivo.slider.js"/>"></script>
        <script src="<c:url value="/View/Customer/libs/owl-carousel/owl.carousel.min.js"/>"></script>
        <script src="<c:url value="/View/Customer/libs/slider-range/js/tmpl.js"/>"></script>
        <script src="<c:url value="/View/Customer/libs/slider-range/js/jquery.dependClass-0.1.js"/>"></script>
        <script src="<c:url value="/View/Customer/libs/slider-range/js/draggable-0.1.js"/>"></script>
        <script src="<c:url value="/View/Customer/libs/slider-range/js/jquery.slider.js"/>"></script>
        <script src="<c:url value="/View/Customer/libs/slick-slider/js/slick.min.js"/>"></script>

        <!-- Template JS -->
        <script src="<c:url value="/View/Customer/js/theme.js"/>"></script>
    </body>
</html>