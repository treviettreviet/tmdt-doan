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
        <%
            string div = Request.QueryString["div"];
            string error = Request.QueryString["error"];
            if (div != null && error != null)
            {
        %>
                <div id="message-box-login" style="display: block;" class="<%=Html.Encode(div) %>"><%=Html.Encode(error) %><br />
                    <a href="/Transaction/LichSuGiaoDich">Đến trang Lịch Sử Giao Dịch</a><br />
                    <a href="/Account/ThongTinTaiKhoan">Đến trang Thông Tin Tài Khoản</a><br />
                    <a href="/Public/TrangChu">Đến trang chủ EcMoney10Broker.tk</a>
                </div>

        <%                    
            }
        %>
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
        

        <!-- BEGIN BlockPaymentOptions -->
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
                        <script type="text/javascript" language="javascript">                            setFormCheck();</script>
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
        <script type="text/javascript" language="javascript">            setUpdateQuantity();</script>
        <div id="support_box" class="support-box">
            <div class="frame-support-box">
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
