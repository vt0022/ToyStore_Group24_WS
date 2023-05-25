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
        <title>Liên hệ</title>

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

    <body id="contact" class="blog">
        <!-- header -->
        <header>
            <jsp:include page="header.jsp" />
        </header>

        <!-- main content -->
        <div class="main-content">
            <div id="wrapper-site">
                <div id="content-wrapper">

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
                                        <a href="#">
                                            <span>Liên hệ</span>
                                        </a>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </nav>
                    <div id="main">
                        <div class="page-home">
                            <div class="container">
                                <h1 class="text-center title-page">Liên hệ với chúng tôi</h1>
                                <div class="row-inhert">
                                    <div class="header-contact">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-4 col-md-4">
                                                <div class="item d-flex">
                                                    <div class="item-left">
                                                        <div class="icon">
                                                            <i class="zmdi zmdi-email"></i>
                                                        </div>
                                                    </div>
                                                    <div class="item-right d-flex">
                                                        <div class="title">Email:</div>
                                                        <div class="contact-content">
                                                            <a href="mailto:support@domain.com">support@domain.com</a>
                                                            <br>
                                                            <a href="mailto:contact@domain.com">contact@domain.com</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-4 col-md-4">
                                                <div class="item d-flex">
                                                    <div class="item-left">
                                                        <div class="icon">
                                                            <i class="zmdi zmdi-home"></i>
                                                        </div>
                                                    </div>
                                                    <div class="item-right d-flex">
                                                        <div class="title">Địa chỉ:</div>
                                                        <div class="contact-content">
                                                            231, Kha Vạn Cân, Hiệp Bình Chánh
                                                            <br>TP.Thủ Đức, TP.Hồ Chí Minh
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-4 col-md-4">
                                                <div class="item d-flex justify-content-end  last">
                                                    <div class="item-left">
                                                        <div class="icon">
                                                            <i class="zmdi zmdi-phone"></i>
                                                        </div>
                                                    </div>
                                                    <div class="item-right d-flex">
                                                        <div class="title">Hotline:</div>
                                                        <div class="contact-content">
                                                            0398754125
                                                            <br>02845126584
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="contact-map">
                                        <div id="map">
                                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.763763728277!2d106.71905231428745!3d10.829382161176465!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528805029ec69%3A0xd1a3c3e0b1e8510c!2zMjMxIMSQLiBLaGEgVuG6oW4gQ8OibiwgSGnhu4dwIELDrG5oIENow6FuaCwgVGjhu6cgxJDhu6ljLCBUaMOgbmggcGjhu5EgSOG7kyBDaMOtIE1pbmggNzAwMDAwLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1665998015658!5m2!1svi!2s" allowfullscreen></iframe>
                                        </div>
                                    </div>
                                    <div class="input-contact">
                                        <!--
                                        <p class="text-intro text-center">“Proin gravida nibh vel velit auctor aliquet. Aenean sollicudin, lorem quis bibendum
                                            auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit
                                            amet nibh vultate cursus a sit amet mauris. Proin gravida nibh vel velit auctor aliquet.”
                                        </p>
                                        -->
                                        <p class="icon text-center">
                                            <a href="#">
                                                <img src="img/other/contact_mess.png" alt="img">
                                            </a>
                                        </p>

                                        <div class="d-flex justify-content-center">
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <div class="contact-form">
                                                    <form action="#" method="post" enctype="multipart/form-data">
                                                        <div class="form-fields">
                                                            <div class="form-group row">
                                                                <div class="col-md-6">
                                                                    <input class="form-control" name="name" placeholder="Tên">
                                                                </div>
                                                                <div class="col-md-6 margin-bottom-mobie">
                                                                    <input class="form-control" name="from" type="email" value="" placeholder="Email">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <div class="col-md-12 margin-bottom-mobie">
                                                                    <input class="form-control" name="from" type="email" value="" placeholder="Chủ đề">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <div class="col-md-12">
                                                                    <textarea class="form-control" name="message" placeholder="Tin nhắn" rows="8"></textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <button class="btn" type="submit" name="submitMessage">
                                                                <img class="img-fl" src="img/other/contact_email.png" alt="img">Gửi tin nhắn
                                                            </button>
                                                        </div>
                                                    </form>
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
