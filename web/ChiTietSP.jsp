<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="vi">

<head>
    <title>Sản phẩm - Cá mặt quỷ</title>
    <!--meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="resources/js/jquery-2.2.3.min.js"></script>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!--//meta tags ends here-->
    <!--booststrap-->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" id="bootstrap-css">
    <!-- <link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"> -->

    <!--//booststrap end-->
    <!-- font-awesome icons -->
    <link href="resources/css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
    <!-- //font-awesome icons -->
    <link href="resources/css/JiSlider.css" rel="stylesheet">
    <!--Shoping cart-->
    <link rel="stylesheet" href="resources/css/shop.css" type="text/css" />
    <!--//Shoping cart-->
    <!--stylesheets-->
    <link href="resources/css/style.css" rel='stylesheet' type='text/css' media="all">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <!--//stylesheets-->
    <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/w3.css">
    <!--js working-->

    <script src="resources/js/minicart.js"></script>
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
    <!--bootstrap working-->
    <script src="resources/js/bootstrap.min.js"></script>
    <!-- //bootstrap working-->
    <!-- Slideshow Indicators -->
    <script>
        function currentDiv(n) {
            showDivs(slideIndex = n);
        }

        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("product");
            if (n > x.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = x.length }
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
            }
            x[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " w3-opacity-off";
        }
    </script>
    <!-- Slideshow Indicators -->
    <!-- Tab Detail -->
    <script>
        function tabDetail(evt, delCom) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            document.getElementById(delCom).style.display = "block";
            evt.currentTarget.className += " active";
        }
    </script>
    <!-- Tab Detail -->
</head>

