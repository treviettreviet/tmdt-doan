<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	DoiMatKhau
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

  <div id="menu-nav-content">
	<div id="menu-nav-content-l"></div>
	<div id="menu-nav-content-r"></div>
	<div id="menu-nav-content-c">
		<div id="menu-nav-content-main">
			<ul>
				<li class="active " style="display:block"><a href="#"><span>GIAO DỊCH</span></a></li>
				<li class=" " style="display:block"><a href="/Account/ThongTinTaiKhoan"><span>TÀI KHOẢN</span></a></li>			
			</ul>
		</div>
		<div id="menu-nav-content-sub">
			<ul>
		    	<li class=" " style="display:block"><a href="/Transaction/LichSuGiaoDich"><span>Tổng hợp</span></a></li>
				<li class=" active " style="display:block"><a href="/Transaction/LichSuGiaoDich"><span>Lịch sử giao dịch</span></a></li>			
                <li class="" style="display:block"><a href="/Transaction/RutTien"><span>Rút tiền</span></a></li>	
				<li class=" " style="display:block"><a href="/Transaction/ChuyenTien"><span>Chuyển tiền</span></a></li>
                <%--<li class=" " style="display:block"><a href="/Public/ChuyenTienCungMoigioi"><span>Chuyển tiền cùng môi giới</span></a></li>
                <li class=" " style="display:block"><a href="/Public/ChuyenTienKhacMoigioi"><span>Chuyển tiền khác môi giới</span></a></li>				--%>
				
			</ul>
		</div>
	</div>
</div>
            <div id="menu-vertical">
                <div id="menu-vertical-right">
                <div id="merchant_integrate_new">	
	<div class="menu-vertical-right-content-list" style="padding:20px 15px 10px 15px; border:1px solid #A5B4BC; border-top:none;">
        <div id="account-info-title-no-underline"><span class="yel">Thay đổi mật khẩu đăng nhập tài khoản</span>
		&nbsp;&nbsp;<span>[ <a target="_parent" href="/Account/ThongTinTaiKhoan">Xem thông tin tài khoản</a> ]</span>
		</div>	
       <div id="acc-changepassword" style="padding:0 1px 0 0; border:none;">
		 	<div id="step-flow" style="width:auto;">
				<ul id="step-three">
					<li class="active" style="width:250px;"><span>1. </span>Yêu cầu thay đổi mật khẩu</li>
				</ul>
			</div>				
            <!--begin change pass-->
            <form method="post" action=""><input type="hidden" name="form_module_id" value="1641">
            <div class="message-box"></div>
            <table border="0" cellspacing="0" cellpadding="0">
              <tr>
                <th style="width:200px;"><span class="required">*</span>Mật khẩu đăng nhập cũ:</th>
                <td><input type="password" autocomplete="off" style="width:200px;" name="old_pass" size="30" value class="field-check keyboardInput">&nbsp;&nbsp;<a href="" style="text-decoration:underline;"></a><div class="field-notification field-alert">Nhập chính xác mật khẩu đăng nhập cũ (nếu bạn quên, xin vui lòng chọn "Quên mật khẩu")</div><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập mật khẩu đăng nhập cũ</span></td>
              </tr>
              <tr>
                <th><span class="required">*</span>Mật khẩu đăng nhập mới:</th>
                <td><input type="password" autocomplete="off" style="width:200px;" name="new_pass" id="new_pass" size="30" value class="field-check keyboardInput"><div class="field-notification field-alert">Nhập mật khẩu đăng nhập mới từ 6-20 ký tự, không bao gồm khoảng trống, không trùng với mật khẩu đăng nhập cũ</div><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập mật khẩu đăng nhập mới</span><span class="field-check-function blur submit" title="isPassword(_value_)">Mật khẩu đăng nhập chưa đúng quy tắc</span></td>
              </tr>
              <tr>
                <th><span class="required">*</span>Nhập lại mật khẩu đăng nhập mới:</th>
                <td><input type="password" autocomplete="off" style="width:200px;" name="renew_pass" size="30" value class="field-check keyboardInput"><div class="field-notification field-alert">Nhập lại mật khẩu đăng nhập mới từ 6-20 ký tự, không bao gồm khoảng trống</div><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập lại mật khẩu đăng nhập</span><span class="field-check-function blur submit" title="isPassword(_value_)">Nhập lại mật khẩu đăng nhập chưa đúng quy tắc</span><span class="field-check-function blur" title="isConfirmObject(_value_,'new_pass')">Nhập lại mật khẩu đăng nhập chưa chính xác</span></td>
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
                       <li class="active"><a href="/Account/DoiMatKhau">Đổi mật khẩu</a></li>
            </ul>
                </div>
            </div>

</asp:Content>
