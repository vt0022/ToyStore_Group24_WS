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
        <title>Tài khoản</title>

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

    <body class="user-acount">
        <!-- header -->
        <header>
            <jsp:include page="header.jsp" />
        </header>

        <!-- main content -->
        <div class="main-content">
            <div class="wrap-banner">

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
                                        <span>Cập nhật tài khoản</span>
                                    </a>
                                </li>
                            </ol>
                        </div>
                    </div>
                </nav>

                <div class="acount head-acount">
                    <div class="container">
                        <div id="main">
                            <form role="form" action="<c:url value="/updateaccount"/>"  method="post" enctype="multipart/form-data">
                                <h1 class="title-page">Cập nhật tài khoản</h1>
                                <div class="content" id="block-history">
                                    <table class="std table" style="width: 50%">
                                        <tbody>
                                        <input name="id" value="${account.id}" hidden=""> 
                                        <input name="type" value="${account.type}" hidden="">
                                        <input name="status" value="${account.status}" hidden=""> 
                                        <input name="password" value="${account.password}" hidden="">
                                        <tr>
                                            <th class="first_item">Ảnh đại diện: </th>
                                            <td>
                                                <img class="img-fluid image-cover" style="width: 100px; height: 100px" src="<c:url value="${account.image}"/>" alt="img">
                                                <input class="form-control"
                                                       value="" name="image" type="file"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="first_item">Họ và tên: </th>
                                            <td><input class="form-control"
                                                       value="${account.name}" name="name" type="text" required/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="first_item">Tên đăng nhập: </th>
                                            <td><input class="form-control"
                                                       value="${account.username}" name="username" type="text" readonly/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="first_item">Email: </th>
                                            <td><input class="form-control"
                                                       value="${account.email}" name="email" type="email" required/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="first_item">Địa chỉ: </th>
                                            <td><input class="form-control"
                                                       value="${account.address}" name="address" type="text" required/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="first_item">Điện thoại: </th>
                                            <td>
                                                <input class="form-control"
                                                       value="${account.phone}" name="phone" type="text" required/></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <button class="btn btn-primary" data-link-action="sign-in" type="submit">
                                    Cập nhật thông tin
                                </button>
                            </form>
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