<body>
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
                                <p><a href="mailto:info@Login.com">tieudanseafood@gmail.com</a></p>
                            </li>
                            <c:choose>
                                <c:when test="${currentSessionUser == null}">
                                    <li class="float-md-right">
                                        <span class="fas fa-user"></span>
                                        <p><a data-toggle="modal" href="#LoginModal">Đăng nhập</a></p>
                                        <p>|</p>
                                        <p><a href="/DangKyThanhVien">Đăng ký</a></p>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="float-md-right">
                                        <span class="fas fa-user"></span>
                                        <p>Chào <a href="/Profile">${currentSessionUser.hoTen}</a></p>
                                        <p>|</p>
                                        <p><a href="/Logout">Thoát</a></p>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="hedder-up row">
                        <div style="width:70%" class="col-lg-3 col-md-3 logo-head">
                            <li>
                                <a class="navbar-brand" href="/Index" style="margin-left: 31%">
                                    <div class="logo"><img src="resources/images/CrabICO.png" alt=""> </div>
                                </a>
                                <h4 style="display:inline-block"><strong><a href="/Index">Tiêu Dân Seafood</a></strong></h4>
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
                                        <p>Tổng đài miễn phí</p>
                                    </li>
                                    <li style="padding-right: 15pt">
                                        <p style="padding-bottom: 15pt"><strong><a href="/DSBaiViet">CÔNG THỨC</a></strong></p>
                                        <p>Đảm đang - Khéo léo</p>
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
                            <li class="nav-item">
                                <a class="nav-link" href="/Index">Trang chủ <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a href="/GioiThieu" class="nav-link">Giới thiệu</a>
                            </li>
                            <li class="nav-item dropdown active">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Sản phẩm
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <c:forEach var="danhMuc" items="${requestScope.danhMucs}">
                                        <a class="nav-link" href="/Products?idDM=${danhMuc.maDanhmuc}">${danhMuc.tenDanhmuc}</a>
                                    </c:forEach>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a href="/DSBaiViet" class="nav-link">Công thức chế biến</a>
                            </li>
                            <li class="nav-item">
                                <a href="/LienHe" class="nav-link">Liên hệ</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <!-- Banner -->
    <div class="inner_page-banner one-img">
    </div>
    <!-- Banner -->
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
                        <form action="/Login" onsubmit="return checkForm(this)">
                            <div class="fields-grid">
                                <div class="styled-input">
                                    <input type="email" placeholder="Email của bạn" name="email" required="">
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

    <ul class="breadcrumb">
        <div class="container">
            <li><a href="TrangChu.jsp">Trang chủ</a></li>
            <li>${sanPham.maDanhMuc}</li>
        </div>
    </ul>
    <div class="gap-element" style="display:block; height:auto; padding-top:30px"></div>

    <main class="page-content">
        <div class="container">
            <div class="row">
                <div class="side-bar col-md-3 col-lg-3 col-sm-12 col col-xs-12">
                    <div class="left-side">
                        <h3 class="agileits-sear-head">CÁC SẢN PHẨM LIÊN QUAN</h3>
                        <ul>
                            <c:forEach var="sanPhamLQ" items="${requestScope.sanPhamLQ}">
                            <li>
                                <a href="/CTSanPham?idSP=${sanPhamLQ.maSP}">
                                    <div class="image" style="display:flex;">
                                        <img src="resources/images/Fish/ca-chep-gion01.jpg">
                                        <div class="name">
                                            <p>${sanPhamLQ.tenSP}</p><br>
                                            <p>
                                                ${sanPhamLQ.giaSP}
                                                <em>đ/kg</em>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <hr>
                    <!-- Bai Viet Noi Bat -->
                    <div class="left-side">
                        <h3 class="agileits-sear-head">BÀI VIẾT NỔI BẬT</h3>
                        <ul>
                            <c:forEach var="baiViet" items="${requestScope.baiViets}">
                            <li>
                                <a href="/XemCTBaiViet?iDBV=${baiViet.maBaiViet}">
                                    <img src="resources/images/ca-mu-hap-hanh.jpg" width="70px" height="70px">
                                    <p>${baiViet.tieuDe}</p>
                                </a>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <!-- Bai Viet Noi Bat -->
                </div>
                <div class="col-md-9 col-lg-9 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="col-md-8 col-sm-12 col-xs-12">
                            <div class="w3-content" style="max-width:1200px">
                                <img class="mySlides" src="resources/images/Fish/Ca-mat-quy01.jpg" style="width:100%;display:none">
                                <img class="mySlides" src="resources/images/Fish/ca-mat-quy02.jpg" style="width:100%">
                                <img class="mySlides" src="resources/images/Fish/ca-mat-quy03.jpg" style="width:100%;display:none">

                                <div class="w3-row-padding w3-section">
                                    <div class="w3-col s4">
                                        <img class="product w3-opacity w3-hover-opacity-off" src="resources/images/Fish/ca-mat-quy01.jpg"
                                            style="width:100%;cursor:pointer" onclick="currentDiv(1)">
                                    </div>
                                    <div class="w3-col s4">
                                        <img class="product w3-opacity w3-hover-opacity-off" src="resources/images/Fish/Ca-mat-quy02.jpg"
                                            style="width:100%;cursor:pointer" onclick="currentDiv(2)">
                                    </div>
                                    <div class="w3-col s4">
                                        <img class="product w3-opacity w3-hover-opacity-off" src="resources/images/Fish/ca-mat-quy03.jpg"
                                            style="width:100%;cursor:pointer" onclick="currentDiv(3)">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <div class="name">
                                <h2 style="font-size: 45px">${sanPham.tenSP}</h2>
                            </div>
                            <hr>
                            <div style="font-size: 20px;text-align: center">
                                <em>${sanPham.giaSP}<span>đ/kg</span></em>
                                <div class="gap-element" style="display:block; height:auto; padding-top:30px"></div>
                                <form>
                                    <input type="number" min="1" value="1" style="width:50px">
                                    <button class="button buttonorange" style="vertical-align:middle"><span>THÊM VÀO
                                            GIỎ </span></button>
                                </form>
                            </div>
                            <hr>
                            <h3>Danh mục:<a href="/Products?idDM=${sanPham.maDanhMuc}"><span id="danhmuc">${sanPham.maDanhMuc}</span></a></h3>
                        </div>
                    </div>
                    <div class="gap-element" style="display:block; height:auto; padding-top:5px"></div>
                    <hr>
                    <div class="gap-element" style="display:block; height:auto; padding-top:5px"></div>
                    <div class="tab">
                        <button class="tablinks active" onclick="tabDetail(event, 'detail')"><strong>Mô tả</strong></button>
                        <button class="tablinks" onclick="tabDetail(event, 'comment')"><strong>Đánh giá</strong></button>
                    </div>
                    <div id="detail" class="tabcontent" style="display: block">
                        <!-- <h3>London</h3> -->
                        <p>
                           ${sanPham.moTa}
                        </p>
                    </div>
                    <div id="comment" class="tabcontent">
                        <div class="comment">
                            <h3>Comments</h3>
                            <a href="#" class="pull-left">
                                <img alt="" src="resources/images/Oyster/hausua01.png">
                            </a>
                            <div class="comment-body">
                                <h4 class="comment-heading">Anh Hàu
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                </h4>
                                <p>
                                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus
                                    commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                                    Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
                                </p>
                                <hr>
                                <!-- Nested media object -->
                            </div>
                        </div>
                        <div class="comment">
                            <a href="#" class="pull-left">
                                <img alt="" src="resources/images/Oyster/hausua01.png">
                            </a>
                            <div class="comment-body">
                                <h4 class="comment-heading">comment heading
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    </span>
                                </h4>
                                <p>
                                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac
                                    cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo
                                    sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed
                                    odio dui.
                                </p>
                            </div>
                        </div>
                        <!--end comment-->
                        <hr>
                        <div class="comment">
                            <a href="#" class="pull-left">
                                <img alt="" src="resources/images/Oyster/hausua01.png">
                            </a>
                            <div class="comment-body">
                                <h4 class="comment-heading">comment heading
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                </h4>
                                <p>
                                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac
                                    cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo
                                    sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed
                                    odio dui.
                                </p>
                            </div>
                        </div>
                        <!--end comment-->
                        <div class="comment">
                            <a href="#" class="pull-left">
                                <img alt="" src="resources/images/Shrmip/tôm-sú01.jpg">
                            </a>
                            <div class="comment-body">
                                <h4 class="comment-heading">Anh tôm sú
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                </h4>
                                <p>
                                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac
                                    cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit
                                    amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
                                </p>
                            </div>
                        </div>
                        <hr>
                        <div class="post-comment">
                            <h3>Leave a Comment</h3>
                            <form role="form" action="#">
                                <div class="form-group">
                                    <label class="control-label">Name <span class="required">
                                            * </span>
                                    </label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Email <span class="required">
                                            * </span>
                                    </label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Đánh giá <span class="required">
                                            * </span>
                                    </label>
                                        <div class="stars">
                                            <div class="rating">
                                                <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Message <span class="required">
                                                    * </span>
                                            </label>
                                            <textarea class="col-md-10 form-control" rows="8"></textarea>
                                        </div>
                                        <button class="margin-top-20 btn blue" type="submit">Post a Comment</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

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
                        <a href="/Index">Trang chủ</a>
                    </p>
                    <p>
                        <a href="/GioiThieu">Giới thiệu</a>
                    </p>
                    <p>
                        <a href="/LienHe">Liên hệ</a>
                    </p>
                    <p>
                        <a href="/DSBaiViet">Món ngon</a>
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