<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteThanhToan.Master"
    Inherits="System.Web.Mvc.ViewPage<Money10Broker.Models.DonHang>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Thanh toán trực tuyến
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class="header-bottom">
            <div class="hb-l">
            </div>
            <div class="hb-r">
            </div>
            <div class="hb-c">
                <h2 class="title-page">
                    THANH TOÁN TRỰC TUYẾN AN TOÀN, NHANH CHÓNG, TIỆN LỢI</h2>
                <div class="flag">
                    <a class="flag-vn active" href="#">Tiếng Việt</a><a class="flag-el" href="#">English</a>
                </div>
            </div>
        </div>
        <!-- BEGIN BlockIntro -->
        <div class="intro">
            EcMoney10Broker.tk được Ngân Hàng Nhà Nước bảo hộ và cấp phép hoạt động, cam kết ĐẢM BẢO
            AN TOÀN cho giao dịch thanh toán của bạn với phương châm: NGƯỜI BÁN CHỈ NHẬN ĐƯỢC
            TIỀN KHI BẠN ĐÃ NHẬN HÀNG ĐÚNG MÔ TẢ! [ <a href="#" target="_blank">Tìm hiểu thêm</a>
            ]
        </div>
        <!-- END BlockIntro -->
        <div class="box-info-left box-cart">
            <div class="title">
                <span>Thông tin đơn hàng</span> <a class="btn-zoom btn-zoom-out" href="#">Xem giản lược</a>
            </div>
            <div class="box-info-content">
                <table>
                    <tr>
                        <th>
                            Hoá đơn/Sản phẩm:
                        </th>
                        <td>
                            <%:Model.MaHoaDon %>
                        </td>
                    </tr>
                    <!-- BEGIN BlockQuantity -->
                    <tr>
                        <th>
                            Số lượng:
                        </th>
                        <td>
                            <!-- BEGIN BlockUpdateQuantity -->
                            <asp:Label ID="lblSoLuong" runat="server" Text="Label"><%:Model.SoLuong %></asp:Label>
                            <%--<span>[<a id="update_quantity_button" href="#"> Cập nhật </a>]</span>--%>
                            <!-- END BlockUpdateQuantity -->
                        </td>
                    </tr>
                    <!-- END BlockQuantity -->
                    <tr>
                        <th>
                            Tổng thanh toán:
                        </th>
                        <td>
                            &nbsp;<asp:Label ID="lblTongTien" runat="server" Text="Label"><%:Model.TongThanhToan %></asp:Label>
                            VND
                        </td>
                    </tr>
                </table>
            </div>
            <!-- Ẩn/Hiện -->
            <div class="box-info-content" style="display: none;">
                <table>
                    <tr>
                        <th>
                            Hoá đơn/Sản phẩm:
                        </th>
                        <td>
                            <%:Model.MaHoaDon %>
                        </td>
                    </tr>
                    <!-- BEGIN BlockQuantity -->
                    <tr>
                        <th>
                            Số lượng:
                        </th>
                        <td>
                            <!-- BEGIN BlockUpdateQuantity -->
                            <asp:Label ID="Label1" runat="server" Text="Label"><%:Model.SoLuong %></asp:Label>
                            <%--<span>[<a id="update_quantity_button" href="#"> Cập nhật </a>]</span>--%>
                            <!-- END BlockUpdateQuantity -->
                        </td>
                    </tr>
                    <!-- END BlockQuantity -->
                    <tr>
                        <th>
                            Tổng thanh toán:
                        </th>
                        <td>
                            &nbsp;<asp:Label ID="Label2" runat="server" Text="Label"><%:Model.TongThanhToan %></asp:Label>
                            VND
                        </td>
                    </tr>
                </table>
            </div>
            <!-- Ẩn/Hiện -->
        </div>
        <script type="text/javascript" language="javascript">
            $(function () {
                $('.box-cart').each(function (index) {
                    $(this).find('.btn-zoom').click(function () {
                        if ($(this).hasClass('btn-zoom-in')) {
                            var $box = $('.box-cart:eq(' + index + ')');
                            $box.find('.box-info-content:eq(1)').slideUp('fast', function () {
                                $box.find('.box-info-content:eq(0)').slideDown('fast');
                            });
                            $(this).removeClass('btn-zoom-in').addClass('btn-zoom-out').text('Xem giản lược');
                        } else {
                            var $box = $('.box-cart:eq(' + index + ')');
                            $box.find('.box-info-content:eq(0)').slideUp('fast', function () {
                                $box.find('.box-info-content:eq(1)').slideDown('fast');
                            });
                            $(this).removeClass('btn-zoom-out').addClass('btn-zoom-in').text('Xem đầy đủ');
                        }
                        return false;
                    });
                });
            });
        </script>
        <div class="box-info-right box-cart" style="margin-bottom: 5px;">
            <div class="title">
                <span>Tài khoản nhận tiền</span> <a class="btn-zoom btn-zoom-out" href="#">Xem giản
                    lược</a>
            </div>
            <div class="box-info-content">
                <table>
                    <tr>
                        <th>
                            Chủ tài khoản:
                        </th>
                        <td>
                            <asp:Label ID="lblTenNguoiNhan" runat="server" Text="Label"><%:Model.ChuTaiKhoan %></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Tình trạng:
                        </th>
                        <td>
                            Đã xác thực
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Email:
                        </th>
                        <td>
                            <asp:Label ID="lblEmail" runat="server" Text="Label"><%:Model.Email %></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Điện thoại:
                        </th>
                        <td>
                            <asp:Label ID="lblSoDienThoai" runat="server" Text="Label"><%:Model.DienThoai %></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Địa chỉ:
                        </th>
                        <td>
                            <asp:Label ID="lblDiaChi" runat="server" Text="Label"><%:Model.DiaChi %></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="box-info-content" style="display: none">
                <table>
                    <tr>
                        <th>
                            Chủ tài khoản:
                        </th>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Label"><%:Model.ChuTaiKhoan %></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Tình trạng:
                        </th>
                        <td>
                            Đã xác thực
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Email:
                        </th>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Label"><%:Model.Email %></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Điện thoại:
                        </th>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Label"><%:Model.DienThoai %></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Địa chỉ:
                        </th>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Label"><%:Model.DiaChi %></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="clear">
        </div>
        <%
            string div = Request.QueryString["div"];
            string error = Request.QueryString["error"];
            if (div != null && error != null)
            {
        %>
                <div id="message-box-login" style="display: block;" class="<%=Html.Encode(div) %>"><%=Html.Encode(error) %></div>        
        <%                    
            }
        %>

        <!-- BEGIN BlockPaymentOptions -->
        <div id="box-payment" class="box main-box">
            <div class="main-title">
                <ul>
                    <li class="active"><a href="#">Thanh toán trực tuyến</a></li>
                </ul>
                <div class="checkout-help">
                    <a href="#" target="_blank">Hướng dẫn thanh toán</a>
                </div>
            </div>
            <div class="border boxCt" style="height: 170px;">
                <div id="box-payment0" class="box box-processing">
                    <div class="btn-payment">
                        <h4 style="margin-top: 0; padding-top: 0;">
                            Vui lòng chọn 1 trong 2 cách dưới đây để tiếp tục thanh toán</h4>
                        <div class="btn-payment-bank">
                            <a class="button-payment-bank button-payment-type" href="">Thanh toán bằng tài khoản
                                Ngân hàng hoặc Tiền mặt</a></div>
                        <div class="btn-payment-NL">
                            <a class="button-payment-nl button-payment-type" href="">Thanh toán bằng số dư ví điện
                                tử EcMoney10.tk</a></div>
                    </div>
                    <div class="clear">
                    </div>
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
        <!-- END BlockPaymentOptions -->
        <div id="option-payment-type" class="box main-box box-payment" style="display: none;">
            <div class="main-title">
                <ul>
                    <li class="active"><a href="#">Thanh toán bằng tài khoản Ngân hàng</a></li>
                    <li class="end"><a class="link-payment-type" href="">Sử dụng số dư tài khoản EcMoney10Broker.tk</a></li>
                </ul>
                <div class="checkout-help">
                    <a href="#" target="_blank">Hướng dẫn thanh toán</a>
                </div>
            </div>
            <div class="border boxCt">
                <div class="bank-view-c">
                    <p style="text-align: left;" class="message-box">
                        Hiện tại hệ thống EcMoney10Broker.tk chưa hỗ trợ hình thức thanh toán này! Bạn vui lòng chọn hình thức thanh toán qua số dư tài khoản EcMoney10Broker.tk
                    </p>
                </div>
            </div>
        </div>
        <div id="option-payment-type0" class="box main-box box-payment" style="display: none;">
            <div class="main-title">
                <ul>
                    <li class="normal"><a class="link-payment-type" href="">Thanh toán bằng tài khoản Ngân hàng</a></li>
                    <li class="active"><a href="#">Sử dụng số dư tài khoản EcMoney10Broker.tk</a></li>
                </ul>
                <div class="checkout-help"><a href="#" target="_blank">Hướng dẫn thanh toán</a></div>
            </div>
            <div class="border boxCt">
                <div class="bank-view-c">
                    <p>
                        Nếu bạn đã có tài khoản ví điện tử NgânLượng.vn và số dư khả dụng đủ để thanh toán,
                        vui lòng đăng nhập vào tài khoản để tiếp tục!</p>
                    <div class="nganluong">
                        <div class="message-box"></div>
                        
                        <form action="/Transaction/XuLyDangNhapTTTT/<%:Model.MaHoaDon %>" method="post">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <th>
                                    <span class="required">*</span> Địa chỉ email:
                                </th>
                                <td>
                                    <input autocomplete="off" class="input-key-login field-check" name="email" type="text" value="" />
                                    <span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập Email</span>
                                    <span class="field-check-function blur submit" title="isEmail(_value_)">Email nhập không đúng yêu cầu</span>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <span class="required">*</span> Mật khẩu:
                                </th>
                                <td>
                                    <input autocomplete="off" class="input-key-login field-check password" name="password" type="password" value="" />
                                    <span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập mật khẩu</span> 
                                    <span class="field-check-function blur submit" title="isPassword(_value_)">Mật khẩu nhập không đúng yêu cầu</span>
                                </td>
                            </tr>
                            <!--<tr>
						<th>Mã xác minh</th>
						<td><input name="" type="text" class="input-key-login" style="width:70px;" /><span><img src="images/bg-code.gif" /></span></td>
					  </tr>-->
                            <tr>
                                <th>
                                    &nbsp;
                                </th>
                                <td>
                                    <p>
                                        <input class="btn-login" type="submit" value="Đăng Nhập" />
                                        <a href="#" style="text-decoration: underline;" target="_blank">Quên mật khẩu?</a></p>
                                    <p style="margin-top: 20px;">
                                        Bạn chưa có tài khoản ví EcMoney10Broker.tk? Vui lòng đăng ký miễn phí <a href="/Account/ChonDangKy" style="text-decoration: underline;"
                                            target="_blank" title="Mở tài khoản miễn phí">tại đây</a></p>
                                </td>
                            </tr>
                        </table>
                        </form>
                        <script type="text/javascript" language="javascript">setFormCheck();</script>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript" language="javascript">
            $('.title-row-bank a').each(function (index) {
                $(this).click(function () {
                    if (!$(this).hasClass('active')) {
                        $('.title-row-bank').removeClass('active').eq(index).addClass('active');
                        $('.title-row-bank a').removeClass('active').eq(index).addClass('active');
                        $('.row-bank-c').slideUp('fast').eq(index).slideDown('fast');
                        $('.alert-title').text('').eq(index).text('Chọn một logo NH dưới đây để tiếp tục!');
                    } else {
                        $('.title-row-bank:eq(' + index + ')').removeClass('active').find('a').removeClass('active');
                        $('.row-bank-c:eq(' + index + ')').slideUp('fast');
                        $('.alert-title').eq(index).text('');
                    }
                    return false;
                });
            });
            $('.button-payment-type').each(function (index) {
                $(this).click(function () {
                    if ($(this).attr('href') == '') {
                        $('#box-payment').hide();
                        //$('.button-payment span').removeClass('active').eq(index).addClass('active');
                        $('.box-payment').hide().eq(index).show();
                        $('.box-cart').find('.box-info-content:eq(0)').slideUp('fast', function () {
                            $('.box-cart').find('.box-info-content:eq(1)').slideDown('fast');
                        });
                        $('.box-cart .btn-zoom').removeClass('btn-zoom-out').addClass('btn-zoom-in').text('Xem đầy đủ');

                        return false;
                    }
                });
            });
            $('.link-payment-type').each(function (index) {
                $(this).click(function () {
                    if ($(this).attr('href') == '') {
                        $('.box-payment').hide().eq((index + 1) % 2).show();
                        return false;
                    }
                });
            });
        </script>
        <div class="frame-process-submit">
            <div class="layout-process-submit">
                &nbsp;</div>
            <div class="box-process-submit">
                <div id="message_process">
                    Đang thực hiện đăng nhập<br />
                    Xin vui lòng chờ đợi!</div>
            </div>
        </div>
        <script type="text/javascript" language="javascript">
            $(function () {
                $('form').bind('submit', function () {
                    if (!$(this).find('.field-error, .field-exist').length) {
                        var width = $(window).width();
                        var height = $(document).height();
                        $('.layout-process-submit').css({
                            'width': width,
                            'height': height
                        });
                        $('.box-process-submit').css({
                            'left': parseInt((width - 300) / 2),
                            'top': $(window).scrollTop() + parseInt(($(window).height() - 150) / 2)
                        });
                        $('.frame-process-submit').show();
                    }
                });
                $('.frame-process-submit').appendTo('body');
            });
        </script>
        <div id="popup_quantity" style="width: 550px; position: absolute; z-index: 30; display: none;">
            <h3>
                Thay đổi số lượng sản phẩm muốn mua</h3>
            <div id="ajax-content" class="popup">
                <p>
                    Hãy nhập số lượng sản phẩm mà bạn muốn mua. Trước khi thay đổi thông tin này, bạn
                    vui lòng liên hệ với người bán để kiểm tra tình trạng hàng hóa</p>
                <p>
                    <strong>Lưu ý:</strong> <span style="color: #ff5a00;">Việc thay đổi số lượng sản phẩm
                        sẽ thay đổi tổng số tiền bạn phải thanh toán</span></p>
                <input name="form_module_id" type="hidden" value="2160" />
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <th>
                            Số lượng sản phẩm:
                        </th>
                        <td>
                            <input class="input-amount" maxlength="11" name="update_quantity" type="text" value="1" />
                        </td>
                    </tr>
                    <tr>
                        <th>
                        </th>
                        <td>
                            <div class="btn-box">
                                <input name="option" type="hidden" value="update_quantity" />
                                <input id="btnPayment" class="btn-y" type="submit" value="Cập nhật" />
                                <input id="btnUpdateQuantityClose" class="btn-g" type="button" value="Bỏ qua" />
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <script type="text/javascript" language="javascript">setUpdateQuantity();</script>
        <div id="support_box" class="support-box">
            <div class="frame-support-box">
                <div class="support">
                </div>
                <!--
		<div class="support-button" style="position:absolute;right:0px;top:350px;">
			<div style="background-color:#FFFF99; height:80px; width:200px; border:2px solid #FF6600; padding:5px;">
				<strong>Thông báo bảo trì hệ thống:</strong><br />
				NgânLượng.vn tiến hành bảo trì định kỳ hệ thống từ <strong>18:30</strong> đến <strong>19:00</strong>, ngày <strong>4/10/2011</strong> [ <a href="http://news.nganluong.vn/?portal=news&page=news_detail&category_id=3&id=866" target="_blank">xem chi tiết</a> ]
			</div>
		</div>
		-->
            </div>
        </div>
        <script type="text/javascript" language="javascript">
            var moveBoxTimeOut = null;
            $(window).bind('scroll', function () {
                if (moveBoxTimeOut != null) {
                    clearTimeout(moveBoxTimeOut);
                }
                moveBoxTimeOut = setTimeout('moveBox()', 200);
            });
            function moveBox() {
                var top = $(window).scrollTop() + 350;
                $('.support-button').animate({ 'top': top }, 1000);
            }
        </script>
    </div>
</asp:Content>
