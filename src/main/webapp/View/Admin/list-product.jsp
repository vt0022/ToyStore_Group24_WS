<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/View/Admin" var="url"></c:url>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Danh sách sản phẩm</title>
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
                                <h2>Danh sách sản phẩm</h2>

                            </div>
                        </div>
                        <!-- /. ROW  -->
                        <hr />

                        <div class="row">
                            <div class="col-md-12">
                                <!-- Advanced Tables -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">Chi tiết</div>
                                    <p class="text-success text-center">${message}</p>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <a href="<c:url value="/admin/product/insert"/>">
                                            <button type="submit" style="margin-bottom: 15px">Thêm</button>
                                            <br>
                                        </a>
                                        <table class="table table-striped table-bordered table-hover text-center"
                                               id="dataTables-example">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">ID</th>
                                                    <th class="text-center">Tên</th>
                                                    <th class="text-center">Ảnh</th>
                                                    <th class="text-center">Mô tả</th>
                                                    <th class="text-center">Giá (VNĐ)</th>
                                                    <th class="text-center">Số lượng</th>
                                                    <th class="text-center">Danh mục</th>
                                                    <th class="text-center">Tình trạng</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${productlist}" var="pro">
                                                    <tr class="odd gradeX">
                                                        <td>${pro.id}</td>
                                                        <td>${pro.name}</td>
                                                        <td><img height="50" width="50" src="<c:url value="${pro.image}"/>"></td>
                                                        <td>${pro.description}</td>
                                                        <td>
                                                            <fmt:setLocale value = "vi_VN"/>
                                                            <fmt:formatNumber value = "${pro.price}" type = "currency"/>
                                                        </td>
                                                        <td>${pro.quantity}</td>
                                                        <td>${pro.category.getName()}</td>
                                                        <td class="center">
                                                            <c:choose>
                                                                <c:when test="${pro.status == 0}">
                                                                    Ngừng bán
                                                                </c:when>
                                                                <c:otherwise>Đang bán</c:otherwise>
                                                            </c:choose></td>
                                                        <td>
                                                            <a href="<c:url value="/admin/product/update?id=${pro.id}"/>"
                                                               class="btn btn-warning" style="text-align: center; margin-bottom: 5px">Chỉnh sửa</a>
                                                            <br>
                                                            <a href="<c:url value="/admin/product/delete?id=${pro.id}"/>"
                                                               class="btn btn-danger">Xoá</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>

                                            </tbody>
                                        </table>
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