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
        <title>Giỏ hàng</title>

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
                                    <a href="#">
                                        <span>Giỏ hàng</span>
                                    </a>
                                </li>
                            </ol>
                        </div>
                    </div>
                </nav>
                <div class="container">
                    <div class="row">
                        <div id="content-wrapper" class="col-xs-12 col-sm-12 col-md-12 col-lg-12 onecol">
                            <section id="main">
                                <div class="cart-grid row">
                                    <div class="col-md-9 col-xs-12 check-info">
                                        <h1 class="title-page">Giỏ hàng</h1>
                                        <div class="cart-container">
                                            <div class="cart-overview js-cart">
                                                <ul class="cart-items">
                                                    <li class="cart-item">
                                                        <div class="product-line-grid row justify-content-between">
                                                            <div class="text-center">
                                                                ${message}
                                                                <br>
                                                            </div>
                                                            <c:forEach items = "${cartitemlist}" var = "ci">
                                                                <!--  product left content: image-->
                                                                <div class="product-line-grid-left col-md-2">
                                                                    <span class="product-image media-middle">
                                                                        <a href="product-detail.html">
                                                                            <img class="img-fluid" src="<c:url value="${ci.product.image}"/>" alt="Ảnh sản phẩm">
                                                                        </a>
                                                                    </span>
                                                                </div>
                                                                <div class="product-line-grid-body col-md-6" style="width: 30%">
                                                                    <div class="product-line-info">
                                                                        <a class="label" href="productdetail?id=${ci.product.id}" data-id_customization="0">
                                                                            ${ci.product.name}</a>
                                                                    </div>
                                                                    <div class="product-line-info product-price">
                                                                        <span class="value">
                                                                            <fmt:setLocale value = "vi_VN"/>
                                                                            <fmt:formatNumber value = "${ci.product.price}" type = "currency"/>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                                <div class="product-line-grid-right text-center product-line-actions col-md-4">
                                                                    <div class="row">
                                                                        <div class="col-md-5 qty col">
                                                                            <div class="label">Số lượng: </div>
                                                                            <form action="${pageContext.request.contextPath}/cartupdatequantity?id=${ci.id}" method="post" class="form-control-submit">
                                                                                <div class="quantity col-xs-2" style="width: 100%">
                                                                                    <input type="hidden" name="id" value="${ci.id}" class="input-group form-control">
                                                                                    <input type="number" name="quantity" value="${ci.quantity}" class="input-group form-control checkout-cart">

                                                                                    <button type="submit" btn btn-primary style="border: none">
                                                                                        <a class="cart-button" href="${pageContext.request.contextPath}/cartupdatequantity?id=${ci.id}" data-button-action="update-cart" style="border: none">
                                                                                            <i class="fa fa-refresh" style="border: none" aria-hidden="true"></i>
                                                                                        </a>
                                                                                    </button>
                                                                                </div>
                                                                            </form>
                                                                        </div>
                                                                        <div class="col-md-5 price col">
                                                                            <div class="label">Tổng tiền: </div>
                                                                            <div class="product-price total">
                                                                                <fmt:setLocale value = "vi_VN"/>
                                                                                <fmt:formatNumber value = "${ci.product.price * ci.quantity}" type = "currency"/>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-2 text-xs-right align-self-end col">
                                                                            <div class="cart-line-product-actions ">
                                                                                <a class="remove-from-cart" rel="nofollow" href="${pageContext.request.contextPath}/deletecart?id=${ci.id}" data-link-action="delete-from-cart" data-id-product="${ci.id}">
                                                                                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </c:forEach>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <a href="${pageContext.request.contextPath}/placeorder"" class="continue btn btn-primary pull-xs-right">
                                            Thanh toán
                                        </a>
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
                                                    <span class="label">Tổng tiền: </span>
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
                            </section>
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
