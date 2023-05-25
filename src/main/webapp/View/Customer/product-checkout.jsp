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
        <title>Thanh toán</title>

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

    <body class="product-checkout checkout-cart">
        <!-- header -->
        <header>
            <jsp:include page="header.jsp" />
        </header>

        <!-- main content -->
        <div id="checkout" class="main-content">
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
                                        <span>Thanh toán</span>
                                    </a>
                                </li>
                            </ol>
                        </div>
                    </div>
                </nav>

                <!-- main -->
                <div id="wrapper-site">
                    <div class="container">
                        <div class="row">
                            <div id="content-wrapper" class="col-xs-12 col-sm-12 col-md-12 col-lg-12 onecol">
                                <div id="main">
                                    <div class="cart-grid row">
                                        <div class="col-md-9 check-info">
                                            <div class="checkout-personal-step">
                                                <h3 class="step-title h3 info">
                                                    <span class="step-number"></span>THÔNG TIN ĐẶT HÀNG
                                                </h3>
                                            </div>
                                            <div class="content">

                                                <div class="tab-content">
                                                    <c:if test="${sessionScope.account != null}">
                                                        <div class="tab-pane fade in active show" id="checkout-guest-form" role="tabpanel">
                                                            <form action="<c:url value="/placeorder"/>" id="customer-form" class="js-customer-form" method="post">
                                                                <div>
                                                                    <div class="desc-password">
                                                                        <span class="font-weight-bold">Họ và tên</span>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <input class="form-control" name="name" type="text" placeholder="Họ và tên" value="${sessionScope.account.name}" required="">
                                                                    </div>
                                                                    <div class="desc-password">
                                                                        <span class="font-weight-bold">Email</span>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <input class="form-control" name="email" type="email" placeholder="Email" value="${sessionScope.account.email}" required="">
                                                                    </div>
                                                                    <div class="desc-password">
                                                                        <span class="font-weight-bold">Điện thoại</span>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <input class="form-control" name="phone" type="text" placeholder="Điện thoại" value="${sessionScope.account.phone}" required="">
                                                                    </div>
                                                                    <div class="desc-password">
                                                                        <span class="font-weight-bold">Địa chỉ</span>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <input class="form-control" name="address" type="text" placeholder="Địa chỉ" value="${sessionScope.account.address}" required="">
                                                                    </div>
                                                                </div>
                                                                <div class="clearfix">
                                                                    <div class="row">
                                                                        <input type="hidden" name="submitCreate" value="1">
                                                                        <button class="continue btn btn-primary pull-xs-right" name="continue" data-link-action="register-new-customer" type="submit"
                                                                                value="1">
                                                                            Hoàn tất thanh toán
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </c:if>
                                                    <div class="tab-pane fade" id="checkout-login-form" role="tabpanel">
                                                        <form id="login-form" action="#" method="post" class="customer-form">
                                                            <div>
                                                                <input type="hidden" name="back" value="">
                                                                <div class="form-group row">
                                                                    <input class="form-control" name="email" type="email" placeholder="Email">
                                                                </div>
                                                                <div class="form-group row">
                                                                    <div class="input-group js-parent-focus">
                                                                        <input class="form-control js-child-focus js-visible-password" name="password" type="password" placeholder="Mật khẩu">
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="forgot-password">
                                                                        <a href="user-reset-password.html" rel="nofollow">
                                                                            Quên mật khẩu?
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="clearfix">
                                                                <div class="row">
                                                                    <button class="continue btn btn-primary pull-xs-right" name="continue" data-link-action="sign-in" type="submit" value="1">
                                                                        Tiếp tục
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cart-grid-right col-xs-12 col-lg-3">
                                            <div class="cart-summary">
                                                <div class="cart-detailed-totals">
                                                    <div class="cart-summary-products">
                                                        <div class="summary-label">Có ${count} mặt hàng trong giỏ hàng của bạn.</div>
                                                    </div>
                                                    <div class="cart-summary-line" id="cart-subtotal-products">
                                                        <span class="label js-subtotal">
                                                            Tổng tiền các sản phẩm: 
                                                        </span>
                                                        <span class="value">
                                                            <fmt:setLocale value = "vi_VN"/>
                                                            <fmt:formatNumber value = "${total}" type = "currency"/>
                                                        </span>
                                                    </div>
                                                    <div class="cart-summary-line" id="cart-subtotal-shipping">
                                                        <span class="label">
                                                            Tổng phí vận chuyển: 
                                                        </span>
                                                        <span class="value">Miễn phí</span>
                                                        <div>
                                                            <small class="value"></small>
                                                        </div>
                                                    </div>
                                                    <div class="cart-summary-line cart-total">
                                                        <span class="label">Tổng cộng: </span>
                                                        <span class="value">
                                                            <fmt:setLocale value = "vi_VN"/>
                                                            <fmt:formatNumber value = "${total}" type = "currency"/> (đã bao gồm thuế)
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="block-reassurance">
                                                <ul>
                                                    <li>
                                                        <div class="block-reassurance-item">
                                                            <img src="<c:url value="/View/Customer/img/other/check1.png"/>" alt="Security policy (edit with Customer reassurance module)">
                                                            <span>Chính sách bảo mật</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="block-reassurance-item">
                                                            <img src="<c:url value="/View/Customer/img/other/check2.png"/>" alt="Delivery policy (edit with Customer reassurance module)">
                                                            <span>Chính sách vận chuyển</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="block-reassurance-item">
                                                            <img src="<c:url value="/View/Customer/img/other/check3.png"/>" alt="Return policy (edit with Customer reassurance module)">
                                                            <span>Chính sách trả hàng</span>
                                                        </div>
                                                    </li>
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