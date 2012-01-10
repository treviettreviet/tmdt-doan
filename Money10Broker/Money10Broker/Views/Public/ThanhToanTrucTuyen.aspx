<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteThanhToan.Master"
    Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ThanhToanTrucTuyen
</asp:Content>--%>
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
                    <a class="flag-vn active" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;lang=vn">
                        Tiếng Việt</a> <a class="flag-el" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=pay_direct&amp;lang=en">
                            English</a>
                </div>
            </div>
        </div>
        <!-- BEGIN BlockIntro -->
        <div class="intro">
            NgânLượng.vn được Ngân Hàng Nhà Nước bảo hộ và cấp phép hoạt động, cam kết ĐẢM BẢO
            AN TOÀN cho giao dịch thanh toán của bạn với phương châm: NGƯỜI BÁN CHỈ NHẬN ĐƯỢC
            TIỀN KHI BẠN ĐÃ NHẬN HÀNG ĐÚNG MÔ TẢ! [ <a href="http://help.nganluong.vn/chi-tiet-49/2/419/Gioi-thieu-ve-NganLuong.vn.html"
                target="_blank">Tìm hiểu thêm</a> ]
        </div>
        <!-- END BlockIntro -->
        <div class="box-info-left box-cart">
            <div class="title">
                <span>Thông tin đơn hàng</span> <a class="btn-zoom btn-zoom-out" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5#">
                    Xem giản lược</a>
            </div>
            <div class="box-info-content">
                <table>
                    <tr>
                        <th>
                            Hoá đơn/Sản phẩm:
                        </th>
                        <td>
                            <%--<asp:Label ID="lblMaSanPham" runat="server" Text="Label"></asp:Label>--%>
                            <%: Html.Encode(ViewData["MaDonHang"]) %>
                            
                        </td>
                    </tr>
                    <!-- BEGIN BlockQuantity -->
                    <tr>
                        <th>
                            Số lượng:
                        </th>
                        <td>
                            <!-- BEGIN BlockUpdateQuantity -->
                            <asp:Label ID="lblSoLuong" runat="server" Text="Label"></asp:Label>
                            <span>[<a id="update_quantity_button" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5#">
                                Cập nhật </a>]</span>
                            <!-- END BlockUpdateQuantity -->
                        </td>
                    </tr>
                    <!-- END BlockQuantity -->
                    <tr>
                        <th>
                            Tổng thanh toán:
                        </th>
                        <td>
                            &nbsp;<asp:Label ID="lblTongTien" runat="server" Text="Label"></asp:Label>
                            VND
                        </td>
                    </tr>
                </table>
            </div>
            <div class="box-info-content" style="display: none;">
                <table>
                    <tr>
                        <th>
                            Hoá đơn/Sản phẩm:
                        </th>
                        <td>
                            16
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Tổng thanh toán:
                        </th>
                        <td>
                            <span class="yell">2.700.000</span> VND
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <script language="javascript">
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
                <span>Tài khoản nhận tiền</span> <a class="btn-zoom btn-zoom-out" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5#">
                    Xem giản lược</a>
            </div>
            <div class="box-info-content">
                <table>
                    <tr>
                        <th>
                            Chủ tài khoản:
                        </th>
                        <td>
                            <asp:Label ID="lblTenNguoiNhan" runat="server" Text="Label"></asp:Label>
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
                            <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Điện thoại:
                        </th>
                        <td>
                            <asp:Label ID="lblSoDienThoai" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Địa chỉ:
                        </th>
                        <td>
                            <asp:Label ID="lblDiaChi" runat="server" Text="Label"></asp:Label>
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
                            TRẦN THỊ NGỌC TRÂM
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Email:
                        </th>
                        <td>
                            chino_collection@yahoo.com
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="clear">
        </div>
        <!-- BEGIN BlockPaymentOptions -->
        <div id="box-payment" class="box main-box">
            <div class="main-title">
                <ul>
                    <li class="active"><a href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5#">
                        Thanh toán trực tuyến</a></li>
                </ul>
                <div class="checkout-help">
                    <a href="http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=83&amp;id=433&amp;news_name=Huong-dan-thanh-toan-truc-tuyen&amp;cat=2"
                        target="_blank">Hướng dẫn thanh toán</a>
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
                                tử NgânLượng.vn</a></div>
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
                    <li class="active"><a href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5#">
                        Thanh toán bằng tài khoản Ngân hàng</a></li>
                    <li class="end"><a class="link-payment-type" href="">Sử dụng số dư tài khoản NgânLượng.vn</a></li>
                </ul>
                <div class="checkout-help">
                    <a href="http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=83&amp;id=433&amp;news_name=Huong-dan-thanh-toan-truc-tuyen&amp;cat=2"
                        target="_blank">Hướng dẫn thanh toán</a>
                </div>
            </div>
            <div class="border boxCt">
                <div class="bank-view-c">
                    <p style="text-align: left;">
                        Click chọn vào một logo Ngân hàng / Loại thẻ dưới đây để tiếp tục thanh toán!</p>
                    <!--
				<div class="row-bank">
					<div class="title-row-bank active">
						<a class="active" href="#">
							<span class="name-title">Dùng thẻ cào điện thoại di động</span>
						</a>
					</div>
					<div class="row-bank-c">
						<ul>
							<li><a href="?portal=checkout&page=express2&lang=vn&session=7d3d6ba1f0cac68baf560e8adeaaaec5&cmd=payment_type&method=vdc_ck_on#option-payment-type"><img src="webskins/skins/nganluong/checkout/images_v20/vinaphone.jpg" border="0" height="30" alt="Thẻ VinaPhone"/></a></li>
							<li><a href="?portal=checkout&page=express2&lang=vn&session=7d3d6ba1f0cac68baf560e8adeaaaec5&cmd=payment_type&method=vdc_ck_on#option-payment-type"><img src="webskins/skins/nganluong/checkout/images_v20/mobiphone.jpg" border="0" height="30" alt="Thẻ MobiPhone" /></a></li>							
						</ul>
					</div>
				</div>
				-->
                    <div class="row-bank">
                        <div class="title-row-bank active">
                            <a class="active" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5#">
                                <!--<span class="step-sub">Cách 1:</span>-->
                                <span class="name-title">Dùng thẻ Tín dụng và Ghi nợ quốc tế</span> <span class="charge">
                                    (Phí 3.600đ + 2,75%)</span> </a>
                        </div>
                        <div class="row-bank-c">
                            <ul>
                                <li><a href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;cmd=payment_type&amp;method=sml_visa_ck_on#option-payment-type">
                                    <img alt="Thanh toán bằng Visa Card" border="0" height="30" src="../images/visacard.gif" /></a></li>
                                <li><a href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;cmd=payment_type&amp;method=sml_visa_ck_on#option-payment-type">
                                    <img alt="Thanh toán bằng Master Card" border="0" height="30" src="../images/masterca.gif" /></a></li>
                                <li><a href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;cmd=payment_type&amp;method=sml_visa_ck_on#option-payment-type">
                                    <img alt="Thanh toán bằng thẻ American Express" border="0" height="30" src="../images/americia.gif" /></a></li>
                                <li><a href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;cmd=payment_type&amp;method=sml_visa_ck_on#option-payment-type">
                                    <img alt="Thanh toán bằng thẻ JCB" border="0" height="30" src="../images/jcbcard0.gif" /></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row-bank">
                        <div class="title-row-bank active">
                            <a class="active" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5#">
                                <!--<span class="step-sub">Cách 2:</span>-->
                                <span class="name-title">Online dùng thẻ ATM</span> <span class="charge">(Miễn phí)</span>
                            </a>
                        </div>
                        <div class="row-bank-c">
                            <ul>
                                <li><a id="email" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=sml_atm_vcb_ck_on#option-payment-type">
                                    <img border="0" height="30" src="../images/vcb_1299.gif" /></a></li>
                                <li><a id="email0" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=sml_atm_tcb_ck_on#option-payment-type">
                                    <img border="0" height="30" src="../images/tcb_1299.gif" /></a></li>
                                <li><a id="email1" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=sml_atm_mb_ck_on#option-payment-type">
                                    <img border="0" height="30" src="../images/mb_12990.gif" /></a></li>
                                <li><a id="email2" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=sml_atm_vib_ck_on#option-payment-type">
                                    <img border="0" height="30" src="../images/vib_1299.gif" /></a></li>
                                <li><a id="email3" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=sml_atm_vtb_ck_on#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/icb_1299.gif" /></a></li>
                                <li><a id="email4" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=sml_atm_exb_ck_on#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/exb_1299.gif" /></a></li>
                                <li><a id="email5" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=sml_atm_acb_ck_on#option-payment-type">
                                    <img border="0" height="30" src="../images/acb_1299.gif" /></a></li>
                                <li><a id="email6" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=sml_atm_hdb_ck_on#option-payment-type">
                                    <img border="0" height="30" src="../images/hdb_1307.png" /></a></li>
                                <li><a id="email7" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=sml_atm_msb_ck_on#option-payment-type">
                                    <img border="0" height="30" src="../images/msb_1299.gif" /></a></li>
                                <li><a id="email8" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=sml_atm_nvb_ck_on#option-payment-type">
                                    <img border="0" height="30" src="../images/nvb_1324.jpg" /></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row-bank">
                        <div class="title-row-bank active">
                            <a class="active" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5#">
                                <!--<span class="step-sub">Cách 3:</span>-->
                                <span class="name-title">Online bằng Internet-Banking</span> <span class="charge">(Miễn
                                    phí)</span> </a>
                        </div>
                        <div class="row-bank-c">
                            <ul>
                                <li><a id="email9" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=vcb_ck_on#option-payment-type">
                                    <img border="0" height="30" src="../images/vcb_1299.gif" /></a></li>
                                <li><a id="email10" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=vnbc_ck_on#option-payment-type">
                                    <img border="0" height="30" src="../images/dab_1299.gif" /></a></li>
                                <li><a id="email11" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=tcb_ck_on#option-payment-type">
                                    <img border="0" height="30" src="../images/tcb_1299.gif" /></a></li>
                                <li><a id="email12" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=shb_ck_on#option-payment-type">
                                    <img border="0" height="30" src="../images/shb_1299.gif" /></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row-bank">
                        <div class="title-row-bank ">
                            <a class="" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5#">
                                <!--<span class="step-sub">Cách 4:</span>-->
                                <span class="name-title">Chuyển khoản bằng Internet-Banking</span> <span class="charge">
                                    (Miễn phí)</span> </a>
                        </div>
                        <div class="row-bank-c" style="display: none">
                            <ul>
                                <li><a id="email13" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=vcb_ck_in#option-payment-type">
                                    <img border="0" height="30" src="../images/vcb_1299.gif" /></a></li>
                                <li><a id="email14" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=dab_ck_in#option-payment-type">
                                    <img border="0" height="30" src="../images/dab_1299.gif" /></a></li>
                                <li><a id="email15" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=tcb_ck_in#option-payment-type">
                                    <img border="0" height="30" src="../images/tcb_1299.gif" /></a></li>
                                <li><a id="email16" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=mb_ck_in#option-payment-type">
                                    <img border="0" height="30" src="../images/mb_12990.gif" /></a></li>
                                <li><a id="email17" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=shb_ck_in#option-payment-type">
                                    <img border="0" height="30" src="../images/shb_1299.gif" /></a></li>
                                <li><a id="email18" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=vib_ck_in#option-payment-type">
                                    <img border="0" height="30" src="../images/vib_1299.gif" /></a></li>
                                <li><a id="email19" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=acb_ck_in#option-payment-type">
                                    <img border="0" height="30" src="../images/acb_1299.gif" /></a></li>
                                <li><a id="email20" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=sb_ck_in#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/sb_12785.gif" /></a></li>
                                <li><a id="email21" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=tpb_ck_in#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/tpb_1291.gif" /></a></li>
                                <li><a id="email22" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=pgb_ck_in#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/pgb_1299.gif" /></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row-bank">
                        <div class="title-row-bank ">
                            <a class="" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5#">
                                <!--<span class="step-sub">Cách 5:</span>-->
                                <span class="name-title">Chuyển khoản tại cây ATM</span> <span class="charge">(Miễn
                                    phí)</span> </a>
                        </div>
                        <div class="row-bank-c" style="display: none">
                            <ul>
                                <li><a id="email23" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=vcb_atm_off#option-payment-type">
                                    <img border="0" height="30" src="../images/vcb_1299.gif" /></a></li>
                                <li><a id="email24" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=dab_atm_off#option-payment-type">
                                    <img border="0" height="30" src="../images/dab_1299.gif" /></a></li>
                                <li><a id="email25" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=tcb_atm_off#option-payment-type">
                                    <img border="0" height="30" src="../images/tcb_1299.gif" /></a></li>
                                <li><a id="email26" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=mb_atm_off#option-payment-type">
                                    <img border="0" height="30" src="../images/mb_12990.gif" /></a></li>
                                <li><a id="email27" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=shb_atm_off#option-payment-type">
                                    <img border="0" height="30" src="../images/shb_1299.gif" /></a></li>
                                <li><a id="email28" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=icb_atm_off#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/icb_1299.gif" /></a></li>
                                <li><a id="email29" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=acb_atm_off#option-payment-type">
                                    <img border="0" height="30" src="../images/acb_1299.gif" /></a></li>
                                <li><a id="email30" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=bidv_atm_off#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/bidv_127.gif" /></a></li>
                                <li><a id="email31" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=agb_atm_off#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/agb_1299.gif" /></a></li>
                                <li><a id="email32" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=msb_atm_off#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/msb_1299.gif" /></a></li>
                                <li><a id="email33" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=scb_atm_off#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/scb_1299.gif" /></a></li>
                                <li><a id="email34" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=pgb_atm_off#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/pgb_1299.gif" /></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row-bank">
                        <div class="title-row-bank ">
                            <a class="" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5#">
                                <!--<span class="step-sub">Cách 6:</span>-->
                                <span class="name-title">Chuyển khoản tại quầy giao dịch Ngân hàng</span> <span class="charge">
                                    (Miễn phí)</span> </a>
                        </div>
                        <div class="row-bank-c" style="display: none">
                            <ul>
                                <li><a id="email35" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=vcb_ck_tm_off#option-payment-type">
                                    <img border="0" height="30" src="../images/vcb_1299.gif" /></a></li>
                                <li><a id="email36" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=dab_ck_tm_off#option-payment-type">
                                    <img border="0" height="30" src="../images/dab_1299.gif" /></a></li>
                                <li><a id="email37" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=tcb_ck_tm_off#option-payment-type">
                                    <img border="0" height="30" src="../images/tcb_1299.gif" /></a></li>
                                <li><a id="email38" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=mb_ck_tm_off#option-payment-type">
                                    <img border="0" height="30" src="../images/mb_12990.gif" /></a></li>
                                <li><a id="email39" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=shb_ck_tm_off#option-payment-type">
                                    <img border="0" height="30" src="../images/shb_1299.gif" /></a></li>
                                <li><a id="email40" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=vib_ck_tm_off#option-payment-type">
                                    <img border="0" height="30" src="../images/vib_1299.gif" /></a></li>
                                <li><a id="email41" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=icb_ck_tm_off#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/icb_1299.gif" /></a></li>
                                <li><a id="email42" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=acb_ck_tm_off#option-payment-type">
                                    <img border="0" height="30" src="../images/acb_1299.gif" /></a></li>
                                <li><a id="email43" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=bidv_ck_tm_off#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/bidv_127.gif" /></a></li>
                                <li><a id="email44" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=agb_ck_tm_off#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/agb_1299.gif" /></a></li>
                                <li><a id="email45" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=msb_ck_tm_off#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/msb_1299.gif" /></a></li>
                                <li><a id="email46" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=sb_ck_tm_off#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/sb_12785.gif" /></a></li>
                                <li><a id="email47" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=scb_ck_tm_off#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/scb_1299.gif" /></a></li>
                                <li><a id="email48" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=tpb_ck_tm_off#option-payment-type">
                                    <img border="0" height="30" src="../images/tpb_1291.gif" /></a></li>
                                <li><a id="email49" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=pgb_ck_tm_off#option-payment-type"
                                    style="width: 90px;">
                                    <img border="0" height="30" src="../images/pgb_1299.gif" /></a></li>
                                <li><a id="email50" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;&amp;cmd=payment_type&amp;method=home_tm_off#option-payment-type">
                                    <img border="0" height="30" src="../images/nl_cash_.gif" /></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row-bank">
                        <div class="title-row-bank">
                            <a class="" href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5#">
                                <!--<span class="step-sub">Cách 7:</span>-->
                                <span class="name-title">Nộp tiền mặt tại văn phòng NgânLượng.vn</span> <span class="charge">
                                    (Miễn phí)</span> </a>
                        </div>
                        <div class="row-bank-c" style="display: none">
                            <ul>
                                <li><a href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;cmd=payment_type&amp;method=nl_tm_off&amp;branch_code=1#option-payment-type">
                                    Tại văn phòng <strong>Hà Nội</strong></a></li>
                                <li><a href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;cmd=payment_type&amp;method=nl_tm_off&amp;branch_code=2#option-payment-type">
                                    Tại văn phòng <strong>TP.HCM</strong></a></li>
                                <li><a href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5&amp;cmd=payment_type&amp;method=nl_bd_off#option-payment-type">
                                    Chuyển qua <strong>Bưu điện</strong></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="option-payment-type0" class="box main-box box-payment" style="display: none;">
            <div class="main-title">
                <ul>
                    <li class="normal"><a class="link-payment-type" href="">Thanh toán bằng tài khoản Ngân
                        hàng</a></li>
                    <li class="active"><a href="https://www.nganluong.vn/index.php?portal=checkout&amp;page=express2&amp;lang=vn&amp;session=7d3d6ba1f0cac68baf560e8adeaaaec5#">
                        Sử dụng số dư tài khoản NgânLượng.vn</a></li>
                </ul>
                <div class="checkout-help">
                    <a href="http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=83&amp;id=433&amp;news_name=Huong-dan-thanh-toan-truc-tuyen&amp;cat=2"
                        target="_blank">Hướng dẫn thanh toán</a>
                </div>
            </div>
            <div class="border boxCt">
                <div class="bank-view-c">
                    <p>
                        Nếu bạn đã có tài khoản ví điện tử NgânLượng.vn và số dư khả dụng đủ để thanh toán,
                        vui lòng đăng nhập vào tài khoản để tiếp tục!</p>
                    <div class="nganluong">
                        <input name="form_module_id" type="hidden" value="2160" />
                        <input name="_token_form" type="hidden" value="3c876ba6934ed87724b5daaf2ca9678c" />
                        <div class="message-box">
                        </div>
                        <%using (Html.BeginForm("XuLyDangNhapThanhToanTrucTuyen", "Public", FormMethod.Post)){ %>
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <th>
                                    <span class="required">*</span> Địa chỉ email:
                                </th>
                                <td>
                                    <input autocomplete="off" class="input-key-login field-check" name="email" type="text"
                                        value="" /><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa
                                            nhập Email</span><span class="field-check-function blur submit" title="isEmail(_value_)">Email
                                                nhập không đúng yêu cầu</span>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <span class="required">*</span> Mật khẩu:
                                </th>
                                <td>
                                    <input autocomplete="off" class="input-key-login field-check password" name="password"
                                        type="password" value="" /><span class="field-check-function submit" title="notEmpty(_value_)">Bạn
                                            chưa nhập mật khẩu</span><span class="field-check-function blur submit" title="isPassword(_value_)">Mật
                                                khẩu nhập không đúng yêu cầu</span>
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
                                        <input class="btn-login" type="submit" value="Đăng Nhập" /><a href="https://www.nganluong.vn/index.php?portal=nganluong&amp;page=forgot_login_password"
                                            style="text-decoration: underline;" target="_blank">Quên mật khẩu?</a></p>
                                    <p style="margin-top: 20px;">
                                        Bạn chưa có tài khoản ví NgânLượng.vn? Vui lòng đăng ký miễn phí <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_register"
                                            style="text-decoration: underline;" target="_blank" title="Mở tài khoản miễn phí">
                                            tại đây</a></p>
                                </td>
                            </tr>
                        </table>
                        <%} %>
                        <script type="text/javascript" language="javascript">setFormCheck();</script>
                    </div>
                </div>
            </div>
        </div>
        <script language="javascript">
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
        <script language="javascript">
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
        <script language="javascript">            setUpdateQuantity();</script>
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
        <script language="javascript">
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
