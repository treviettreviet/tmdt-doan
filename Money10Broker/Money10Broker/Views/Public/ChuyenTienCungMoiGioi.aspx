<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	ChuyenTienCungMoiGioi
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="content">	
		<div id="menu-nav-content">
	<div id="menu-nav-content-l"></div>
	<div id="menu-nav-content-r"></div>
	<div id="menu-nav-content-c">
		<div id="menu-nav-content-main">
			<ul>
			
				<li class="active " style="display:block"><a href="#"><span>GIAO DỊCH</span></a></li>
				<li class=" " style="display:block"><a href="#"><span>KHIẾU NẠI</span></a></li>
				<li class=" " style="display:block"><a href="#"><span>TÀI KHOẢN</span></a></li>
				<li class=" end" style="display:block"><a href="#"><span>TÍCH HỢP THANH TOÁN</span></a></li>
			</ul>
		</div>
		<div id="menu-nav-content-sub">
			<ul>
			    <li class=" " style="display:block"><a href="/Public/LichSuGiaoDich"><span>Tổng hợp</span></a></li>
				<li class=" " style="display:block"><a href="/Public/LichSuGiaoDich"><span>Lịch sử giao dịch</span></a></li>				
				<li class=" " style="display:block"><a href="/Public/NapTien"><span>Nạp tiền</span></a></li>
                <li class="" style="display:block"><a href="/Public/RutTien"><span>Rút tiền</span></a></li>	
				<li class=" " style="display:block"><a href="/Public/ChuyenTien"><span>Chuyển tiền</span></a></li>
                <li class=" active" style="display:block"><a href="/Public/ChuyenTienCungMoigioi"><span>Chuyển tiền cùng môi giới</span></a></li>
                <li class=" " style="display:block"><a href="/Public/ChuyenTienKhacMoigioi"><span>Chuyển tiền khác môi giới</span></a></li>					
				<li class=" end" style="display:block"><a href="#"><span>Nhận tiền hoàn lại</span></a></li>
			</ul>
		</div>
	</div>
</div>
<div class="box-content-square" style="padding-top:0;margin-bottom:0;padding-bottom:15px;">
	<div class="box-content-square-content" id="transfer-friends">
	<form method="post" enctype="multipart/form-data"><input type="hidden" name="form_module_id" value="703">
		<div class="message-box"></div>
		<h4 style="margin-top:10px;">Tài khoản người nhận</h4>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tbody><tr>
			<th><span class="required">*</span>Tài khoản của tôi:</th>
			<td><strong>quangkhai1289@gmail.com</strong></td>
		  </tr>
		  <tr>
			<th><span class="required">*</span>Tài khoản người nhận:</th>
			<td class="blear"><input class="output-contact field-check" name="receiver_email" id="receiver_email" value="" maxlength="255" type="text"> 
				<div class="field-notification field-alert">Nhập địa chỉ Email chính của tài khoản người nhận (không quá 255 ký tự)</div><span class="field-check-function submit" title="notEmpty(_value_)">Chưa nhập tài khoản người nhận</span><span class="field-check-function blur submit" title="isEmail(_value_)">Tài khoản người nhận không đúng định dạng</span>
			</td>
		  </tr>
		  <tr>
			<th><span class="required">*</span>Nhập lại tài khoản người nhận:</th>
			<td class="blear">
				<input class="output-contact field-check text-confirm" name="confirm_receiver_email" value="" maxlength="255" type="text" autocomplete="off"><div id="danhsachdoitac"></div>
				<div class="field-notification field-alert">Nhập lại địa chỉ Email chính của tài khoản người nhận (không quá 255 ký tự, không hỗ trợ copy/paste)</div><span class="field-check-function submit" title="notEmpty(_value_)">Chưa xác nhận lại tài khoản người nhận</span><span class="field-check-function blur submit" title="isEmail(_value_)">Nhập lại tài khoản người nhận không đúng định dạng</span><span class="field-check-function blur" title="isConfirmObject(_value_,&#39;receiver_email&#39;)">Xác nhận tài khoản người nhận chưa chính xác</span>				
			</td>
		  </tr>
		</tbody></table>
		<h4 style="margin-top:10px;">Thông tin giao dịch</h4>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">			
			<tbody><tr>
				<th>Số dư khả dụng:</th>
				<td><span class="yel-large">0</span> <span class="span-grey">VND</span></td>
			</tr>
			<tr>
				<th><span class="required">*</span>Số tiền muốn chuyển:</th>
				<td class="blear"><input name="price" value="" type="text" class="field-check input-amount" maxlength="20" autocomplete="off"> <span class="span-grey">VND</span><div class="field-notification field-alert">Tối thiểu 2.000 VND/lần</div><span class="field-check-function blur submit" title="isAmount(_value_)">Số tiền muốn chuyển không đúng yêu cầu</span></td>
			</tr>			
			<tr>
				<th><span class="required">*</span>Lý do chuyển tiền:</th>
				<td class="blear"><textarea name="reason" type="text" class="field-check" cols="50" rows="5" style="width:500px;"></textarea><div class="field-notification field-alert">Nhập lý do chuyển tiền (không quá 500 ký tự)</div><span class="field-check-function submit" title="notEmpty(_value_)">Chưa nhập lý do chuyển tiền</span></td>
			</tr>
			<tr>
				<th><span class="required">*</span>Mã xác nhận:</th>
				<td class="blear"><input name="verify_image" value="" type="text" class="field-check" maxlength="{max_length}" style="width:100px;" autocomplete="off"><img src="../../Content/images/captcha0.gif" border="0" style="margin-left:10px;" align="absmiddle"><div class="field-notification field-alert">Nhập 5 ký tự nhìn thấy trong hình trên (không phân biệt chữ hoa/thường)</div><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập mã xác nhận</span></td>
			</tr>			
			<tr>
				<th></th>
				<td><input class="button-content" type="submit" value="Tạo giao dịch"></td>
			</tr>
		</tbody></table>
	</form>
	<script language="javascript">	    setFormCheck();</script>
	</div>	
</div>
</asp:Content>
