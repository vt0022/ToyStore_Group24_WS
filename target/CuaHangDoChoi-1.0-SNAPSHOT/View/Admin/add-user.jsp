<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url value="/view/admin/static" var="url"></c:url>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Thêm người dùng</title>
            <!-- BOOTSTRAP STYLES-->
            <link href="css/bootstrap.css" rel="stylesheet" />
            <!-- FONTAWESOME STYLES-->
            <link href="css/font-awesome.css" rel="stylesheet" />
            <!-- CUSTOM STYLES-->
            <link href="css/custom.css" rel="stylesheet" />
            <!-- GOOGLE FONTS-->
            <link href='http://fonts.googleapis.com/css?family=Open+Sans'
                  rel='stylesheet' type='text/css' />
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
                                <h2>Thêm tài khoản</h2>
                            </div>
                        </div>
                        <!-- /. ROW  -->
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <!-- Form Elements -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">Thêm tài khoản</div>
                                    <p class="text-danger text-center">${message}</p>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h3>Thông tin tài khoản</h3>

                                            <form role="form" action="<c:url value="/admin/account/insert"/>"  method="post" enctype="multipart/form-data">
                                                <div class="form-group">
                                                    <label>Họ và tên: </label> <input class="form-control"
                                                                                      placeholder="Vui lòng nhập tên tài khoản" name="name" type="text" required/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Tên người dùng: </label> <input class="form-control"
                                                                                           placeholder="Vui lòng nhập tên người dùng" name="username" type="text" required/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Mật khẩu: </label> <input class="form-control"
                                                                                     placeholder="Vui lòng nhập mật khẩu" type="text"
                                                                                     name="password" required/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Email:</label> <input class="form-control"
                                                                                 placeholder="Please enter email" name="email" type="email"/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Ảnh: </label> <input type="file" name="image" accept="image/jpeg, image/png, image/jpg"/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Điện thoại: </label> <input class="form-control"
                                                                                       placeholder="Vui lòng nhập số điện thoại" name="phone" type="text"/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Địa chỉ: </label> <input class="form-control"
                                                                                   placeholder="Vui lòng nhập địa chỉ" name="address" type="text"/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Vai trò:</label>
                                                    <br>
                                                    &nbsp;&nbsp;<input type="radio" id="active" name="type" value=1>
                                                      <label for="active">Khách hàng</label><br>
                                                      <input type="radio" id="inactive" name="type" value=0>
                                                      <label for="inactive">Admin</label><br>

                                                </div>
                                                <div class="form-group">
                                                    <label>Trạng thái:</label> 
                                                    <br>
                                                      <input type="radio" id="active" name="status" value=1>
                                                      <label for="active">Hoạt động</label><br>
                                                      <input type="radio" id="inactive" name="status" value=0>
                                                      <label for="inactive">Vô hiệu</label><br>
                                                </div>
                                                <button type="submit" class="btn btn-default">Tạo</button>
                                                <button type="reset" onclick="location.href='<c:url value="/admin/account/manage"/>'" class="btn btn-primary">Huỷ bỏ</button>
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
        <script src="/js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="/js/bootstrap.min.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="/js/jquery.metisMenu.js"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="/js/custom.js"></script>

    </body>
</html>