<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	DoiMatKhauThanhToan
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <div id="menu-nav-content">
	<div id="menu-nav-content-l"></div>
	<div id="menu-nav-content-r"></div>
	<div id="menu-nav-content-c">
		<div id="menu-nav-content-main">
			<ul>
				<li class=" " style="display:block"><a href="/Transaction/LichSuGiaoDich"><span>GIAO DỊCH</span></a></li>
				<li class="active " style="display:block"><a href="/Account/ThongTinTaiKhoan"><span>TÀI KHOẢN</span></a></li>
			</ul>
		</div>
		<div id="menu-nav-content-sub">
			<ul>
		    	<li class=" " style="display:block"><a href="/Account/ThongTinTaiKhoan"><span>Thông tin tài khoản</span></a></li>
				<li class=" " style="display:block"><a href="/Account/DoiMatKhau"><span>Đổi mật khẩu</span></a></li>			
                <li class="active" style="display:block"><a href="/Account/DoiMatKhauThanhToan"><span>Đổi mật khẩu thanh toán</span></a></li>	
			</ul>
		</div>
	</div>
</div>
            <div id="menu-vertical">
                <div id="menu-vertical-right">
                <div id="merchant_integrate_new">	
	<div class="menu-vertical-right-content-list" style="padding:20px 15px 10px 15px; border:1px solid #A5B4BC; border-top:none;">
        <div id="account-info-title-no-underline"><span class="yel">Thay đổi mật khẩu thanh 
            toán tài khoản</span>
		&nbsp;&nbsp;</div>	
       <div id="acc-changepassword" style="padding:0 1px 0 0; border:none;">
		 	<div id="step-flow" style="width:auto;">
				<ul id="step-three">
					<li class="active" style="width:250px;">Yêu cầu thay đổi mật khẩu</li>
				</ul>
			</div>				
            <!--begin change pass-->
            <form method="post" action=""><input type="hidden" name="form_module_id" value="1641">
            <div class="message-box"></div>
            <table border="0" cellspacing="0" cellpadding="0">              
              <tr>
                <th><span class="required">*</span>Mật khẩu đăng nhập mới:</th>
                <td><input type="password" autocomplete="off" style="width:200px;" name="new_pass" id="new_pass" size="30" value class="field-check keyboardInput"></td>
              </tr>
              <tr>
                <th><span class="required">*</span>Nhập lại mật khẩu đăng nhập mới:</th>
                <td><input type="password" autocomplete="off" style="width:200px;" name="renew_pass" size="30" value class="field-check keyboardInput"></td>
              </tr>              
              <tr>
                <th>&nbsp;</th>
                <td>
                    <input name="Submit" type="submit" value="Tiếp tục »" class="button-content">
                </td>
              </tr>
			  <tr><td colspan="2"></td></tr>
             </table>
             </form>
             <script language="javascript">                 setFormCheck();</script>
            <!--end change pass-->			
        </div>
	</div>
</div>    
                </div>
                <div id="menu-vertical-left">
                <ul>
                       <li class=""><a href="/Account/ThongTinTaiKhoan">Thông tin tài khoản</a></li>                        
                       <li class=""><a href="/Account/DoiMatKhau">Đổi mật khẩu</a></li>
                       <li class="active"><a href="/Account/DoiMatKhauThanhToan">Đổi mật khẩu thanh toán</a></li>
            </ul>
                </div>
            </div>

</asp:Content>
