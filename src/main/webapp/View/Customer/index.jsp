<%@ page pageEncoding="UTF-8" contentType="text/html" %>
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
        <title>Toy Kingdom</title>

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

    <!-- header -->
    <header>
        <jsp:include page="header.jsp" />
    </header>
    <body id="home">
        <!-- main content -->
        <div>
            <section>
                <div class="main-content">
                    <div class="wrap-banner">
                        <div class="slideshow">
                            <div class="tiva-slideshow-wrapper">
                                <div id="tiva-slideshow" class="nivoSlider">
                                    <a href="#" title="Slideshow image">
                                        <img class="img-responsive" src="<c:url value="/View/Customer/img/home/Slide1.jpg"/>" title="#caption1" alt="Slideshowimage">
                                    </a>
                                    <a href="#" title="Slideshow image">
                                        <img class="img-responsive" src="<c:url value="/View/Customer/img/home/Slide2.jpg"/>" title="#caption2" alt="Slideshowimage">
                                    </a>
                                    <a href="#" title="Slideshow image">
                                        <img class="img-responsive" src="<c:url value="/View/Customer/img/home/Slide3.jpg"/>" title="#caption3" alt="Slideshowimage">
                                    </a>
                                </div>
                                <div id="caption1" class="nivo-html-caption">
                                    <div class="tiva-caption">
                                        <div class="left-right hidden-xs">
                                            <p class="caption-1" style="font-family: Poppins,sans-serif; font-size: 4rem; font-weight: bold; color: white">
                                                SÁNG TẠO <br><span>TƯƠI VUI</span><br> ĐA DẠNG
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div id="caption2" class="nivo-html-caption caption">
                                    <div class="tiva-caption">
                                        <div class="left-right hidden-xs">
                                            <p class="caption-2">
                                                <span class="text-left" style="font-family: Poppins,sans-serif; font-size: 6rem; font-weight: bold; color: white; margin-left: 80px; text-align: left">SÁNG TẠO</span><br>
                                                <span class="text-left" style="font-family: Poppins,sans-serif; font-size: 5rem; font-weight: bold; color: white; margin-left: 80px">TƯƠI VUI</span><br>
                                                <span class="text-left" style="font-family: Poppins,sans-serif; font-size: 4rem; font-weight: bold; color: white; margin-left: 80px">ĐA DẠNG</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div id="caption3" class="nivo-html-caption caption">
                                    <div class="left-right hidden-xs">
                                        <div class="tiva-caption">
                                            <p class="caption-3">
                                                <span class="text-lg-right" style="font-family: Poppins,sans-serif; font-size: 4rem; font-weight: bold; color: white; margin-right: 80px">SÁNG TẠO</span><br>
                                                <span class="text-lg-right" style="font-family: Poppins,sans-serif; font-size: 5rem; font-weight: bold; color: white; margin-right: 80px">TƯƠI VUI</span><br>
                                                <span class="text-lg-right" style="font-family: Poppins,sans-serif; font-size: 6rem; font-weight: bold; color: white; margin-right: 80px">ĐA DẠNG</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- main -->
                <div id="wrapper-site">
                    <div id="content-wrapper" class="full-width">
                        <div id="main">
                            <section class="page-home">
                                <!-- delivery form -->
                                <div class="policy-home">
                                    <div class="row margin-0">
                                        <div class="tiva-html col-lg-4 col-md-4 col-xs-12">
                                            <div class="block">
                                                <div class="block-content">
                                                    <div class="policy-item text-center">
                                                        <div class="policy-content iconpolicy1 text-center">
                                                            <img src="<c:url value="/View/Customer/img/home/home1-policy.png"/>" alt="img" style="margin-left: 150px">
                                                            <div class="description">
                                                                <div class="policy-name mb-5">MIỄN PHÍ VẬN CHUYỂN</div>
                                                                <div class="policy-des">Áp dụng cho mọi sản phẩm</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tiva-html col-lg-4 col-md-4 col-xs-12">
                                            <div class="block">
                                                <div class="block-content">
                                                    <div class="policy-item">
                                                        <div class="policy-content iconpolicy2 text-center">
                                                            <img src="<c:url value="/View/Customer/img/home/home1-policy2.png"/>" alt="img" style="margin-left: 150px">
                                                            <div class="discription">
                                                                <div class="policy-name mb-5">GIAO HÀNG NHANH CHÓNG</div>
                                                                <div class="policy-des">Thời gian từ 1-4 ngày</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tiva-html col-lg-4 col-md-4 col-xs-12">
                                            <div class="block">
                                                <div class="block-content">
                                                    <div class="policy-item">
                                                        <div class="policy-content iconpolicy3 text-center">
                                                            <img src="<c:url value="/View/Customer/img/home/home1-policy3.png"/>" alt="img" style="margin-left: 150px">
                                                            <div class="discription">
                                                                <div class="policy-name mb-5">ĐỔI TRẢ UY TÍN</div>
                                                                <div class="policy-des">Hỗ trợ đổi trả nếu sản phẩm</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>  
                        </div>
                    </div>
                </div>
            </section>
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