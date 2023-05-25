<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/View/Admin" var="url"></c:url>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Chi tiết đơn hàng</title>
            <!-- BOOTSTRAP STYLES-->
            <link href="${url}/css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME STYLES-->
        <link href="${url}/css/font-awesome.css" rel="stylesheet" />
        <!-- MORRIS CHART STYLES-->

        <!-- CUSTOM STYLES-->
        <link href="${url}/css/custom.css" rel="stylesheet" />
        <!-- GOOGLE FONTS-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans'
              rel='stylesheet' type='text/css' />
        <!-- TABLE STYLES-->
        <link href="${url}/js/dataTables/dataTables.bootstrap.css"
              rel="stylesheet" />
    </head>
    <body>
        <div id="wrapper">

            <jsp:include page="/View/Admin/nav-bar.jsp"></jsp:include>

                <!-- /. NAV TOP  -->
            <jsp:include page="/View/Admin/slide-bar.jsp"></jsp:include>
                <!-- /. NAV SIDE  -->
                <div id="page-wrapper">
                    <div id="page-inner">
                        <div class="row">
                            <div class="col-md-12">
                                <h2>Chi tiết đơn hàng</h2>

                            </div>
                        </div>
                        <!-- /. ROW  -->
                        <hr />

                        <div class="row">
                            <div class="col-md-12">
                                <!-- Advanced Tables -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">Chi tiết</div>
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-striped table-bordered table-hover"
                                                   id="dataTables-example">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center">ID</th>
                                                        <th class="text-center">Đơn hàng</th>
                                                        <th class="text-center">Sản phẩm</th>
                                                        <th class="text-center">Ảnh</th>
                                                        <th class="text-center">Giá (VNĐ)</th>
                                                        <th class="text-center">Số lượng</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${orderitem}" var="oi">
                                                    <tr class="odd gradeX">
                                                        <td class="text-center">${oi.id}</td>
                                                        <td class="text-center">${oi.order.id}</td>
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
                                        <form action="${pageContext.request.contextPath}/admin/order/manage" method="post">
                                            <button type="submit" style="margin-bottom: 15px">Quay lại</button>
                                            <br>
                                        </form>
                                    </div>

                                </div>
                            </div>
                            <!--End Advanced Tables -->
                        </div>
                    </div>

                </div>

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
        <!-- /. WRAPPER  -->
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
        <script src="${url}/js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="${url}/js/bootstrap.min.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="${url}/js/jquery.metisMenu.js"></script>
        <!-- DATA TABLE SCRIPTS -->
        <script src="${url}/js/dataTables/jquery.dataTables.js"></script>
        <script src="${url}/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
        </script>
        <!-- CUSTOM SCRIPTS -->
        <script src="${url}/js/custom.js"></script>

    </body>
</html>