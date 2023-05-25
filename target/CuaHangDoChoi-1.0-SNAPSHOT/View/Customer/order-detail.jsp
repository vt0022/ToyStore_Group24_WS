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
        <title>Chi tiết đơn hàng</title>

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

    <body class="product-cart checkout-cart blog">
        <!-- header -->
        <header>
            <jsp:include page="header.jsp" />
        </header>

        <!-- main content -->
        <div class="main-content" id="cart">
            <!-- main -->
            <div id="wrapper-site">
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
                                    <a href="<c:url value="myorders"/>">
                                        <span>Đơn hàng</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span>Chi tiết đơn hàng</span>
                                    </a>
                                </li>
                            </ol>
                        </div>
                    </div>
                </nav>
                <section class="ftco-section" style="font-family: inherit; color: black">
                    <div class="container">
                        <h2 class="heading-section text-left" style="margin-top: 10%; font-size: 26px; font-weight: bold">Đơn hàng</h2>
                        <div class="row justify-content-center">
                            <div class="col-md-6 text-center mb-5">

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-wrap">
                                    <table class="table table-striped">
                                        <thead style="color: #403e3e">
                                            <tr>
                                                <th class="text-center">Id</th>
                                                <th class="text-center">Sản phẩm</th>
                                                <th class="text-center">Hình ảnh</th>
                                                <th class="text-center">Giá (VNĐ)</th>
                                                <th class="text-center">Số lượng</th>
                                            </tr>
                                        </thead>
                                        <tbody style="color: #666666">
                                            <c:forEach items="${orderitem}" var="oi">
                                                <tr>
                                                    <th  class="text-center" scope="row">${oi.id}</th>
                                                    <td class="text-center">${oi.product.name}</td>
                                                    <td class="text-center"><img height="100" width="100" src="<c:url value="${oi.product.image}"/>"/></td>
                                                    <td class="text-center">
                                                        <fmt:setLocale value = "vi_VN"/>
                                                        <fmt:formatNumber value = "${oi.price}" type = "currency"/>
                                                    </td>
                                                    <td class="text-center">${oi.amount}</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                    <a href="<c:url value="/myorders"/>" " class="btn btn-success right" style="font-size: 14px; background-color: #403e3e; border-radius: 1.25pc; border-color: #403e3e; margin-bottom: 15px; float: right ">Quay lại</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>

    <!-- footer -->
    <jsp:include page="footer.jsp" />

    <!-- back top top -->
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
