<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Main" style="padding: 0">
        
                <div class="home-top">
                    <div class="home-top-left">
                        <%--<script type="text/javascript" src="Scripts/js/keyboard.js"></script>
                        <link rel="stylesheet" type="text/css" href="Content/css/keyboard.css">--%>
                        <div class="form_login">
                            <form action="Public/XuLyDangNhap" method="post" id="login_small"
                            autocomplete="off" accept-charset="utf-8">

                            <% 
                                if (Session["User"] == null)
                                {
                            %>
                                    <table width="170" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="34">
                                                <div class="home-form-login-title">
                                                    ĐĂNG NHẬP HỆ THỐNG</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="15" class="form-content-text">
                                                Địa chỉ Email 
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30">
                                                <label>
                                                    <input type="text" name="email" value="huynhtanlen3003@gmail.com" id="email" class="keyboardInput" style="width: 128px;">
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="14" class="form-content-text">
                                                Mật khẩu
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30">
                                                <label>
                                                    <input type="password" name="password" value="12345678" id="password" class="keyboardInput"
                                                        style="width: 128px;">
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="27">
                                                <label>
                                                    <input type="submit" name="btnLogin" value="Đăng Nhập" class="home-bt-login">
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="form-content-text">
                                                <a href="#" class="home-fr-a">Quên
                                                    mật khẩu</a>&nbsp;&nbsp; <a href="#"
                                                        class="home-fr-a">Quên email ? </a>
                                                <div style="padding-top: 5px">
                                                    Chưa có tài khoản? <a href="/Public/DangKy" class="home-fr-a">
                                                        Đăng ký</a></div>
                                            </td>
                                        </tr>
                                    </table>    
                            <%        
                                }
                                else
                                {
                                    Money10Banking.Models.TaiKhoan tk = (Money10Banking.Models.TaiKhoan)Session["User"];
                            %>
                                    <table width="170px" border="0" cellpadding="0" cellspacing="0">
	                                    <tbody>
		                                    <tr>
			                                    <td height="45">
			                                    <div class="home-form-login-title">Thông tin tài khoản</div>
			                                    </td>
		                                    </tr>
		                                    <tr>
			                                    <td height="25" class="form-content-text">
			                                    <b>Email :</b> <%=tk.Email %></td>
		                                    </tr>
		                                    <tr>
			                                    <td height="25" class="form-content-text"><b>Loại tài khoản:</b> Cá nhân</td>
		                                    </tr>
		                                    <tr>
			                                    <td height="25" class="form-content-text"><b>Tình trạng:</b>[ <a href="https://www.baokim.vn/accounts/register/activate">Chưa xác thực</a>]</td>
		                                    </tr>
		                                    <tr>
			                                    <td height="25" class="form-content-text"><b>Lần đăng nhập gần nhất: </b>
			                                    <b><%=tk.Email %></b> vào lúc
			                                     <% =DateTime.Now.ToString("hh:mm:ss - dd/MM/yyyy")%></td>
		                                    </tr>
	                                    </tbody>
                                    </table>
                            <%        
                                }
                            %>

                            </form>
                            <script type="text/javascript">
                        <script type="text/javascript">

                            function showSupportEx() {
                                j("#support_yahoo_skype").show();
                            }
                            function hideSupportEx() {
                                j("#support_yahoo_skype").hide();
                            }
                            function showAcccountEx() {
                                j("#AccountBlog").show();
                            }
                            function hideAcccountEx() {
                                j("#AccountBlog").hide();
                            }
                        </script>
                        <style type="text/css">
                            .ys-image
                            {
                                float: left;
                                width: 25%;
                            }
                            .ys-text
                            {
                                float: left;
                                padding-top: 0px;
                                width: 75%;
                                font-size: 11px;
                            }
                            .account-table-blog tr
                            {
                                height: 25px;
                            }
                            .account-table-blog td
                            {
                                padding-left: 25px;
                                color: #578E01;
                            }
                            #AccountBlog .account-table-blog a:hover
                            {
                                color: #578E01;
                            }
                        </style>
                    </div>
                </div>
                <div class="home-top-right">
                    <div class="slideshow">
                        <ul id="nav" style="margin-left: 2px;">
                            <li style="text-align: center;"><a href="#">
                                1</a> </li>
                            <li style="text-align: center;"><a href="#">
                                2</a> </li>
                            <li style="text-align: center;"><a href="#">
                                3</a> </li>
                            <li style="text-align: center;"><a href="#">
                                4</a> </li>
                            <li style="text-align: center;"><a href="#">
                                5</a> </li>
                        </ul>
                        <div class="pics" id="slideshow">
                            <a>
                                <img onclick="window.open('#')"
                                    width="592" height="193" src="../../Content/images/topup_ba.jpg"></a> <a>
                                        <img onclick="window.open('#')"
                                            width="592" height="193" src="../../Content/images/topup-ba.jpg"></a>
                            <a>
                                <img onclick="window.open('#')"
                                    width="592" height="193" src="../../Content/images/kiem_tie.jpg"></a> <a>
                                        <img onclick="window.open('#')"
                                            width="592" height="193" src="../../Content/images/592x1930.jpg"></a>
                            <a>
                                <img onclick="window.open('#')"
                                    width="592" height="193" src="../../Content/images/landding.jpg"></a>
                        </div>
                    </div>
                </div>
                <script type="text/javascript">
                    j(function () {
                        j('#slideshow').cycle({
                            fx: 'fade',
                            pager: '#nav',
                            pagerAnchorBuilder: function (idx, slide) {
                                // return sel string for existing anchor
                                return '#nav li:eq(' + (idx) + ') a';
                            }
                        });
                    });
                </script>
            </div>
            <div class="clear">
            </div>
       
        <div style="margin: 0pt auto; width: 805px;">
            <div class="hb-home-banner">
                <div class="hb-banner left">
                    <div class="hb-text" style="display: none;">
                        <div class="hb-title">
                            Thanh Toán Trực Tuyến</div>
                        <div class="hb-short-content">
                            Bạn có thể thanh toán tại nhà chỉ với thẻ ATM, thẻ tín dụng hoặc tài khoản internet
                            của 1 trong 20 Ngân Hàng, thậm chí không cần đăng ký tài khoản baokim.vn</div>
                        <div class="hb-more">
                            <a class="a-hb-more" href="#">Xem
                                thêm &gt;&gt; </a>
                        </div>
                    </div>
                    <div class="hb-img">
                        <img src="../../Content/images/home-bn0.jpg" width="260px" height="130px">
                    </div>
                </div>
                <div class="hb-banner left">
                    <div class="hb-text" style="display: none">
                        <div class="hb-title">
                            Mua Hàng An Toàn</div>
                        <div class="hb-short-content">
                            Khi mua hàng và thanh toán qua Baokim.vn bạn được đảm bảo nhận được hàng đúng mô
                            tả, hoặc sẽ được hoàn 100% giá trị giao dịch</div>
                        <div class="hb-more">
                            <a class="a-hb-more" href="#">Xem
                                thêm &gt;&gt; </a>
                        </div>
                    </div>
                    <div class="hb-img">
                        <img src="../../Content/images/home-bn-.jpg" width="260px" height="130px">
                    </div>
                </div>
                <div class="hb-banner right">
                    <div class="hb-text" style="display: none">
                        <div class="hb-title">
                            Tích Hợp Bán Hàng Đơn Giản</div>
                        <div class="hb-short-content">
                            Là chủ website bán hàng online ? bạn có thể tích hợp công cụ thanh toán cho mình
                            hoàn toàn miễn phí và đơn giản , kỹ thuật viên baokim.vn sẽ hỗ trợ bạn</div>
                        <div class="hb-more">
                            <a class="a-hb-more" href="#">Xem
                                thêm &gt;&gt; </a>
                        </div>
                    </div>
                    <div class="hb-img">
                        <img src="../../Content/images/home-bn1.jpg" width="260px" height="130px">
                    </div>
                </div>
                <script type="text/javascript">
                    j(".hb-banner").hover(function () {
                        j(this).find(".hb-text").addClass("hb-banner-gray");
                        //j(this).append('<div class="lhtrans"></div>');
                        j(this).find(".hb-text").show();
                    }, function () {
                        j(this).find(".hb-text").removeClass("hb-banner-gray");
                        j(this).find(".hb-text").hide();
                        //j(this).find('.lhtrans').remove();
                    });
                </script>
            </div>
            <div class="hb-main-content">
                <div class="hb-main-left">
                    <div class="hb-news-wrapper">
                        <div class="hb-news-box">
                            <div class="home-news-title">
                                TIN TỨC
                            </div>
                            <div class="hb-news-content">
                                <ul class="a-news">
                                    <li><a href="#"
                                        class="a-news">Hoa247.vn - Thay bạn nói lời yêu thương</a></li>
                                    <li><a href="#"
                                        class="a-news">Bigsale thẻ game lớn nhất trong năm tại Hungwar.com</a></li>
                                    <li><a href="#"
                                        class="a-news">Vinet24h.com.vn - Vì cuộc sống tươi đẹp</a></li>
                                    <li><a href="#"
                                        class="a-news">Cuộc sống tiện lợi và tốt đẹp hơn với Kicomart.com</a></li>
                                    <li><a href="#" class="a-news">
                                        Cước taxi đồng loạt tăng</a></li>
                                    <p style="margin-bottom: 0px; text-align: right; padding-right: 10px;">
                                        <a href="#">Xem thêm...</a></p>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hb-main-right">
                    <div class="hb-news">
                        <div class="hb-news-title">
                            Chuyển tiền và mua sắm trên mạng</div>
                        <ul>
                            <li><a href="#"><span class="hb-news-bold">
                                Mua sắm trực tuyến</span></a> từ hàng ngàn website, gian hàng và được <a href="#">
                                    <span class="hb-news-a">bảo hiểm</span></a> khi chọn thanh toán an toàn.</li>
                            <li><a href="#"><span class="hb-news-bold">
                                Chuyển tiền trực tuyến</span></a><a href="#"><span
                                    class="hb-news-a"> an toàn</span></a> và nhanh chóng cho bất kỳ ai với 1 địa
                                chỉ Email.</li>
                            <li><a href="#"><span class="hb-news-bold">
                                Thanh toán, nạp tiền </span></a>trực tiếp từ hơn 20 ngân hàng lớn với thẻ nội địa,
                                tín dụng quốc tế Visa, Master, Amex...</li>
                        </ul>
                    </div>
                    <div class="line-phancach">
                        &nbsp;</div>
                    <div class="hb-news">
                        <div class="hb-news-title">
                            Bán hàng và nhận hàng trực tuyến</div>
                        <ul>
                            <li><a href="#"><span class="hb-news-bold">Tích hợp
                                thanh toán</span></a> miễn phí vào Website bán hàng, Forum, Blog, Rao vặt đơn giản
                                và linh hoạt.</li>
                            <li><a href="#"><span class="hb-news-bold">
                                Nhận tiền siêu tốc</span></a> và tăng doanh số bán hàng online.</li>
                            <li><a href="#"><span class="hb-news-bold">
                                Gửi yêu cầu chuyển tiền</span></a> nhắc nhở ai đó chuyển tiền cho mình qua SMS,
                                Email hoàn toàn miễn phí.</li>
                        </ul>
                    </div>
                    <div id="text_html">
                    </div>
                </div>
                <!-- start Ngan hang doi tac -->
                <div class="home-banks">
                    <div class="home-banks-title">
                        Danh sách các Ngân hàng đối tác của Bảo Kim</div>
                    <div class="home-banks-content">
                        <table width="100%">
                            <tr>
                                <td width="4%" align="right">
                                    <div class="bank_list_prev" style="cursor: pointer;">
                                        <img src="../../Content/images/pre-arro.png"></div>
                                </td>
                                <td>
                                    <div class="bank-list">
                                        <ul>
                                            <li>
                                                <img src="../../Content/images/smartlin.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/10000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/20000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/30000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/40000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/50000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/60000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/70000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/80000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/90000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/10000001.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/11000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/12000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/13000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/14000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/15000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/16000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/17000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/18000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/19000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/20000001.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/21000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/22000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/23000000.png" alt="" height="55"></li>
                                        </ul>
                                    </div>
                                </td>
                                <td width="4%" align="left">
                                    <div class="bank_list_next" style="cursor: pointer;">
                                        <img src="../../Content/images/next-arr.png"></div>
                                </td>
                            </tr>
                        </table>
                        <script type="text/javascript" src="../../Scripts/js/jcarouse.js"></script>
                        <script type="text/javascript">
                            j(window).load(function () {
                                j(".bank-list").jCarouselLite({
                                    btnNext: ".bank_list_next",
                                    btnPrev: ".bank_list_prev",
                                    visible: 7
                                });
                            });
                        </script>
                    </div>
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
