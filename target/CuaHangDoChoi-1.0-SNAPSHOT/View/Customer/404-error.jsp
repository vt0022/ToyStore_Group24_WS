<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <title>Lỗi 404 </title>

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

    <body id="page-404" class="blog">

        <!-- main content -->
        <div class="main-content">
            <div id="wrapper-site">
                <div id="content-wrapper">
                    <section class="page-home">
                        <div class="container">
                            <div class="row center">
                                <div class="content-404 col-lg-6 col-sm-6 text-center">
                                    <div class="image">
                                        <img class="img-fluid" src="<c:url value="/View/Customer/img/other/image-404.png"/>" alt="Image 404">
                                    </div>
                                    <h2 class="h4">Thực sự xin lỗi - Đã có một số vấn đề xảy ra bên phía chúng tôi.</h2>
                                    <div class="info">
                                        <p>Nếu vấn đề còn tiếp diễn, vui lòng liên hệ bộ phận quản trị của trang này và báo cáo lỗi bạn gặp phải.</p>
                                    </div>
                                    <a class="btn btn-default" href="<c:url value="/View/Customer/index.jsp"/>">
                                        <i class="fa fa-home" aria-hidden="true"></i>
                                        <span>Quay về trang chủ</span>
                                    </a>
                                </div>
                                <div class="content-right-404 col-lg-6 col-sm-6 text-center">
                                    <a href="#">
                                        <img class="img-fluid" src="<c:url value="/View/Customer/img/other/background.jpg"/>" alt="image 404 right">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>

        <!-- Vendor JS -->
        <script src="libs/jquery/jquery.min.js"></script>
        <script src="libs/popper/popper.min.js"></script>
        <script src="libs/bootstrap/js/bootstrap.min.js"></script>
        <script src="libs/nivo-slider/js/jquery.nivo.slider.js"></script>
        <script src="libs/owl-carousel/owl.carousel.min.js"></script>
        <script src="libs/slider-range/js/tmpl.js"></script>
        <script src="libs/slider-range/js/jquery.dependClass-0.1.js"></script>
        <script src="libs/slider-range/js/draggable-0.1.js"></script>
        <script src="libs/slider-range/js/jquery.slider.js"></script>

        <!-- Template JS -->
        <script src="js/theme.js"></script>
    </body>

</html>
