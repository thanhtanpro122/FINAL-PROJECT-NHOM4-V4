<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="vi">

<head>
    <title>Tài khoản của tôi - Tiêu Dân Seafood</title>
    <!--meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--//meta tags ends here-->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
    <!--  -->
    <!--//booststrap end-->
    <!-- font-awesome icons -->
    <link href="resources/css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
    <!-- //font-awesome icons -->
    <!--Shoping cart-->
    <link rel="stylesheet" href="resources/css/shop.css" type="text/css" />
    <!--//Shoping cart-->
    <!--stylesheets-->
    <link href="resources/css/style.css" rel='stylesheet' type='text/css' media="all">
    <link href="resources/css/account.css" rel='stylesheet' type='text/css' media="all">
    <!--//stylesheets-->
    <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!--js working-->
    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/woocommerce.js"></script>
    <script src="resources/js/minicart.js"></script>
    <script src="resources/js/jquery-3.3.1.min.js"></script>
    <script src="resources/js/jquery-ui.js"></script>
    <script type="text/javascript" src="resources/js/widget.js"></script>
    <!--bootstrap working-->
    <script src="resources/js/bootstrap.min.js"></script>
    <!-- //bootstrap working-->
    <!-- //cart-js -->
    <!-- start-smoth-scrolling -->
    <script src="resources/js/move-top.js"></script>
    <script src="resources/js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
    <!-- here stars scrolling icon -->
    <script>
        $(document).ready(function () {

            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear'
            };
            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!-- //here ends scrolling icon -->
    <script type="text/javascript">
        function checkPassword(str) {
            var re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}$/;
            return re.test(str);
        }
        function checkForm(form) {
            // if (form.username.value == "") {
            //     alert("Error: Username cannot be blank!");
            //     form.username.focus();
            //     return false;
            // }
            // re = /^\w+$/;
            // if (!re.test(form.username.value)) {
            //     alert("Error: Username must contain only letters, numbers and underscores!");
            //     form.username.focus();
            //     return false;
            // }
            if (form.new_password.value != "" && form.re_new_password.value == form.new_password.value) {
                if (!checkPassword(form.new_password.value)) {
                    alert("Mật khảo bạn nhập không hợp lệ!");
                    form.new_password.focus();
                    return false;
                }
            } else {
                alert("Mật khẩu và nhập lại không khớp, vui lòng nhập lại!");
                form.new_password.focus();
                return false;
            }
            return true;
        }
    </script>
</head>

