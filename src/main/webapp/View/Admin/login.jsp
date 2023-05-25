<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
    <head>
        <!-- Basic Page Needs -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Đăng nhập</title>

        <meta name="keywords" content="Furniture, Decor, Interior">
        <meta name="description" content="Furnitica - Minimalist Furniture HTML Template">
        <meta name="author" content="tivatheme">

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

    <body class="user-login blog">

        <!-- main content -->
        <div class="main-content">
            <!-- main -->

            <div id="wrapper-site">
                <div id="content-wrapper" class="full-width">
                    <div id="main">
                        <div class="container">
                            <h1 class="text-center title-page center" style="font-size: 50px; display: flex;flex-direction: column;justify-content: center;text-align: center;">ADMINISTARTOR</h1>
                            <br>
                            <br> 
                            <br>   
                            <br>
                            <h1 class="text-center title-page">Đăng nhập</h1>
                            <p class="text-danger text-center">${message}</p>
                            <div class="login-form">
                                <form id="customer-form" action="${pageContext.request.contextPath}/admin/login" method="post">
                                    <div>
                                        <input type="hidden" name="back" value="my-account">
                                        <div class="form-group no-gutters">
                                            <input class="form-control" name="username" type="text" value="${username}" placeholder="Tên người dùng">
                                        </div>
                                        <div class="form-group no-gutters">
                                            <div class="input-group js-parent-focus">
                                                <input class="form-control js-child-focus js-visible-password" name="password" type="password" value="${password}" placeholder="Mật khẩu">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="no-gutters text-center">
                                        <input type="checkbox" id="savepassword" name="savepassword">
                                        <label for="savepassword" style="padding-bottom: 10px">&ensp; Lưu mật khẩu</label>
                                    </div>
                                    <div class="clearfix">
                                        <div class="text-center no-gutters">
                                            <input type="hidden" name="submitLogin" value="1">
                                            <button class="btn btn-primary" data-link-action="sign-in" type="submit">
                                                Đăng nhập
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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


<!-- user-login11:10-->
</html>
