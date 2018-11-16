<!-- <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> -->
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Chi tiết bài viết</title>
    <link rel="stylesheet" type="text/css" href="vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="assets/styles.css" rel="stylesheet" media="screen">
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
                        <div class="muted pull-left">Chi tiết bài viết</div>
                    </div>
                    <div class="block-content collapse in">
                        <div class="span12">
                            <!-- BEGIN FORM-->
                            <form action="#" id="form_sample_1" class="form-horizontal" style="width:100%;margin:0 auto;">
                                <div class="control-group">
                                    <label class="control-label">Mã bài viết(bắt buộc)<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="txt-ma-bai-viet" type="text" name="name" data-required="1" class="span6 m-wrap"
                                            style="width:96% !important;" value="bv01" />
                                        <br><small class="text-danger" id="validate-txt-ma-bai-viet"></small>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Tiêu đề bài viết(bắt buộc)<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="txt-tieu-de" name="email" type="text" class="span6 m-wrap" style="width:96% !important;"
                                            value="Mách bạn công thức tôm sú rim cay xé lưỡi độc đáo và thử thách các tín đồ của món cay" />
                                        <br><small class="text-danger" id="validate-txt-tieu-de"></small>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Nội dung(bắt buộc)<span class="required">*</span></label>
                                    <div class="controls" style="margin-top: -25px;">
                                        <div class="block-content collapse in">
                                            <textarea id="bootstrap-editor" placeholder="Enter text ..." style="width:670px;height:500px;">Nếu bạn là tín đồ của các món cay thì chắc chắn với các công thức có vị cay không thể nảo làm khó được vị giác của bạn. Nếu như nhiều người khi nhắc đến các món cay thường nhắc đến khô gà xé cay hay mực rim cay thì hôm nay chúng tôi xin gửi đến cho bạn một công thức vô cùng tuyệt vời với tôm sú. Đó là công thức tôm sú rim cay xé lưỡi.

                                                    Đúng như tên gọi của món ăn này, công thức tôm sú rim cay xé lưỡi này chắc chắn sẽ khiến cho vị giác của người thưởng thức bị đánh thức bởi độ cay nồng nhưng vẫn giữ được hương vị tuyệt vời từ tôm. Cuối tuần này rảnh rỗi, bạn hãy vào bếp và thử sức nhé.
                                                    
                                                    tôm sú bóc nõn
                                                    
                                                    Công thức tôm sú rim cay xé lưỡi cho các tín đồ yêu thích món cay
                                                    Không giống như các công thức nấu ăn về món cay trước đây tôm sú rim cay xé lưỡi là sự kết hợp tương đối đơn giản và dễ thực hiện giữa các gia vị thường thấy. Việc bạn cần phải làm chỉ cần thu thập đầy đủ các nguyên liệu va bắt tay ngay vào chế biến thôi nào.
                                                    
                                                    Nguyên liệu cần chuẩn bị
                                                    
                                                    Để tôm sú rim cay chuẩn vị bạn cần khoảng 200 gram tôm sú hoặc nhiều hơn tùy theo khẩu phần ăn, ớt đỏ khô đã bỏ hạt, đậu Hà Lan, lạc bóc vỏ và các gia giảm dùng trong quá trình nêm nếm bao gồm: 1/2 thìa canh đường, 1/2 thìa nhỏ tiêu đỏ, 1 thìa nhỏ mẻ, 1 thìa canh xì dầu, 2 tép tỏi băm nhỏ, hành lá, muối.
                                                    
                                                    Như vậy có thể thấy, với tôm sú rim cay xé lưỡi bạn hoàn toàn có thể thực hiện ở bất kì mùa nào trong năm bởi nguyên liệu của chúng vô cùng dễ tìm kiếm. Ngay khi đã có đầy đủ các nguyên liệu rồi bạn còn chân chờ gì mà không bắt tay ngay vào thực hiện công thức này thôi nào.
                                                    
                                                    Nguyên liệu làm món tôm sú
                                                    
                                                    Quy trình chế biến tôm sú rim cay xé lưỡi:
                                                    
                                                    Bước 1: thực hiện ở chế các nguyên liệu
                                                    
                                                    – Tôm sú ngay từ khi mua về bạn hãy tiến hành rửa thật sạch, sau đó bóc đi phần vỏ, rút chỉ đen trên lưng tôm. Bạn hãy lấy giấy ăn khô lau tôm để khi chiên không bị bắn.
                                                    
                                                    – Ngâm phần ớt đỏ khô vào nước ấm khoảng 10 phút rồi đem ra thái nhỏ.
                                                    
                                                    Bước 2: chế biến tôm sú rim cay xé lưỡi
                                                    
                                                    – Đổ dầu ăn vào chảo, sau đó cho phần tỏi băm và ớt vào phi cho đến khi hỗn hợp này dậy mùi thơm.
                                                    
                                                    – Cho tiếp hạt tiêu, mẻ, xì dầu, đường và 1 thìa canh nước lọc vào, đun khoảng 3 phút khi hỗn hợp này sôi thì tắt bếp, đổ ra bát riêng.
                                                    
                                                    – Đun chảo dầu sôi, thả tôm sú vào lần lượt chiên chín vàng thì gắp ra đĩa trải trước một lớp giấy thấm dầu cho ráo mỡ
                                                    
                                                    Bước 3:
                                                    
                                                    – Tận dụng chảo dầu vừa chiên tôm để chiên lạc 7-8 phút rồi vớt ra.
                                                    
                                                    – Đổ bát nước sốt vào một chiếc chảo khác, cho đậu Hà Lan vào đảo khoảng 3 phút đến khi đậu trở nên mềm thì đổ tôm và lạc vào, rim từ 3-5 phút cho tất cả các nguyên liệu đều ngấm đều các gia vị thì rắc hành thái nhỏ, tắt bếp. Vậy là công thức tôm sú rim cay xé lưỡi của bạn đã hoàn thành rồi đấy, cuối cùng bạn chỉ cần múc ra đĩa dùng nóng với cơm. Nếu không thích ăn quá cay bạn có thể gia giảm lượng ớt và hạt tiêu tùy ý thích.
                                                    
                                                    Tôm rim cay
                                                    
                                                    Hi vọng với công thức tôm sú kết hợp với vị cay nồng của ớt khô này sẽ làm bạn yêu thích và có thể thực hiện trổ tài cùng cho gia đình thưởng thức. Hãy thử sức và cho chúng tôi những trải nghiệm mới nhất bạn nhé.</textarea>
                                            <br><small class="text-danger" id="validate-bootstrap-editor"></small>
                                        </div>
                                    </div>
                                </div>
                                <div style="text-align:center;">
                                    <button id="btn-them" type="submit" class="btn btn-primary">Hoàn tất</button>
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

    <!--/.fluid-container-->
    <script src="vendors/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
    <script src="vendors/jquery-1.9.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>

    <script src="vendors/ckeditor/ckeditor.js"></script>
    <script src="vendors/ckeditor/adapters/jquery.js"></script>

    <script type="text/javascript" src="vendors/tinymce/js/tinymce/tinymce.min.js"></script>

    <script src="assets/scripts.js"></script>
    <script>
        $(function () {
            // Bootstrap
            $('#bootstrap-editor').wysihtml5();

            // Ckeditor standard
            $('textarea#ckeditor_standard').ckeditor({
                width: '98%', height: '150px', toolbar: [
                    { name: 'document', items: ['Source', '-', 'NewPage', 'Preview', '-', 'Templates'] },	// Defines toolbar group with name (used to create voice label) and items in 3 subgroups.
                    ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo'],			// Defines toolbar group without name.
                    { name: 'basicstyles', items: ['Bold', 'Italic'] }
                ]
            });
            $('textarea#ckeditor_full').ckeditor({ width: '98%', height: '150px' });

            function KiemTraMaBaiViet() {
                let value = $("#txt-ma-bai-viet").val();
                if (value === "") {
                    $("#validate-txt-ma-bai-viet").html("Bạn chưa nhập mã bài viết");
                    $("#txt-ma-bai-viet").css("border", "solid 1px red");
                    return false;
                }
                $("#validate-txt-ma-bai-viet").html("");
                $("#txt-ma-bai-viet").css("border", "solid 1px #ccc");
                return true;
            }
            function kiemTraNoiDung() {
                let value = $("#bootstrap-editor").val();
                if (value === "") {
                    $("#validate-bootstrap-editor").html("Bạn chưa nhập nội dung");
                    $("#bootstrap-editor").css("border", "solid 1px red");
                    return false;
                }
                $("#validate-bootstrap-editor").html("");
                $("#bootstrap-editor").css("border", "solid 1px #ccc");
                return true;
            }
            function kiemTraTieuDe() {
                let value = $("#txt-tieu-de").val();
                if (value === "") {
                    $("#validate-txt-tieu-de").html("Bạn chưa nhập tiêu đề");
                    $("#txt-tieu-de").css("border", "solid 1px red");
                    return false;
                }
                $("#validate-txt-tieu-de").html("");
                $("#txt-tieu-de").css("border", "solid 1px #ccc");
                return true;
            }
            $("#btn-them").click(() => {
                let kq = KiemTraMaBaiViet() & kiemTraTieuDe() & kiemTraNoiDung();
                if (kq === 0) {
                    return false;
                }
                return true;
            });
        });

        // Tiny MCE
        tinymce.init({
            selector: "#tinymce_basic",
            plugins: [
                "advlist autolink lists link image charmap print preview anchor",
                "searchreplace visualblocks code fullscreen",
                "insertdatetime media table contextmenu paste"
            ],
            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
        });

        // Tiny MCE
        tinymce.init({
            selector: "#tinymce_full",
            plugins: [
                "advlist autolink lists link image charmap print preview hr anchor pagebreak",
                "searchreplace wordcount visualblocks visualchars code fullscreen",
                "insertdatetime media nonbreaking save table contextmenu directionality",
                "emoticons template paste textcolor"
            ],
            toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
            toolbar2: "print preview media | forecolor backcolor emoticons",
            image_advtab: true,
            templates: [
                { title: 'Test template 1', content: 'Test 1' },
                { title: 'Test template 2', content: 'Test 2' }
            ]
        });

    </script>
</body>

</html>