<body class="account">
    <header>
        <div class="header-outs" id="home">
            <div class="header-bar">
                <div class="info-top-grid">
                    <div class="info-contact-agile">
                        <ul>
                            <li>
                                <span class="fas fa-phone-volume"></span>
                                <p>+(058) 606 0734</p>
                            </li>
                            <li>
                                <span class="fas fa-envelope"></span>
                                <p><a href="mailto:info@example.com">tieudanseafood@gmail.com</a></p>
                            </li>
                            <li class="float-md-right">
                                <span class="fas fa-user"></span>
                                <p>Chào <a href="Profile.jsp">Diêu</a></p>
                                <p>|</p>
                                <p><a href="TrangChu.jsp">Thoát</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="hedder-up row">
                        <div style="width:70%" class="col-lg-3 col-md-3 logo-head">
                            <li>
                                <a class="navbar-brand" href="TrangChu.jsp" style="margin-left: 31%">
                                    <div class="logo"><img src="resources/images/CrabICO.png" alt=""> </div>
                                </a>
                                <h4 style="display:inline-block"><strong><a href="TrangChu.jsp">Tiêu Dân Seafood </a></strong></h4>
                            </li>
                        </div>
                        <div class="col-lg-5 col-md-6 search-right">
                            <form style="padding-top:6%" class="form-inline my-lg-0">
                                <input class="form-control mr-sm-2" type="search" placeholder="Bạn muốn tìm kiếm...">
                                <button class="btn" type="submit">Search</button>
                            </form>
                        </div>
                        <div class="col-lg-4 col-md-3 right-side-cart">
                            <div style="margin-top:2%" class="cart-icons">
                                <ul style="text-align:start">
                                    <li style="padding-right: 15pt">
                                        <p style="padding-bottom: 15pt"><strong><a href="tel:+01269220162">0168 xxxx
                                                    xxx</a></strong></p>
                                        <p>Tổng đài miễn phí</a></p>
                                    </li>
                                    <li style="padding-right: 15pt">
                                        <p style="padding-bottom: 15pt"><strong><a href="#">CÔNG THỨC</a></strong></p>
                                        <p>Đảm đang - Khéo léo</a></p>
                                    </li>
                                    <li style="position:relative" class="toyscart toyscart2 cart cart box_1">
                                        <form action="#" method="post" class="last">
                                            <input type="hidden" name="cmd" value="_cart">
                                            <input type="hidden" name="display" value="1">
                                            <p style="display:inline-block"><strong><a href="#">GIỎ HÀNG</a></strong></p>
                                            <button class="top_toys_cart" type="submit" name="submit" value="">
                                                <span class="fas fa-cart-arrow-down"></span>
                                            </button>
                                        </form>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <nav class="navbar navbar-expand-lg navbar-light">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                        <ul class="navbar-nav ">
                            <li class="nav-item active">
                                <a class="nav-link" href="TrangChu.jsp">Trang chủ <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a href="about.jsp" class="nav-link">Giới thiệu</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Sản phẩm
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="nav-link" href="Products.jsp">Cá</a>
                                    <a class="nav-link " href="#!">Tôm</a>
                                    <a class="nav-link " href="#!">Mực</a>
                                    <a class="nav-link " href="#!">Cua - ghẹ</a>
                                    <a class="nav-link " href="#!">Ngao - Sò - Ốc</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a href="#!" class="nav-link">Công thức chế biến</a>
                            </li>
                            <li class="nav-item">
                                <a href="LienHe.jsp" class="nav-link">Liên hệ</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
    </header>
    <!-- banner -->
    <div class="inner_page-banner one-img">
    </div>
    <!-- banner -->
    <!-- Modal 1-->
    <div class="modal fade" id="LoginModal" tabindex="-1" role="dialog" aria-labelledby="LoginModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="LoginModalLabel">Đăng nhập</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="register-form">
                        <form action="#" method="post" onsubmit="return checkForm(this)">
                            <div class="fields-grid">
                                <div class="styled-input">
                                    <input type="email" placeholder="Email của bạn" name="Your Email" required="">
                                </div>
                                <div class="styled-input">
                                    <input type="password" placeholder="Nhập password" name="password" required="">
                                </div>
                                <button type="submit" class="btn subscrib-btnn">Đăng nhập</button>
                            </div>
                        </form>
                        <label>
                            <input type="checkbox" checked="checked" name="remember"> Remember me
                        </label>
                    </div>
                </div>
                <div class="container" style="padding: 11px; background-color:beige">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <span style="padding-top: 5px; float: right">Forgot <a data-toggle="modal" data-target="#ForgetPasswordModal">password?</a></span>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="ForgetPasswordModal" role="dialog" aria-labelledby="ForgetPasswordModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <form action="#" method="post">
                    <div class="modal-header" style="display: block;">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h2 class="modal-title" id="ForgetPasswordModalLabel">Quên mật khẩu?</h2>
                        <span>Vui lòng cung cấp email hoặc số điện thoại đăng nhập để lấy lại mật khẩu.</span>
                    </div>
                    <div class="modal-body">
                        <input type="email" name="email" id="email-forgot" class="form-control" value="" placeholder="Nhập email hoặc số điện thoại"
                            data-bv-field="email" required>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-secondary">Gửi</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- //Modal 1-->

    <!-- Breadcrumb -->
    <ul class="breadcrumb">
        <div class="container">
            <li><a href="TrangChu.jsp">Trang chủ</a></li>
            <li>Đổi mật khẩu</li>
        </div>
    </ul>
    <!-- Breadcrumb -->

    <div class="gap-element" style="display:block; height:auto; padding-top:15px"></div>
    <div class="wrap">
        <div class="container">
            <div class="row">
                <div class="side-bar col-md-3">
                    <div class="menu-left">
                        <div class="profiles">
                            <p class="image"><img src="resources/images/userICO.png" alt="" width="45" height="45"></p>
                            <p class="name" style="text-align: left">Tài khoản của</p>
                            <strong>
                                <h6>Jaxkie Phạm</h6>
                            </strong>
                        </div>
                        <ul class="list-group margin-bottom-25 sidebar-menu">
                            <li class="list-group-item clearfix"><a href="Profile.jsp"><i class="fa fa-angle-right"></i>
                                    Thông
                                    tin tài khoản</a></li>
                            <li class="list-group-item clearfix"><a href="Profile_Password.jsp"><i class="fa fa-angle-right"></i>
                                    Đổi mật
                                    khẩu</a></li>
                            <li class="list-group-item clearfix"><a href="Profile_BillManagement.jsp"><i class="fa fa-angle-right"></i>
                                    Quản lý
                                    đơn
                                    hàng</a></li>
                            <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i> Nhận xét
                                    sản
                                    phẩm đã mua</a></li>
                            <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i> Nhận xét
                                    của
                                    tôi</a></li>
                            <li class="list-group-item clearfix"><a href="TrangChu.jsp"><i class="fa fa-angle-right"></i>
                                    Thoát
                                    tài
                                    khoản</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-9">
                    <!-- <div class="alert alert-success">Thông tin tài khoản của bạn đã được cập nhật.</div> -->
                    <h1 class="have-margin">Quản lý đơn hàng</h1>
                    <div class="dashboard-order have-margin">
                        <table class="table-responsive-2 list">
                            <thead>
                                <tr>
                                    <th>
                                        <span class="hidden-xs hidden-sm hidden-md">Mã đơn hàng</span>
                                        <!-- <span class="hidden-lg">Code</span> -->
                                    </th>
                                    <th>Ngày mua</th>
                                    <th>Sản phẩm</th>
                                    <th>Tổng tiền</th>
                                    <th>
                                        <span class="hidden-xs hidden-sm hidden-md">Trạng thái <br> đơn hàng</span>
                                        <!-- <span class="hidden-lg">Trạng thái</span> -->
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><a href="#">390412659</a></td>
                                    <td>16/10/2018</td>
                                    <td>Cua Cà Mau</td>
                                    <td>1.390.000&nbsp;₫</td>
                                    <!--                                <td><span class="color--->
                                    <!--">-->
                                    <!--</span></td>-->
                                    <td>
                                        <span class="order-status">
                                            Giao hàng thành công </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#">609717465</a></td>
                                    <td>14/10/2018</td>
                                    <td>Cá mú nghệ</td>
                                    <td>180.520&nbsp;₫</td>
                                    <!--                                <td><span class="color--->
                                    <!--">-->
                                    <!--</span></td>-->
                                    <td>
                                        <span class="order-status">
                                            Giao hàng thành công </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#">790273678</a></td>
                                    <td>24/08/2018</td>
                                    <td>Tôm càng xanh</td>
                                    <td>59.662&nbsp;₫</td>
                                    <!--                                <td><span class="color--->
                                    <!--">-->
                                    <!--</span></td>-->
                                    <td>
                                        <span class="order-status">
                                            Giao hàng thành công </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#">442055082</a></td>
                                    <td>24/08/2018</td>
                                    <td>Tôm hùm Alaska</td>
                                    <td>126.718&nbsp;₫</td>
                                    <!--                                <td><span class="color--->
                                    <!--">-->
                                    <!--</span></td>-->
                                    <td>
                                        <span class="order-status">
                                            Giao hàng thành công </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#">395372680</a></td>
                                    <td>24/05/2018</td>
                                    <td>Tôm sú</td>
                                    <td>95.000&nbsp;₫</td>
                                    <!--                                <td><span class="color--->
                                    <!--">-->
                                    <!--</span></td>-->
                                    <td>
                                        <span class="order-status">
                                            Giao hàng thành công </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#">596878797</a></td>
                                    <td>19/04/2018</td>
                                    <td>Cá chim</td>
                                    <td>64.000&nbsp;₫</td>
                                    <!--                                <td><span class="color--->
                                    <!--">-->
                                    <!--</span></td>-->
                                    <td>
                                        <span class="order-status">
                                            Giao hàng thành công </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#">474416233</a></td>
                                    <td>03/03/2018</td>
                                    <td>Cua lột</td>
                                    <td>120.690&nbsp;₫</td>
                                    <!--                                <td><span class="color--->
                                    <!--">-->
                                    <!--</span></td>-->
                                    <td>
                                        <span class="order-status">
                                            Giao hàng thành công </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#">862718600</a></td>
                                    <td>03/03/2018</td>
                                    <td>Cua gạch son</td>
                                    <td>129.310&nbsp;₫</td>
                                    <!--                                <td><span class="color--->
                                    <!--">-->
                                    <!--</span></td>-->
                                    <td>
                                        <span class="order-status">
                                            Giao hàng thành công </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#">314342657</a></td>
                                    <td>08/02/2018</td>
                                    <td>Ốc móng tay</td>
                                    <td>139.000&nbsp;₫</td>
                                    <!--                                <td><span class="color--->
                                    <!--">-->
                                    <!--</span></td>-->
                                    <td>
                                        <span class="order-status">
                                            Đã hủy </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#">396397010</a></td>
                                    <td>28/01/2018</td>
                                    <td>Ốc môi đỏ</td>
                                    <td>194.000&nbsp;₫</td>
                                    <!--                                <td><span class="color--->
                                    <!--">-->
                                    <!--</span></td>-->
                                    <td>
                                        <span class="order-status">
                                            Giao hàng thành công </span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="col-md-8 col-sm-8">
                            <div class="pagination pull-right">
                                <a href="#">«</a>
                                <a class="active" href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#">»</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- footer -->
    <div class="gap-element" style="display:block; height:auto; padding-top:15px"></div>
    <footer class="page-footer font-small mdb-color pt-4">

        <!-- Footer Links -->
        <div class="container text-center text-md-left">

            <!-- Footer links -->
            <div class="row text-center text-md-left mt-3 pb-3">

                <!-- Grid column -->
                <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                    <h6 class="text-uppercase mb-4 font-weight-bold">Tiêu Dân</h6>
                    <p>Hân hạnh phục vụ bạn.</p>
                </div>
                <!-- Grid column -->

                <hr class="w-100 clearfix d-md-none">

                <!-- Grid column -->
                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
                    <h6 class="text-uppercase mb-4 font-weight-bold">MENU</h6>
                    <p>
                        <a href="TrangChu.jsp">Trang chủ</a>
                    </p>
                    <p>
                        <a href="About.jsp">Giới thiệu</a>
                    </p>
                    <p>
                        <a href="LienHe.jsp">Liên hệ</a>
                    </p>
                    <p>
                        <a href="DSCongthucchebien.jsp">Món ngon</a>
                    </p>
                </div>
                <!-- Grid column -->

                <hr class="w-100 clearfix d-md-none">

                <!-- Grid column -->
                <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                    <h6 class="text-uppercase mb-4 font-weight-bold">Thông tin hữu ích</h6>
                    <p>
                        <a href="">Giao nhận hàng</a>
                    </p>
                    <p>
                        <a href="#!">Chính sách đổi trả hàng</a>
                    </p>
                    <p>
                        <a href="#!">Chính sách Giải quyết khiếu nại</a>
                    </p>
                    <p>
                        <a href="#!">Cam kết chất lượng</a>
                    </p>
                </div>

                <!-- Grid column -->
                <hr class="w-100 clearfix d-md-none">

                <!-- Grid column -->
                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                    <h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
                    <p>
                        <i class="fa fa-home mr-3"></i> 01 Võ Văn Ngân</p>
                    <p>
                        <i class="fa fa-envelope mr-3"></i> tieudanseafood@gmail.com</p>
                    <p>
                        <i class="fa fa-phone mr-3"></i> + 01 234 567 88</p>
                    <p>
                        <i class="fa fa-print mr-3"></i> + 01 234 567 89</p>
                </div>
                <!-- Grid column -->

            </div>
            <!-- Footer links -->

            <hr>

            <!-- Grid row -->
            <div class="row d-flex align-items-center">

                <!-- Grid column -->
                <div class="col-md-7 col-lg-8">

                    <!--Copyright-->
                    <p class="text-center text-md-left">© 2018 Copyright:
                        <strong> tieudanseafood</strong>
                        </a>
                    </p>

                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-5 col-lg-4 ml-lg-0">

                    <!-- Social buttons -->
                    <div class="text-center text-md-right">
                        <ul class="list-unstyled list-inline">
                            <li class="list-inline-item">
                                <a class="btn-floating btn-sm rgba-white-slight mx-1">
                                    <i class="fab fa-facebook-square"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="btn-floating btn-sm rgba-white-slight mx-1">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="btn-floating btn-sm rgba-white-slight mx-1">
                                    <i class="fab fa-google-plus-g"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="btn-floating btn-sm rgba-white-slight mx-1">
                                    <i class="fab fa-linkedin-in"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- Grid column -->
            </div>
            <!-- Grid row -->
        </div>
        <!-- Footer Links -->
    </footer>
    <!-- footer -->
</body>

</html>