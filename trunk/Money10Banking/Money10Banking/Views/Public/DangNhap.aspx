<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <div id="Main">
					    		    			 <!-- Body -->
 <script type="text/javascript" src="../../Scripts/js/keyboard.js"></script>
 <link rel="stylesheet" type="text/css" href="../../Content/css/keyboard.css">
 <div class="home-form-login">
  <div class="frm-login-left left" style="padding-bottom:20px;">
  
                    <div class="login-form">
                        <div class="login_header"></div>
                        <div class="login_content">
                         <form action="Public/XuLyDangNhap" id="form_login" accept-charset="utf-8" method="post">
                            <input type="hidden" name="_form_action" value="/accounts/login">
                            <input type="hidden" name="_form_token" value="89b6ae338e41af5d29a372356130073f2ce5a24d">
                            <div class="header">Đăng Nhập</div>  
                            <div class="login_label">Email / Số điện thoại</div>
                            <div><input type="text" name="email" value="" class="keyboardInput login_texbox"/></div>
                            <div class="login_label">Mật khẩu</div>
                            <div><input type="password" name="password" value="" class="keyboardInput login_texbox"/></div>
                           <!--  
                            <div class="login_remember">
                                <input type="checkbox" name="" value="" id="cb_remember" class="inputcheckbox" /><label for="cb_remember">Nhớ mật khẩu</label>
                            </div>
                            -->
                             <div class="login_label">Chuyển đến</div>
                            <div>
                             <select name="goTo">
<option value="accounts/info">Thông tin tài khoản</option>
<option value="transactions/log">Lịch sử giao dịch</option>
<option value="accounts/profile/money_receiving_config">Cấu hình tài khoản</option>
</select>                            </div>
                            <div><input type="submit" name="submit" value="Đăng Nhập" class="login_button"></div>
                            <div class="login_link">
                            	<a href="https://www.baokim.vn/accounts/register" title="Đăng ký tài khoản Bảo Kim miễn phí">Đăng ký tài khoản Bảo Kim <b>Miễn phí</b></a>                                <a href="https://www.baokim.vn/accounts/login/forget_password" title="Quên mật khẩu">Quên mật khẩu?</a>                                <a href="https://www.baokim.vn/accounts/login/forget_email" title="Quên email">Quên email?</a>                            </div>
                       	                       </form>                        
                        </div>
                        <div class="login_bottom"></div>
                    </div>
                </div>
               
                <div class="frm-login-right right">
                	 <a href="https://www.baokim.vn/faq/category/huong-dan-nap-tien-truc-tiep-tu-tai-khoan-bao-kim">
                	<div class="frm_login_right_top">
                		<div class="frm_login_right_top_a">
                		Áp dụng với tất cả các chương trình
						<br>khuyến mãi của các nhà mạng
						<p><p>
						<span style="color:#76b143;font-size:12px;">
						Giảm ngay <b style="font-size:22px;">3%</b> giá trị thẻ nạp
						<br>Tiền sẽ vào điện thoại của bạn <b>NGAY LẬP TỨC</b>
						</span>
                		</div>
                	</div>
                	</a>
                	<div class="frm_login_right_bottom">
                	<b style="padding-top:5px;">Khi là thành viên của Bảo Kim, bạn được hưởng các tiện ích:</b>
                	
                	 <div class="baokim_tienich">
                        <ul>
                            <li>Mua hàng được tích lũy <a href="https://www.baokim.vn/faq/category/kiem-tien-thuong-khi-mua-hang" class="c006699">tiền thưởng</a></li>
     						<li><a href="https://www.baokim.vn/promote/gioithieuthatnhieu.html" class="c006699">Kiếm tiền</a> tại nhà với Bảo Kim</li>
     						<li><a href="https://www.baokim.vn/faq/category/huong-dan-nap-tien-truc-tiep-tu-tai-khoan-bao-kim" class="c006699">Nạp thẻ điện thoại</a> tại nhà được chiết khấu ...<a href="https://www.baokim.vn/faq/category/huong-dan-nap-tien-truc-tiep-tu-tai-khoan-bao-kim" class="c006699"> xem thêm &gt;&gt;</a></li>
                        </ul>
                    </div>
                	</div>               	
                  </div>
                <div class="clear"></div>
               </div>
            </div>

</asp:Content>
