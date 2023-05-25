<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

    <body id="product-detail">
        <!-- header -->
        <header>
            <jsp:include page="header.jsp" />
        </header>

        <!-- main content -->
        <div class="main-content">
            <div id="wrapper-site">
                <div id="content-wrapper">
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
                                                <a href="#">
                                                    <span>${detail.name}</span>
                                                </a>
                                            </li>
                                        </ol>
                                    </div>
                                </div>
                            </nav>
                            <div class="container">
                                <div class="content">
                                    <div class="row">
                                        <div class="sidebar-3 sidebar-collection col-lg-3 col-md-3 col-sm-4">

                                            <!-- category -->
                                            <div class="sidebar-block">
                                                <div class="title-block">Danh mục</div>
                                                <div class="block-content">
                                                    <c:forEach items="${categorylist}" var="cat">
                                                        <div class="cateTitle hasSubCategory open level1">
                                                            <a class="cateItem" href="categorylist?id=${cat.id}">${cat.name}</a>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-8 col-lg-9 col-md-9">
                                            <div class="main-product-detail">

                                                <h2><a href="updatecartquantity?id=${detail.id}">${detail.name}</a></h2>
                                                <div class="product-single row">
                                                    <div class="product-detail col-xs-12 col-md-5 col-sm-5">
                                                        <div class="page-content" id="content">
                                                            <div class="images-container">
                                                                <div class="js-qv-mask mask tab-content border">
                                                                    <div id="item1" class="tab-pane fade active in show">
                                                                        <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                    </div>
                                                                    <div id="item2" class="tab-pane fade">
                                                                        <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                    </div>
                                                                    <div id="item3" class="tab-pane fade">
                                                                        <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                    </div>
                                                                    <div id="item4" class="tab-pane fade">
                                                                        <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                    </div>
                                                                    <div class="layer hidden-sm-down" data-toggle="modal" data-target="#product-modal">
                                                                        <i class="fa fa-expand"></i>
                                                                    </div>
                                                                </div>
                                                                <ul class="product-tab nav nav-tabs d-flex">
                                                                    <li class="active col">
                                                                        <a href="#item1" data-toggle="tab" aria-expanded="true" class="active show">
                                                                            <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                        </a>
                                                                    </li>
                                                                    <li class="col">
                                                                        <a href="#item2" data-toggle="tab">
                                                                            <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                        </a>
                                                                    </li>
                                                                    <li class="col">
                                                                        <a href="#item3" data-toggle="tab">
                                                                            <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                        </a>
                                                                    </li>
                                                                    <li class="col">
                                                                        <a href="#item4" data-toggle="tab">
                                                                            <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                                <div class="modal fade" id="product-modal" role="dialog">
                                                                    <div class="modal-dialog">

                                                                        <!-- Modal content-->
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <div class="modal-body">
                                                                                    <div class="product-detail">
                                                                                        <div>
                                                                                            <div class="images-container">
                                                                                                <div class="js-qv-mask mask tab-content">
                                                                                                    <div id="modal-item1" class="tab-pane fade active in show">
                                                                                                        <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                                                    </div>
                                                                                                    <div id="modal-item2" class="tab-pane fade">
                                                                                                        <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                                                    </div>
                                                                                                    <div id="modal-item3" class="tab-pane fade">
                                                                                                        <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                                                    </div>
                                                                                                    <div id="modal-item4" class="tab-pane fade">
                                                                                                        <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <ul class="product-tab nav nav-tabs">
                                                                                                    <li class="active">
                                                                                                        <a href="#modal-item1" data-toggle="tab" class=" active show">
                                                                                                            <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                                                        </a>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                        <a href="#modal-item2" data-toggle="tab">
                                                                                                            <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                                                        </a>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                        <a href="#modal-item3" data-toggle="tab">
                                                                                                            <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                                                        </a>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                        <a href="#modal-item4" data-toggle="tab">
                                                                                                            <img src="<c:url value="${detail.image}"/>" alt="img">
                                                                                                        </a>
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
                                                    </div>
                                                    <div class="product-info col-xs-12 col-md-7 col-sm-7">
                                                        <div class="detail-description">
                                                            <div class="price-del">
                                                                <span class="price">
                                                                    <fmt:setLocale value = "vi_VN"/>
                                                                    <fmt:formatNumber value = "${detail.price}" type = "currency"/>
                                                                </span>
                                                            </div>
                                                            <p class="description">${detail.description}</p>
                                                            <div class="has-border cart-area">
                                                                <div class="product-quantity">
                                                                    <div class="qty">
                                                                        <div class="input-group">
                                                                            <form action="${pageContext.request.contextPath}/addcart" method="post" class="formAddToCart form-control-submit">
                                                                            <div class="quantity">
                                                                                <span class="control-label">SỐ LƯỢNG:</span>
                                                                                <input type="number" name="quantity" id="quantity_wanted" value="1" min="1" max="${detail.quantity}" class="input-group form-control">
                                                                            </div>
                                                                            <span class="add"> 
                                                                                    <input type="hidden" name="id" id="quantity_wanted" value="${detail.id}" class="input-group form-control">
                                                                                        <button class="btn btn-primary add-to-cart add-item" data-button-action="add-to-cart" type="submit" style="margin-top: 8px">
                                                                                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                                                                            <span>Thêm vào giỏ hàng</span>
                                                                            </span>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="clearfix"></div>
                                                                <p class="product-minimal-quantity"></p>
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
