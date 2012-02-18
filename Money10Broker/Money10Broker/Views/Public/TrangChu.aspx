﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content">
        <div id="content-right">
            <div id="services">
                <div id="services-title">
                    <div id="services-title-l" style="text-align: center">
                        Mua sắm an toàn</div>
                    <div id="services-title-r" style="text-align: center">
                        Bán hàng tiện lợi
                    </div>
                    <div id="services-title-c" style="text-align: center">
                        Bảo vệ người mua</div>
                </div>
                <div id="services-left">
                    <ul style="font-size: 12px; color: #333;">
                        <li><a href="#"
                            target="">Ví điện tử </a>hỗ trợ thanh toán NHANH CHÓNG, TIỆN LỢI và BẢO VỆ
                            bạn khỏi các nguy cơ lừa đảo trực tuyến.</li>
                        <li>Hàng TRĂM NGHÌN cá nhân và <a href="#"
                            target="">hàng NGHÌN doanh nghiệp</a> đang an tâm mua bán và thanh toán hàng
                            ngày.</li>
                    </ul>
                </div>
                <div id="services-right">
                    <ul style="font-size: 12px; color: #333;">
                        <li>Nhận THANH TOÁN TRỰC TUYẾN bằng thẻ quốc tế và nội địa để gia tăng doanh số bán
                            hàng Online.</li>
                        <li><a href="#" target="">Tích hợp chức năng thanh
                            toán</a> vào Website bán hàng, Forum, Blog, tin Rao vặt chỉ từ 5 phút đến 4 giờ.</li>
                    </ul>
                </div>
                <div id="services-content">
                    <ul style="font-size: 12px; color: #333;">
                        <li><a href="#"
                            target="">Thanh toán tạm giữ</a>: người Bán chỉ nhận tiền khi người Mua ĐÃ
                            NHẬN HÀNG đúng mô tả.</li>
                        <li><a href="#"
                            target="">Bảo hiểm giao dịch</a>: bồi thường lên đến 100% giá trị thiệt hại
                            trong trường hợp người Mua bị lừa đảo.</li>
                    </ul>
                </div>
            </div>
            <div class="clear">
            </div>
            <div id="banner-slide">
                <img src="../../Content/images/quytrini.gif" alt="" border="0" usemap="#Map">
                <map name="Map" id="Map">
                    <area shape="rect" coords="16,24,123,107" href="#"
                        alt>
                    <area shape="rect" coords="224,6,391,112" href="#">
                    <area shape="rect" coords="591,2,687,26" href="#" target="">
                    <area shape="rect" coords="593,27,688,55" href="#">
                    <area shape="rect" coords="593,55,687,85" href="#">
                    <area shape="rect" coords="594,86,687,115" href="#">
                </map>
            </div>
            <div class="clear">
            </div>
            <div id="partner">
                <div class="title" id="tab-box">
                    <ul>
                        <li class="active"><a href="#">Hỗ trợ thanh toán </a></li>
                        <li><a href="#" target="">Địa chỉ mua
                            sắm</a></li>
                        <!--	<li><a href="#" target="">Sản phẩm khuyến mãi</a></li>-->
                    </ul>
                </div>
                <div class="tab-content" id="logo-partner">
                    <div id="hotrothanhtoan" style="margin: 10px;">
                        <img src="../../Content/images/hotrothb.png" width="655" height="128" border="0"
                            usemap="#map_thanhtoan">
                        <map name="map_thanhtoan" id="map_thanhtoan">
                            <area shape="rect" coords="6, 2, 57, 35" 
                                href="#">
                            <area shape="rect" coords="65, 1, 131, 34" 
                                href="#">
                            <area shape="rect" coords="140, 1, 219, 37" 
                                href="#">
                            <area shape="rect" coords="227, 1, 305, 37" 
                                href="#">
                            <area shape="rect" coords="310, 0, 378, 34" href="#">
                            <area shape="rect" coords="385, 1, 486, 35" 
                                href="#">
                            <area shape="rect" coords="493, 1, 560, 36" 
                                href="#">
                            <area shape="rect" coords="569, 2, 663, 36" href="#">
                            <area shape="rect" coords="204, 50, 289, 80" href="#">
                            <area shape="rect" coords="294, 52, 401, 80" href="#">
                            <area shape="rect" coords="9, 52, 59, 83" href="#">
                            <area shape="rect" coords="64, 49, 197, 79" 
                                href="#">
                            <area shape="rect" coords="402, 52, 464, 80" href="#">
                            <area shape="rect" coords="471, 52, 546, 80" href="#">
                            <area shape="rect" coords="554, 50, 660, 81" href="#">
                            <area shape="rect" coords="3, 96, 78, 127" href="#">
                            <area shape="rect" coords="80, 98, 172, 127" href="#">
                            <area shape="rect" coords="176, 93, 278, 127" 
                                href="">
                            <area shape="rect" coords="282, 97, 372, 127" href="#">
                            <area shape="rect" coords="378, 99, 517, 125" 
                                href="">
                        </map>
                    </div>
                </div>
                <div class="tab-content" id="logo-partner" style="display: none;">
                    <table border="0" cellspacing="10" cellpadding="0">
                        <tr>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1J.png" alt="ChợĐiệnTử.VN - Mạng xã hội mua sắm trực tuyến nhiều hàng số 1 Việt Nam - Mua bán đấu giá trực tuyến Ebay Mỹ"
                                        title="ChợĐiệnTử.VN - Mạng xã hội mua sắm trực tuyến nhiều hàng số 1 Việt Nam - Mua bán đấu giá trực tuyến Ebay Mỹ"></a>
                            </td>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1K.png" alt="eBay.vn - Sàn mua bán đấu giá trực tuyến từ eBay Mỹ"
                                        title="eBay.vn - Sàn mua bán đấu giá trực tuyến từ eBay Mỹ"></a>
                            </td>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1L.png" alt="Nhà Sách Phương Nam::Mua sách, đĩa nhạc, đĩa phim, quà tặng, máy đọc sách, thiết bị số trực tuyến tại nhà sách online Phương Nam, giao hàng miễn phí và thu tiền tận nơi, nhận hàng trong vòng 24 tiếng"
                                        title="Nhà Sách Phương Nam::Mua sách, đĩa nhạc, đĩa phim, quà tặng, máy đọc sách, thiết bị số trực tuyến tại nhà sách online Phương Nam, giao hàng miễn phí và thu tiền tận nơi, nhận hàng trong vòng 24 tiếng"></a>
                            </td>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1M.png" alt="Công ty Thế Giới Trực Tuyến chuyên cung cấp laptop chính hãng giá rẻ nhất, cài đặt phần mềm miễn phí cho khách hàng"
                                        title="Công ty Thế Giới Trực Tuyến chuyên cung cấp laptop chính hãng giá rẻ nhất, cài đặt phần mềm miễn phí cho khách hàng"></a>
                            </td>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1N.png" alt="3nana.vn – Đọc và đặt mua các tạp chí, báo Việt ấn bản điện tử"
                                        title="3nana.vn – Đọc và đặt mua các tạp chí, báo Việt ấn bản điện tử"></a>
                            </td>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1O.png" alt="THE365.VN - Website bán thẻ trực tuyến lớn nhất Việt Nam"
                                        title="THE365.VN - Website bán thẻ trực tuyến lớn nhất Việt Nam"></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1P.png" alt="exchanger.vn - Website giao dịch ( mua / bán / chuyển đổi ) tự động các loại tiền tệ WebMoney ( WMZ,WME ), Liberty Reserve (LR), PefectMoney (PM)"
                                        title="exchanger.vn - Website giao dịch ( mua / bán / chuyển đổi ) tự động các loại tiền tệ WebMoney ( WMZ,WME ), Liberty Reserve (LR), PefectMoney (PM)"></a>
                            </td>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1Q.png" alt="Chuyên sản xuất, kinh doanh trang sức, vàng, bạc, vàng miếng."
                                        title="Chuyên sản xuất, kinh doanh trang sức, vàng, bạc, vàng miếng."></a>
                            </td>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1R.png" alt="FPT Data - Hosting - Domain - Dedicated - Colocation - VPS - Email - Vietnam, Web design, Hosting Provider, Web, Website"
                                        title="FPT Data - Hosting - Domain - Dedicated - Colocation - VPS - Email - Vietnam, Web design, Hosting Provider, Web, Website"></a>
                            </td>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1S.png" alt="Siêu thị điện máy Nguyễn Kim - Top 500 nhà bán lẻ hàng đầu châu Á  với mặt hàng điện tử, điện lạnh, gia dụng, điện thoại, tin học ..."
                                        title="Siêu thị điện máy Nguyễn Kim - Top 500 nhà bán lẻ hàng đầu châu Á  với mặt hàng điện tử, điện lạnh, gia dụng, điện thoại, tin học ..."></a>
                            </td>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1T.png" alt="Xã Luân tạp chí tin tức mới trong ngày giải trí xem phim chơi game"
                                        title="Xã Luân tạp chí tin tức mới trong ngày giải trí xem phim chơi game"></a>
                            </td>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1U.png" alt="Cổng thanh toán, chơi game trực tuyến"
                                        title="Cổng thanh toán, chơi game trực tuyến"></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1V.png" alt="Siêu thị Megabuy.vn - e-SuperMart MEGABUY.VN - Siêu thị bán hàng trực tuyến Máy ảnh kỹ thuật số, Máy chiếu, Điều hòa,  Máy photocopy, Máy hủy tài liệu, chính hãng, Sony, Panasonic - Laptop, may chieu, may van phong, ma"
                                        title="Siêu thị Megabuy.vn - e-SuperMart MEGABUY.VN - Siêu thị bán hàng trực tuyến Máy ảnh kỹ thuật số, Máy chiếu, Điều hòa,  Máy photocopy, Máy hủy tài liệu, chính hãng, Sony, Panasonic - Laptop, may chieu, may van phong, ma"></a>
                            </td>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1W.png" alt="Công ty CP CNTT Nam Á - Hệ thống phân phối toàn Quốc Máy tính Sony vaio,Apple,Lenovo Thinkpad, Dell, HP,ComPaq,Asus,Acer,Toshiba,Desktop,Server,Thiết bị văn phòng,Sản phẩm chính Hãng , Bảo hành toàn cầu..."
                                        title="Công ty CP CNTT Nam Á - Hệ thống phân phối toàn Quốc Máy tính Sony vaio,Apple,Lenovo Thinkpad, Dell, HP,ComPaq,Asus,Acer,Toshiba,Desktop,Server,Thiết bị văn phòng,Sản phẩm chính Hãng , Bảo hành toàn cầu..."></a>
                            </td>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1X.png" alt="Địa chỉ mua sắm dành riêng cho thành viên Go.vn của ChợĐiệnTử - Mua gì cũng có!"
                                        title="Địa chỉ mua sắm dành riêng cho thành viên Go.vn của ChợĐiệnTử - Mua gì cũng có!"></a>
                            </td>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1Y.png" alt="Điện thoại, anhvumobile, nokia, samsung, sony ericsson, mobell, mobistar, LG, HTC, iPhone, Apple"
                                        title="Điện thoại, anhvumobile, nokia, samsung, sony ericsson, mobell, mobistar, LG, HTC, iPhone, Apple"></a>
                            </td>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_1Z.png" alt="Babylon.vn - Trang thương mại điện tử, mua sắm trực tuyến uy tín nhất Việt Nam, khởi tạo gian hàng cùng Babylon"
                                        title="Babylon.vn - Trang thương mại điện tử, mua sắm trực tuyến uy tín nhất Việt Nam, khởi tạo gian hàng cùng Babylon"></a>
                            </td>
                            <td>
                                <a href="#" target="">
                                    <img src="../../Content/images/large_20.png" alt="Tổng Công ty Cổ phần Bảo hiểm Ngân hàng Đầu tư và Phát triển Việt Nam (BIC)"
                                        title="Tổng Công ty Cổ phần Bảo hiểm Ngân hàng Đầu tư và Phát triển Việt Nam (BIC)"></a>
                            </td>
                        </tr>
                        </table>
                    <div class="clear">
                    </div>
                </div>
            </div>
            <script language="javascript">
                $('#tab-box li a').each(function (index) {
                    $(this).bind('mouseover', function () {
                        $('#tab-box li').removeClass('active').eq(index).addClass('active');
                        $('.tab-content').hide().eq(index).show();
                        return false;
                    }).bind('click', function () { return false; });
                });
            </script>
        </div>
        <div id="content-left">

        <%
            if (Session["User"] == null)
            {
        %>
                <!-- start đăng nhập -->
                <div class="box" id="login">
                    <h4 class="title">
                        Đăng nhập tài khoản ví điện tử</h4>
                    <form method="post" action="/Public/XuLyDangNhap" onsubmit="return checkLogin();"
                    style="margin: 0px; padding: 0px;">
                    <input type="hidden" name="form_module_id" value="1647" />
                    <input type="hidden" name="_token_form" value="1debc3f0be12fcf3b463750bb6b42ff8" />
                    <input type="hidden" name="form_module_id" value="1646" />
                    <div id="input-login">
                        <!-- thông báo lỗi-->
                        <%-- <div class="message-box"></div> --%>
                        <!--hết thông báo lỗi-->
                        <table border="0" cellspacing="0" width="100%">
                            <tr>
                                <td style="padding-bottom: 10px;">
                                    Tài khoản:
                                </td>
                                <td align="right">
                                    <input name="email" type="text" value="Email hoặc tên đăng nhập" id="email" style="color: #777;
                                        width: 150px; margin: 0px; padding: 0px; height: 18px; font-size: 12px; border: 1px solid #a5b4bc;"
                                        onfocus="if(this.value == 'Email hoặc tên đăng nhập'){this.value='';};" onblur="if(this.value == ''){this.value='Email hoặc tên đăng nhập';};" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Mật khẩu:
                                </td>
                                <td align="right">
                                    <input class="keyboardInput" name="password" type="password" id="password" autocomplete="off"
                                        value="12345678" style="color: #777; width: 130px; margin: 0px; padding: 0px; height: 18px;
                                        font-size: 12px; border: 1px solid #a5b4bc;" />
                            </tr>
                        </table>
                    </div>
                    <div id="box-button-login" style="margin-top: 6px;">
                        <input name="cmdLogin" type="submit" value="Đăng nhập" class="button-content" />
                        <a href="#">
                            Quên mật khẩu?</a>
                    </div>
                    </form>
                    <div id="dangky">
                        Bạn chưa có ví điện tử Ecmoney10broker.tk?</br>
                        <a href="/Public/ChonDangKy">
                            <img src="../../Content/images/button-s.gif" border="0" /></a>
                    </div>
                </div>
                <!-- end đăng nhập -->
        <%                    
            }
            else
            {
                Money10Broker.Models.TaiKhoan tk = (Money10Broker.Models.TaiKhoan)Session["User"];
        %>
        
	        <div class="nlh-col235">
                <div class="nlh-boxmdule">
                    <div class="nlh-topbx2"></div>
                    <div class="nlh-accLinks">
                        <div class="clearfix"><h2><i class="accIcon"></i><%=tk.Email %></h2></div>
                        <div class="nlh-topbrd">
                            <p class="labelAcc">TỔNG TIỀN:</p>
                            <p class="totalbalance">0<sup style="font-size: 10px; font-weight: normal; text-transform: none">vnd</sup></p>
                        </div>
                        <div class="nlh-topbrd">
                            <p class="labelAcc">SỐ DƯ KHẢ DỤNG:</p>
                            <p class="balanceavailable">0<sup style="font-size: 10px; font-weight: normal; text-transform: none">vnd</sup></p>
                        </div>
                        <div class="nlh-topbrd">
                            <p class="labelAcc">ÐÓNG BĂNG:</p>
                            <p class="freeze">0<sup style="font-size: 10px; font-weight: normal; text-transform: none">vnd</sup></p>
                        </div>
                    </div>
                    <div class="nlh-mdbx"><!--  nlh-formUsrlg-->
                        <ul>
                            <li><a href="/Public/ThongTinTaiKhoan">Thông tin tài khoản</a></li>
                            <li><a href="/Public/TongHop">Quản trị giao dịch</a></li>
                            <li><a href="#">Thực hiện giao dịch</a></li>
                            <li><a href="#">Trung tâm khiếu nại</a></li>
                            <li><a href="#">Tích hợp thanh toán</a></li>
                        </ul>
                        <div class="nlh-accRecharge">
                            <a href="#" class="rechargeNL"></a>
                            <p align="right" class="nlh-logout fr"><a href="/Public/XuLyDangXuat">Ðăng xuất</a></p>
                        </div>
                    </div>
                </div>
                </div>
                          
        <% }%>

            <script language="javascript">
                function checkLogin() {
                    if ($('#email').val() == 'Email hoặc tên đăng nhập') {
                        $('#email').val('');
                    };
                    var email = $('#email').val();
                    var password = $('#password').val();

                    if (!notEmpty(email)) {
                        alert('Bạn chưa nhập Email hoặc Tên đăng nhập!');
                        $('#email').focus();
                        return false;
                    }
                    if (!notEmpty(password)) {
                        alert('Bạn chưa nhập Mật khẩu đăng nhập!');
                        $('#password').focus();
                        return false;
                    }
                    if ($('#verify_image').length) {
                        var verify_image = $('#verify_image').val();
                        if (!notEmpty(verify_image)) {
                            alert('Bạn chưa nhập Mã xác nhận!');
                            $('#verify_image').focus();
                            return false;
                        }
                    }
                    return true;
                }
            </script>
            <div class="box" id="help-index-left">
                <h4 class="title">
                    Tin mới cập nhật</h4>
                <ul>
                    <li><a href="#"
                        class="{act}" target="" title="Trợ giá đặc biệt nhân dịp ra mắt mạng học tiếng Anh trực tuyến HelloChao.vn">
                        Trợ giá đặc biệt nhân dịp ra mắt mạng học tiếng Anh trực tuyến HelloChao.vn</a></li>
                    <li><a href="#"
                        class="{act}" target="" title="Giải pháp thanh toán Nội dung số và Ký kết hợp tác giữa Techcombank – Ngân lượng và Felix">
                        Giải pháp thanh toán Nội dung số và Ký kết hợp tác giữa Techcombank – Ngân lượng
                        ...</a></li>
                    <li><a href="#"
                        class="{act}" target="" title="Đón Giáng sinh - Rinh hàng hiệu">Đón Giáng
                        sinh - Rinh hàng hiệu</a></li>
                    <li><a href="#"
                        class="{act}" target="" title="Hội thảo Kinh doanh online - Cơ hội thời bão giá">
                        Hội thảo Kinh doanh online - Cơ hội thời bão giá</a></li>
                    <li><a href="#"
                        class="{act}" target="" title="Hội thảo: Giải pháp thanh toán Nội dung số và Lễ ký kết hợp tác Techcombank – Ngân Lượng – Felix">
                        Hội thảo: Giải pháp thanh toán Nội dung số và Lễ ký kết hợp tác Techcombank – Ngân
                        ...</a></li>
                </ul>
                <p class="redmove">
                    <a href="#" target="">Xem thêm</a></p>
            </div>
        </div>
    </div>
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="heart-banner" style="height: 220px; margin-top: 0;">
        <div id="pic-heart">
            <div id="frame-banner" style="width: 6580px; left: -3760px;">
                <div>
                    <a href="#" target="">
                        <img src="../../../Content/images/1top_940x220 copy.jpg" alt="1top.vn" border="0"
                            width="940" height="220"></a></div>
                <div>
                    <a href="#"
                        target="">
                        <img src="../../../Content/images/Sacombank_nganluong_940x220.jpg" alt="Sacombank"
                            border="0" width="940" height="220"></a></div>
                <div>
                    <a href="#" target="">
                        <img src="../../../Content/images/Baomoi-TechcomBank-NL copy1.jpg" alt="Báo Mới - Techcombank"
                            border="0" width="940" height="220"></a></div>
                <div>
                    <a href="#"
                        target="">
                        <img src="../../../Content/images/banner hello chao (NL) .jpg" alt="HelloChao.vn"
                            border="0" width="940" height="220"></a></div>
                <div>
                    <a href="#" target="">
                        <img src="../../../Content/images/banner Giao Long.jpg" alt="3nana.vn ưu đãi" border="0"
                            width="940" height="220"></a></div>
                <div>
                    <a href="#" target="">
                        <img src="../../../Content/images/365win.jpg" alt="365win ưu đãi" border="0" width="940"
                            height="220"></a></div>
                <div>
                    <a href="#" target="">
                        <img src="../../../Content/images/DG nguoc kinh 42.jpg" alt="Đấu giá shock" border="0"
                            width="940" height="220"></a></div>
                <div class="clear">
                </div>
            </div>
            <div id="title-heartbanner">
                <ul>
                    <li class="" style="width: 134px;"><a href="#" style="padding-right: 0px;">
                        <span>&nbsp;</span>1top.vn</a></li>
                    <li class="" style="width: 134px;"><a href="#" style="padding-right: 0px;">
                        <span>&nbsp;</span>Sacombank</a></li>
                    <li class="" style="width: 134px;"><a href="#" style="padding-right: 0px;">
                        <span>&nbsp;</span>Báo Mới - Techcombank</a></li>
                    <li class="" style="width: 134px;"><a href="#" style="padding-right: 0px;">
                        <span>&nbsp;</span>HelloChao.vn</a></li>
                    <li class="active" style="width: 134px;"><a href="#" style="padding-right: 0px;">
                        <span>&nbsp;</span>3nana.vn ưu đãi</a></li>
                    <li class="" style="width: 134px;"><a href="#" style="padding-right: 0px;">
                        <span>&nbsp;</span>365win ưu đãi</a></li>
                    <li class="end" style="width: 136px;"><a href="#" style="padding-right: 0px;">
                        <span>&nbsp;</span>Đấu giá shock</a></li>
                </ul>
            </div>
        </div>
        <div id="timeout-heartbanner" style="display: none;">
            <p>
                5000</p>
            <p>
                5000</p>
            <p>
                6000</p>
            <p>
                6000</p>
            <p>
                6000</p>
        </div>
    </div>
</asp:Content>--%>
