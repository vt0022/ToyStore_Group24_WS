<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/View/Admin" var="url"></c:url>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Danh mục sản phẩm</title>
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

            <jsp:include page="nav-bar.jsp"></jsp:include>

                <!-- /. NAV TOP  -->
            <jsp:include page="slide-bar.jsp"></jsp:include>
                <!-- /. NAV SIDE  -->
                <div id="page-wrapper">
                    <div id="page-inner">
                        <div class="row">
                            <div class="col-md-12">
                                <h2>Tất cả danh mục</h2>
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
                                            <form action="<c:url value="/View/Admin/add-category.jsp"/>" method="get">
                                                <button type="submit" style="margin-bottom: 15px">Thêm</button>
                                                <br>
                                            </form>
                                            <table class="table table-striped table-bordered table-hover text-center"
                                                   id="dataTables-example">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center">ID</th>
                                                        <th class="text-center">Tên</th>
                                                        <th class="text-center">Trạng thái</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${categorylist}" var="cat" >
                                                    <tr class="odd gradeX">
                                                        <td>${cat.id}</td>
                                                        <td>${cat.name}</td>
                                                        <c:if test="${cat.status == 1}">
                                                            <td>Đang bán</td>
                                                        </c:if>
                                                        <c:if test="${cat.status == 0}">
                                                            <td>Đã ngừng bán</td>
                                                        </c:if>
                                                        <td>
                                                            <a href="<c:url value="/admin/category/update?id=${cat.id}"/>"
                                                               class="btn btn-warning center" style="text-align: center; margin-bottom: 5px">Chỉnh sửa
                                                            </a>
                                                               <br>
                                                            <a
                                                                href="<c:url value="/admin/category/delete?id=${cat.id}"/>"
                                                                class="btn btn-danger">Xoá
                                                            </a>
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