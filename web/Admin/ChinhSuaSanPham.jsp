<!-- <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> -->
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Chỉnh sửa sản phẩm</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="assets/styles.css" rel="stylesheet" media="screen">
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="vendors/flot/excanvas.min.js"></script><![endif]-->
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <script src="vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body>
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a class="brand" href="index.html">TieuDanSeaFood</a>
                <div class="nav-collapse collapse">
                    <ul class="nav pull-right">
                        <li class="dropdown">
                            <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="icon-user"></i> Tan Nguyen <i class="caret"></i>

                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a tabindex="-1" href="ThongTinCaNhan.jsp">Thông tin cá nhân</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a tabindex="-1" href="login.jsp">Đăng xuất</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav">
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle">Quản lý Người dùng <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu" id="menu1">
                                <li>
                                    <a href="QlyNguoiDungThongThuong.jsp">Người dùng thông thường</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="QlyAdmin.jsp">Admin</a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="QLySanPham.jsp" data-toggle="dropdown" class="dropdown-toggle">Quản lý Sản phẩm
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu" id="menu1">
                                <li>
                                    <a href="QLySanPham.jsp">Tôm</a>
                                </li>
                                <li>
                                    <a href="QLySanPham.jsp">Cua</a>
                                </li>
                                <li>
                                    <a href="QLySanPham.jsp">Cá</a>
                                </li>
                                <li>
                                    <a href="QLySanPham.jsp">Mực</a>
                                </li>
                                <li>
                                    <a href="QLySanPham.jsp">Ngao-Sò-Ốc</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="QlyBaiViet.jsp">Quản lý Bài Viết</a>
                        </li>
                        <li>
                            <a href="QLyDanhMuc.jsp">Quản lý Danh mục</a>
                        </li>
                        <li>
                            <a href="QlyDonHang.jsp">Quản lý Đơn hàng</a>
                        </li>
                        <li>
                            <a href="QlyQuyen.jsp">Quản lý quyền</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="container">
            <div class="row-fluid">
                <!-- block -->
                <div class="block">
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left">Chỉnh sửa thông tin sản phẩm sản phẩm</div>
                    </div>
                    <div class="block-content collapse in">
                        <div class="span12">
                            <!-- BEGIN FORM-->
                            <form action="#" id="form_sample_1" class="form-horizontal" style="width:70%;margin:0 auto;">
                                <div class="control-group">
                                    <label class="control-label">Danh mục<span class="required">*</span></label>
                                    <div class="controls">
                                        <select class="span6 m-wrap" name="category" style="width:500px !important;">
                                            <option value="">Tôm</option>
                                            <option value="Category 1">Cua</option>
                                            <option value="Category 2">Cá</option>
                                            <option value="Category 3">Mực</option>
                                            <option value="Category 4">Ngao-Sò-Ốc</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Mã sản phẩm<span class="required">*</span></label>
                                    <div class="controls">
                                        <input name="name" id="txt-ma-sp" type="text" class="span6 m-wrap" style="width:500px !important;" value="sp01" />
                                        <br><small class="text-danger" id="validate-txt-ma-sp"></small>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Tên sản phẩm<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="txt-ten-sp" name="name" type="text" class="span6 m-wrap" style="width:500px !important;" value="tôm đất" />
                                        <br><small class="text-danger" id="validate-txt-ten-sp"></small>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Giá sản phẩm<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="txt-gia-sp" name="name" type="text" class="span6 m-wrap" style="width:500px !important;" value="150000"/>
                                        <br><small class="text-danger" id="validate-txt-gia-sp"></small>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Phần trăm khuyến mãi<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="txt-khuyen-mai" name="name" type="text" class="span6 m-wrap" style="width:500px !important;" value="20"/>
                                        <br><small class="text-danger" id="validate-txt-khuyen-mai"></small>
                                    </div>
                                </div>
                                <div class="control-group">
                                        <label class="control-label" for="fileInput">Hình ảnh</label>
                                        <div class="controls">
                                            <div class="uploader" id="uniform-fileInput" >
                                                <input class="input-file uniform_on" id="fileInput" type="file"><span class="filename"
                                                    style="user-select: none;;">WebHaiSan\Admin\bootstrap\img</span><span class="action"
                                                    style="user-select: none;">Chọn File</span>
                                            </div>
                                        </div>
                                    </div>
                                <div class="control-group">
                                    <label class="control-label">Xuất xứ<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="txt-xuat-xu" name="name" type="text" class="span6 m-wrap" style="width:500px !important;" value="Cà Mau"/>
                                        <br><small class="text-danger" id="validate-txt-xuat-xu"></small>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Mô tả<span class="required">*</span></label>
                                    <div class="controls">
                                        <textarea id="txt-mo-ta" name="name" type="text" class="span6 m-wrap" style="width:500px !important;">Tươi sống, có giá trị dinh dưỡng cao</textarea>
                                        <br><small class="text-danger" id="validate-txt-mo-ta"></small>
                                    </div>
                                </div>
                                <div style="text-align:center;">
                                    <button type="submit" id="btn-them" class="btn btn-primary">Hoàn tất</button>
                                    <button type="button" class="btn">Hủy bỏ</button>
                                </div>
                            </form>

                            <!-- END FORM-->
                        </div>
                    </div>
                </div>
                <!-- /block -->
            </div>
        </div>
    </div>
    <hr>
    <footer>
        <p>&copy; TieuDanSeaFood 2018</p>
    </footer>
    </div>


    <link href="vendors/datepicker.css" rel="stylesheet" media="screen">
    <link href="vendors/uniform.default.css" rel="stylesheet" media="screen">
    <link href="vendors/chosen.min.css" rel="stylesheet" media="screen">

    <link href="vendors/wysiwyg/bootstrap-wysihtml5.css" rel="stylesheet" media="screen">

    <script src="vendors/jquery-1.9.1.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="vendors/jquery.uniform.min.js"></script>
    <script src="vendors/chosen.jquery.min.js"></script>
    <script src="vendors/bootstrap-datepicker.js"></script>

    <script src="vendors/wysiwyg/wysihtml5-0.3.0.js"></script>
    <script src="vendors/wysiwyg/bootstrap-wysihtml5.js"></script>

    <script src="vendors/wizard/jquery.bootstrap.wizard.min.js"></script>

    <script type="text/javascript" src="vendors/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="assets/form-validation.js"></script>

    <script src="assets/scripts.js"></script>
    <script>
        function kiemTraKhuyenMai() {
            let reg = /([0-9])/;
            let value = $("#txt-khuyen-mai").val();
            if (value === "") {
                $("#validate-txt-khuyen-mai").html("Bạn chưa nhập khuyến mãi");
                $("#txt-khuyen-mai").css("border", "solid 1px red");
                return false;
            }
            if (!reg.test(value)) {
                $("#validate-txt-khuyen-mai").html("Khuyến mãi không hợp lệ");
                $("#txt-khuyen-mai").css("border", "solid 1px red");
                return false;
            }
            $("#validate-txt-khuyen-mai").html("");
            $("#txt-khuyen-mai").css("border", "solid 1px #ccc");
            return true;
        }

        function kiemTraMaSanPham() {
            let value = $("#txt-ma-sp").val();
            if (value === "") {
                $("#validate-txt-ma-sp").html("Bạn chưa mã sản phẩm");
                $("#txt-ma-sp").css("border", "solid 1px red");
                return false;
            }
            $("#validate-txt-ma-sp").html("");
            $("#txt-ma-sp").css("border", "solid 1px #ccc");
            return true;
        }
        function kiemTraTenSanPham() {
            let value = $("#txt-ten-sp").val();
            if (value === "") {
                $("#validate-txt-ten-sp").html("Bạn chưa tên sản phẩm");
                $("#txt-ten-sp").css("border", "solid 1px red");
                return false;
            }
            $("#validate-txt-ten-sp").html("");
            $("#txt-ten-sp").css("border", "solid 1px #ccc");
            return true;
        }
        function KiemTraGiaSanPham() {
            let reg = /([0-9])/;
            let value = $("#txt-gia-sp").val();
            if (value === "") {
                $("#validate-txt-gia-sp").html("Bạn chưa nhập giá sản phẩm");
                $("#txt-gia-sp").css("border", "solid 1px red");
                return false;
            }
            if (!reg.test(value)) {
                $("#validate-txt-gia-sp").html("Giá sản phẩm không hợp lệ");
                $("#txt-gia-sp").css("border", "solid 1px red");
                return false;
            }
            $("#validate-txt-gia-sp").html("");
            $("#txt-gia-sp").css("border", "solid 1px #ccc");
            return true;
        }
        function kiemTraXuatXu() {
            let value = $("#txt-xuat-xu").val();
            if (value === "") {
                $("#validate-txt-xuat-xu").html("Bạn chưa nhập xuất xứ");
                $("#txt-xuat-xu").css("border", "solid 1px red");
                return false;
            }
            $("#validate-txt-xuat-xu").html("");
            $("#txt-xuat-xu").css("border", "solid 1px #ccc");
            return true;
        }
        function kiemTraMoTa() {
            let value = $("#txt-mo-ta").val();
            if (value === "") {
                $("#validate-txt-mo-ta").html("Bạn chưa nhập mô tả");
                $("#txt-mo-ta").css("border", "solid 1px red");
                return false;
            }
            $("#validate-txt-mo-ta").html("");
            $("#txt-mo-ta").css("border", "solid 1px #ccc");
            return true;
        }
        $("#btn-them").click(() => {
            let kq = kiemTraMaSanPham() & kiemTraTenSanPham() & KiemTraGiaSanPham() & kiemTraKhuyenMai() & kiemTraXuatXu() & kiemTraMoTa();
            if (kq === 0) {
                return false;
            }
            return true;
        });
    </script>
</body>

</html>