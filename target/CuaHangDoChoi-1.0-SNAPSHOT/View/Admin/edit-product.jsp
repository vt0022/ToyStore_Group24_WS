<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/View/Admin" var="url"></c:url>
    <!DOCTYPE html>
    <html>
        <head>
            <script src="<c:url value="/ckeditor/ckeditor.js" />"></script>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Chỉnh sửa sản phẩm</title>
        <!-- BOOTSTRAP STYLES-->
        <link href="${url}/css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME STYLES-->
        <link href="${url}/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
        <link href="${url}/css/custom.css" rel="stylesheet" />
        <!-- GOOGLE FONTS-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans'
              rel='stylesheet' type='text/css' />
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
                                <h2>Chỉnh sửa sản phẩm</h2>
                            </div>
                        </div>
                        <!-- /. ROW  -->
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <!-- Form Elements -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">Thông tin sản phẩm</div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <h3>Sản phẩm</h3>
                                            <form role="form" action="<c:url value="/admin/product/update"/>" method="post" enctype="multipart/form-data">
                                                <input name="id" value="${product.id}" hidden="">
                                                <div class="form-group">
                                                    <label>Tên:</label> 
                                                    <input class="form-control" value="${product.name}" name="name" required />
                                                </div>
                                                <div class="form-group">
                                                    <label>Giá (VNĐ): </label> 
                                                    <input class="form-control" value="${product.price}" type="number" name="price" required />
                                                </div>
                                                <div class="form-group">
                                                    <label>Số lượng: </label> 
                                                    <input class="form-control" value="${product.quantity}" type="number" name="quantity" required />
                                                </div>
                                                <div class="form-group">
                                                    <label>Giới thiệu: </label> <br>
                                                    <textarea rows="4" cols="50" name="description" required >${product.description}</textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>Nhà sản xuất: </label>
                                                    <input class="form-control" type="text" name="manufacturer" value="${product.manufacturer}" required />
                                                </div>
                                                <div class="form-group">
                                                    <label>Danh mục: </label>
                                                    <div class="checkbox">
                                                        <select name="catid">
                                                            <c:forEach items="${categorylist}" var="c">
                                                                <option value="${c.id}">${c.name}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Trạng thái:</label> 
                                                    <br>
                                                      <input type="radio" id="active" name="status" value=1 ${product.status == 1 ? "checked" : ""}>
                                                      <label for="active">Hoạt động</label><br>
                                                      <input type="radio" id="inactive" name="status" value=0 ${product.status == 0 ? "checked" : ""}>
                                                      <label for="inactive">Vô hiệu</label><br>
                                                </div>
                                                <div class="form-group">
                                                    <label>Ảnh:</label> 
                                                    <input type="file" name="image" value="${product.image}" accept="image/jpeg, image/png, image/jpg"/>
                                                </div>
                                                <div class="form-group">
                                                    <img class="img-fluid image-cover" src="<c:url value="${product.image}"/>" style="width: 200px; height: 200px" alt="img">
                                                </div>
                                                <button type="submit" class="btn btn-default">Chỉnh sửa</button>
                                                <button type="reset" onclick="location.href='<c:url value="/admin/product/manage"/>'" class="btn btn-primary">Huỷ bỏ</button>
                                            </form>


                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Form Elements -->
                        </div>
                    </div>
                    <!-- /. ROW  -->
                    <div class="row">
                        <div class="col-md-12"></div>
                    </div>
                    <!-- /. ROW  -->
                </div>
                <!-- /. PAGE INNER  -->
            </div>
            <!-- /. PAGE WRAPPER  -->
        </div>
        <!-- /. WRAPPER  -->
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
        <script src="${url}/js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="${url}/js/bootstrap.min.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="${url}/js/jquery.metisMenu.js"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="${url}/js/custom.js"></script>
        <script type="text/javascript" language="javascript">
            CKEDITOR.replace('editer', {width: '700px', height: '300px'});
        </script>
    </body>
</html>