<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="vi">

<head>
    <title>Công thức nấu ăn</title>
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
    <!--//booststrap end-->
    <!-- font-awesome icons -->
    <link href="resources/css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
    <!-- //font-awesome icons -->
    <!-- For Clients slider -->
    <link rel="stylesheet" href="resources/css/flexslider.css" type="text/css" media="all" />
    <!--flexs slider-->
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
    <!--responsiveslides banner-->
    <script src="resources/js/responsiveslides.min.js"></script>
    <script>
        // You can also use "$(window).load(function() {"
        $(function () {
            // Slideshow 4
            $("#slider4").responsiveSlides({
                auto: true,
                pager: false,
                nav: true,
                speed: 900,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });

        });
    </script>
    <!--// responsiveslides banner-->
    <!--slider flexisel -->
    <script src="resources/js/jquery.flexisel.js"></script>
    <script>
        $(window).load(function () {
            $("#flexiselDemo1").flexisel({
                visibleItems: 3,
                animationSpeed: 3000,
                autoPlay: true,
                autoPlaySpeed: 2000,
                pauseOnHover: true,
                enableResponsiveBreakpoints: true,
                responsiveBreakpoints: {
                    portrait: {
                        changePoint: 480,
                        visibleItems: 1
                    },
                    landscape: {
                        changePoint: 640,
                        visibleItems: 2
                    },
                    tablet: {
                        changePoint: 768,
                        visibleItems: 2
                    }
                }
            });

        });
    </script>
    <!-- //slider flexisel -->
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
                                <p><a href="mailto:info@example.com">tieudanseafood@gmail.com</a></p>
                            </li>
                            <li class="float-md-right">
                                <span class="fas fa-user"></span>
                                <p><a data-toggle="modal" href="#LoginModal">Đăng nhập</a></p>
                                <p>|</p>
                                <p><a href="DangKi.jsp">Đăng ký</a></p>
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
                                <h4 style="display:inline-block"><strong><a href="TrangChu.jsp">Tiêu Dân Seafood</strong></a></h4>
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
    <ul class="breadcrumb">
        <div class="container">
            <li><a href="TrangChu.jsp">Trang chủ</a></li>
            <li>Công thức chế biến</li>
        </div>
    </ul>

    <main class="page-content">
        <div class="container">
            <div class="row">
                <div class="side-bar col-md-3">
                    <div class="left-side">
                        <h3 class="agileits-sear-head">DANH MỤC SẢN PHẨM</h3>
                        <ul>
                            <li>
                                <a href="#!">
                                    <img src="resources/images/FISHICO.png" class="category">
                                    <span class="span">Cá</span>
                                </a>
                            </li>
                            <li>
                                <a href="#!">
                                    <img src="resources/images/SHRIMPICO.png" class="category">
                                    <span class="span">Tôm</span>
                                </a>
                            </li>
                            <li>
                                <a href="#!">
                                    <img src="resources/images/CuttleFishICO.png" class="category">
                                    <span class="span">Mực</span>
                                </a>
                            </li>
                            <li>
                                <a href="#!">
                                    <img src="resources/images/CrabICO.gif" class="category">
                                    <span class="span">Cua ghẹ</span>
                                </a>
                            </li>
                            <li>
                                <a href="#!">
                                    <img src="resources/images/clamICO.png" class="category">
                                    <span class="span">Ngao - Sò - Ốc</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="gap-element" style="display:block; height:auto; padding-top:30px"></div>
                    <div class="left-side">
                        <h3 class="agileits-sear-head">BÀI VIẾT NỔI BẬT</h3>
                        <ul>
                            <li>
                                <a href="#!">
                                    <img src="resources/images/ca-mu-hap-hanh.jpg" width="70px" height="70px">
                                    <p>Hướng dẫn làm món cá mú đỏ hấp bia cực ngon miệng</p>
                                </a>
                            </li>
                            <li>
                                <a href="#!">
                                    <img src="resources/images/ca-chep-hap--bia01.jpg" width="70px" height="30px">
                                    <p class="span">Món cá chép hấp bia cách làm tại nhà đơn giản </p>
                                </a>
                            </li>
                            <li>
                                <a href="#!">
                                    <img src="resources/images/Foods/tom-su-rang-toi.jpg" width="30px" height="30px">
                                    <p class="span">Bí quyết cho món tôm sú rang tỏi cực ngon</p>
                                </a>
                            </li>
                            <li>
                                <a href="#!">
                                    <img src="resources/images/Foods/tom-tit-rang-me01.jpg" width="30px" height="30px">
                                    <p class="span">Cùng thay đổi khẩu vị với món bề bề rang me</p>
                                </a>
                            </li>
                            <li>
                                <a href="#!">
                                    <img src="resources/images/Foods/cua-rang-me01.jpg" width="30px" height="30px">
                                    <p class="span">Đơn giản mà ngon, đó là cua rang me</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- Bai Viet Noi Bat -->
                    <hr>
                    <div class="left-side">
                        <img src="resources/images/logo-nau-an.jpg" alt="Nấu ăn là dễ" width="260px" height="260px">
                    </div>
                </div>
                <div class="side-bar col-md-9">
                    <div class="col-lg-25ths col-md-25ths col-sm-4 col-xs-6  blog-mobile" style="width: 35%;float: left;">
                        <div class="news-laste-item product-resize fixheight" style="height: 346px;">

                            <div class="post-thumb height-img image-resize" style="height: 199px;">
                                <a href="!#">
                                    <img src="resources/images/Foods/cua-rang-me01.jpg" width="193px" height="193px">
                                </a>
                            </div><!-- /blog-alt-image -->

                            <div class="hgt">
                                <div class="name"><a href="!#">5 Món
                                        ngon từ hàu sữa cực đơn giản</a></div>
                                <div>
                                    <p class="text-justify">Hôm nay, Đảo Hải Sản gợi ý 5&nbsp;món ngon từ hàu
                                        sữa&nbsp;nhằm làm đa dạng hơn thực đơn của gia...</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-25ths col-md-25ths col-sm-4 col-xs-6  blog-mobile" style="width: 35%;float: left;">
                        <div class="news-laste-item product-resize fixheight" style="height: 346px;">

                            <div class="post-thumb height-img image-resize" style="height: 199px;">
                                <a href="!#">
                                    <img src="resources/images/Foods/cua-rang-me01.jpg" width="193px" height="193px">
                                </a>
                            </div><!-- /blog-alt-image -->

                            <div class="hgt">
                                <div class="name"><a href="!#">5 Món
                                        ngon từ hàu sữa cực đơn giản</a></div>
                                <div>
                                    <p class="text-justify">Hôm nay, Đảo Hải Sản gợi ý 5&nbsp;món ngon từ hàu
                                        sữa&nbsp;nhằm làm đa dạng hơn thực đơn của gia...</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-25ths col-md-25ths col-sm-4 col-xs-6  blog-mobile" style="width: 35%;float: left;">
                        <div class="news-laste-item product-resize fixheight" style="height: 346px;">

                            <div class="post-thumb height-img image-resize" style="height: 199px;">
                                <a href="!#">
                                    <img src="resources/images/Foods/cua-rang-me01.jpg" width="193px" height="193px">
                                </a>
                            </div><!-- /blog-alt-image -->

                            <div class="hgt">
                                <div class="name"><a href="!#">5 Món
                                        ngon từ hàu sữa cực đơn giản</a></div>
                                <div>
                                    <p class="text-justify">Hôm nay, Đảo Hải Sản gợi ý 5&nbsp;món ngon từ hàu
                                        sữa&nbsp;nhằm làm đa dạng hơn thực đơn của gia...</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-25ths col-md-25ths col-sm-4 col-xs-6  blog-mobile" style="width: 35%;float: left;">
                        <div class="news-laste-item product-resize fixheight" style="height: 346px;">

                            <div class="post-thumb height-img image-resize" style="height: 199px;">
                                <a href="!#">
                                    <img src="resources/images/Foods/cua-rang-me01.jpg" width="193px" height="193px">
                                </a>
                            </div><!-- /blog-alt-image -->

                            <div class="hgt">
                                <div class="name"><a href="!#">5 Món
                                        ngon từ hàu sữa cực đơn giản</a></div>
                                <div>
                                    <p class="text-justify">Hôm nay, Đảo Hải Sản gợi ý 5&nbsp;món ngon từ hàu
                                        sữa&nbsp;nhằm làm đa dạng hơn thực đơn của gia...</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-25ths col-md-25ths col-sm-4 col-xs-6  blog-mobile" style="width: 35%;float: left;">
                        <div class="news-laste-item product-resize fixheight" style="height: 346px;">

                            <div class="post-thumb height-img image-resize" style="height: 199px;">
                                <a href="!#">
                                    <img src="resources/images/Foods/cua-rang-me01.jpg" width="193px" height="193px">
                                </a>
                            </div><!-- /blog-alt-image -->

                            <div class="hgt">
                                <div class="name"><a href="!#">5 Món
                                        ngon từ hàu sữa cực đơn giản</a></div>
                                <div>
                                    <p class="text-justify">Hôm nay, Đảo Hải Sản gợi ý 5&nbsp;món ngon từ hàu
                                        sữa&nbsp;nhằm làm đa dạng hơn thực đơn của gia...</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-25ths col-md-25ths col-sm-4 col-xs-6  blog-mobile" style="width: 35%;float: left;">
                        <div class="news-laste-item product-resize fixheight" style="height: 346px;">

                            <div class="post-thumb height-img image-resize" style="height: 199px;">
                                <a href="!#">
                                    <img src="resources/images/Foods/cua-rang-me01.jpg" width="193px" height="193px">
                                </a>
                            </div><!-- /blog-alt-image -->

                            <div class="hgt">
                                <div class="name"><a href="!#">5 Món
                                        ngon từ hàu sữa cực đơn giản</a></div>
                                <div>
                                    <p class="text-justify">Hôm nay, Đảo Hải Sản gợi ý 5&nbsp;món ngon từ hàu
                                        sữa&nbsp;nhằm làm đa dạng hơn thực đơn của gia...</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="gap-element" style="display:block; height:auto; padding-top:15px"></div>
                    <div class="col-md-8 col-sm-8">
                        <div class="pagination pull-right">
                            <a href="#">&laquo;</a>
                            <a href="#">1</a>
                            <a class="active" href="#">2</a>
                            <a href="#">3</a>
                            <a href="#">4</a>
                            <a href="#">5</a>
                            <a href="#">6</a>
                            <a href="#">&raquo;</a>
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