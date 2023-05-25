<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/View/Admin" var="url"></c:url>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Chỉnh sửa người dùng</title>
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
            <jsp:include page="/View/Admin//nav-bar.jsp"></jsp:include>
                <!-- /. NAV TOP  -->
            <jsp:include page="/View/Admin//slide-bar.jsp"></jsp:include>
                <!-- /. NAV SIDE  -->
                <div id="page-wrapper">
                    <div id="page-inner">
                        <div class="row">
                            <div class="col-md-12">
                                <h2>Chỉnh sửa tài khoản</h2>
                            </div>
                        </div>
                        <!-- /. ROW  -->
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <!-- Form Elements -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">Chỉnh sửa tài khoản</div>
                                    <p class="text-danger text-center">${message}</p>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h3>Thông tin người dùng</h3>

                                            <form role="form" action="<c:url value="/admin/account/update"/>" method="post" enctype="multipart/form-data">
                                                <input name="id" value="${thisaccount.id}" hidden="">                                
                                                <div class="form-group">
                                                    <label>Họ và tên: </label> <input class="form-control"
                                                                                      value="${thisaccount.name}" name="name" type="text" required/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Tên người dùng: </label> <input class="form-control"
                                                                                           value="${thisaccount.username}" name="username" type="text" required/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Mật khẩu: </label> <input class="form-control"
                                                                                     value ="${thisaccount.password}" type="text"
                                                                                     name="password" required/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Email:</label> <input class="form-control"
                                                                                 value="${thisaccount.email}" name="email" type="email"/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Ảnh: </label> <input type="file" name="image" accept="image/jpeg, image/png, image/jpg" />
                                                </div>
                                                <div class="form-group">
                                                    <img class="img-fluid image-cover" src="<c:url value="${thisaccount.image}"/>" style="width: 200px; height: 200px" alt="img">
                                                </div>
                                                <div class="form-group">
                                                    <label>Điện thoại: </label> <input class="form-control"
                                                                                       value="${thisaccount.phone}" name="phone" type="text"/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Địa chỉ: </label> <input class="form-control"
                                                                                    value="${thisaccount.address}" name="address" type="text"/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Vai trò:</label>
                                                    <br>
                                                    &nbsp;&nbsp;<input type="radio" value="0" name="type" ${thisaccount.type == 0 ? "checked" : ""}/>
                                                    <label for="active" style="font-weight: normal"> Admin</label>
                                                    <br>
                                                    &nbsp;&nbsp;<input type="radio" value="1" name="type" ${thisaccount.type == 1 ? "checked" : ""}/>
                                                    <label for="inactive" style="font-weight: normal"> Khách hàng</label>
                                                </div>
                                                <div class="form-group">
                                                    <label>Trạng thái:</label> 
                                                    <br>
                                                      <input type="radio" id="active" name="status" value=1 ${thisaccount.status == 1 ? "checked" : ""}>
                                                      <label for="active" style="font-weight: normal">Hoạt động</label><br>
                                                      <input type="radio" id="inactive" name="status" value=0 ${thisaccount.status == 0 ? "checked" : ""}>
                                                      <label for="inactive" style="font-weight: normal">Vô hiệu</label><br>
                                                </div>
                                                <button type="submit" class="btn btn-default">Chỉnh sửa</button>
                                                <button type="reset" onclick="location.href = '<c:url value="/admin/account/manage"/>'" class="btn btn-primary">Huỷ bỏ</button>
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

    </body>
</html>