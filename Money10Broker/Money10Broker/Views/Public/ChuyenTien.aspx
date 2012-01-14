﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	ChuyenTien
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="menu-nav-content">
	<div id="menu-nav-content-l"></div>
	<div id="menu-nav-content-r"></div>
	<div id="menu-nav-content-c">
		<div id="menu-nav-content-main">
			<ul>
			
				<li class="active " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_transaction_info"><span>GIAO DỊCH</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=complaint&amp;type=all"><span>KHIẾU NẠI</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_info"><span>TÀI KHOẢN</span></a></li>
				<li class=" end" style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=payment_integrate_homepage"><span>TÍCH HỢP THANH TOÁN</span></a></li>
			</ul>
		</div>
		<div id="menu-nav-content-sub">
			<ul>
			
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_transaction_info"><span>Tổng hợp</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=transaction_history"><span>Lịch sử giao dịch</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=card_transaction"><span>Giao dịch thẻ cào</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=deposit"><span>Nạp tiền</span></a></li>
				<li class=" active" style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=transfer"><span>Chuyển tiền</span></a></li>
				<li class="" style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=withdraw"><span>Rút tiền</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=payment_request"><span>Đề nghị thanh toán</span></a></li>
				<li class=" end" style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=receiving_refund"><span>Nhận tiền hoàn lại</span></a></li>
			</ul>
		</div>
	</div>
</div>		
<div class="box-content">	
	<div class="box-content-square" style="padding-top:0;">		
		<div id="complaints-left">		 
		<div>
			<!-- thông báo lỗi--><div class="message-box"></div><!--hết thông báo lỗi-->
		</div>	
		  <form method="post" enctype="multipart/form-data"><input type="hidden" name="form_module_id" value="451">
		  <table border="0" cellspacing="10" cellpadding="0" width="100%">			  	
			  <tr>
				<th><span class="required">*</span>Số thẻ người gửi:</th>
				<td><input name="" type="text" value="" class="input-business input-amount field-check" autocomplete="off"></td>
			  </tr>
			  <tr>
				<th><span class="required">*</span>Số thẻ người nhận:</th>
				<td><input name="amount" type="text" value maxlength="11" class="input-business input-amount field-check" autocomplete="off"> <span class="field-check-function submit" title="notEmpty(_value_)">Chưa nhập số tiền muốn rút</span><span class="field-check-function blur submit" title="isAmount(_value_)">Số tiền muốn rút nhập không đúng yêu cầu</span>
				</td>
			  </tr>		
			  <tr>
				<th><span class="required">*</span>Số tiền muốn chuyển khoản</th>
				<td><input name="amount" type="text" value maxlength="11" class="input-business input-amount field-check" autocomplete="off"><span class="span-grey"> (VND)</span> <span class="field-check-function submit" title="notEmpty(_value_)">Chưa nhập số tiền muốn rút</span><span class="field-check-function blur submit" title="isAmount(_value_)">Số tiền muốn rút nhập không đúng yêu cầu</span>
				</td>
			  </tr>		  			  
			 		  
			  <tr class="cashout-fee">
				<th>Phí rút tiền:</th>
				<td><strong>Theo phí chuyển khoản quy định của từng ngân hàng</strong></td>
			  </tr>              			  	  					  
			  <tr>
				<th><span class="required">*</span>Mã xác nhận:</th>
				<td><input name="verify_image" type="text" class="input-business field-check" maxlength="5" autocomplete="off" style="width:80px;"><img src="../../Content/images/captcha0.gif" border="0" style="margin-left:10px;" align="absmiddle">
                	<span class="field-check-function submit" title="notEmpty(_value_)">Chưa nhập mã xác nhận</span>
                </td>
			  </tr>						  				  
			  <tr>
				<th>&nbsp;</th>
				<td><input name="btnSubmit" type="submit" value="Tiếp tục »" class="button-content"></td>
			  </tr>
		</table>
		</form>
        <script language="javascript">            setFormCheck();</script>	
		</div>
		
	</div>
</div>

</asp:Content>