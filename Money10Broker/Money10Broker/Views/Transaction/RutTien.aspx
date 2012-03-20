<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="menu-nav-content">
	<div id="menu-nav-content-l"></div>
	<div id="menu-nav-content-r"></div>
	<div id="menu-nav-content-c">
		<div id="menu-nav-content-main">
			<ul>
				<li class="active" style="display:block"><a href="/Public/TongHop"><span>GIAO DỊCH</span></a></li>
				<li class=" " style="display:block"><a href="/Account/ThongTinTaiKhoan"><span>TÀI KHOẢN</span></a></li>
			</ul>
		</div>
		<div id="menu-nav-content-sub">
			<ul>
		    	<%--<li class="" style="display:block"><a href="/Public/TongHop"><span>Tổng hợp</span></a></li>--%>
				<li class="" style="display:block"><a href="/Transaction/LichSuGiaoDich"><span>Lịch sử giao dịch</span></a></li>			
                <li class="active" style="display:block"><a href="/Transaction/RutTien"><span>Rút tiền</span></a></li>	
				<li class=" " style="display:block"><a href="/Transaction/ChuyenTien"><span>Chuyển tiền</span></a></li>
                <li class=" " style="display:block"><a href="/Transaction/ChuyenTienCungMoigioi"><span>Chuyển tiền cùng môi giới</span></a></li>
                <li class=" " style="display:block"><a href="/Transaction/ChuyenTienKhacMoigioi"><span>Chuyển tiền khác môi giới</span></a></li>
			</ul>
		</div>
	</div>
</div>
		<div id="title"><span class="yel">Yêu cầu rút tiền từ ví</span><span class="title-link"></span></div>
 <!-- BEGIN BlockAlert -->
<div id="note-content-warning" class="note-content-warning">
	<p>Bạn chưa chứng thực tài khoản vì vậy bạn chỉ được phép rút tiền về tài khoản Ngân hàng không quá <strong>500.000</strong> VND/ngày. Để dỡ bỏ hạn chế này, xin vui lòng <a href="#">chứng thực tài khoản ví của bạn</a></p>
</div>
 <!-- END BlockAlert -->	
<div class="box-content">	
	<div class="box-content-square" style="padding-top:0;">
		<div id="step-flow">
			<ul id="step-three">
				<li class="active">&nbsp;&nbsp; &nbsp;Yêu cầu rút tiền</li>
				<%--<li><strong>2.</strong> &nbsp; &nbsp;NgânLượng.vn phê duyệt</li>
				<li class="last"><strong>3.</strong> &nbsp; &nbsp;Hoàn tất</li>--%>
			</ul>
		</div>
		<div id="complaints-left">		 
		<div>
			<!-- thông báo lỗi--><div class="message-box"></div><!--hết thông báo lỗi-->
		</div>	
            <% Money10Broker.Models.TaiKhoan account = (Money10Broker.Models.TaiKhoan)Session["User"]; %>
		  <form method="post" action="/Transaction/XuLyRutTien"><input type="hidden" name="form_module_id" value="451">
		  <table border="0" cellspacing="10" cellpadding="0" width="100%">
			  <tr>
				<th>Tài khoản ví:</th>
				<td style="width:150px;"><strong><%=account.Email%></strong></td>
			  </tr>			
			  <tr>
				<th>Số dư khả dụng:</th>
				<td><span class="yel"><%=account.SoDu%></span> <span class="span-grey">VND</span></td>
			  </tr>
			  <tr>
				<th><span class="required">*</span>Số tiền yêu cầu rút:</th>
				<td><input name="amount" type="text" value maxlength="11" class="input-business input-amount field-check" autocomplete="off"><span class="span-grey"> (VND)</span> 
                <div class="field-notification field-alert">(tối đa 500.000 VND)</div><span class="field-check-function submit" title="notEmpty(_value_)">Chưa nhập số tiền muốn rút</span><span class="field-check-function blur submit" title="isAmount(_value_)">Số tiền muốn rút nhập không đúng yêu cầu</span>
				</td>
			  </tr>			  			  
			  <tr>
				<th><span class="required">*</span>Phương thức nhận tiền:</th>
				<td><select name="cashout_method" id="cashout_method" style="width: 330px" class="list-business"><option value="1" selected>Chuyển khoản ngân hàng</option></select></td>
			  </tr>			  
			  <tr class="cashout-fee">
				<th>Phí rút tiền:</th>
				<td><strong>Theo phí chuyển khoản quy định của từng ngân hàng</strong></td>
			  </tr>
              <tr class="cashout-fee">
				<th>Phí rút tiền:</th>
				<td><strong>Miễn phí</strong></td>
			  </tr>
			  <tr class="cashout-method cashout-method-active">
				<th><span class="required">*</span>Chọn tài khoản ngân hàng:</th>
				<td>
                <!-- BEGIN BlockAddBank -->
                	<span class="yel">Money 10 Banking</span>
                <!-- END BlockAddBank -->
                 
				</td>
			  </tr>					  					  
			  <tr class="cashout-method ">
				<th><span class="required">*</span>Địa chỉ nhận tiền:</th>
				<td><select name="location" id="location" style="width: 330px" class="list-business"><option value="1"></option><option value="0" selected>&nbsp;</option><option value="2">TP.HCM: Lầu 1-4, tòa nhà Blue Berry, số 9-11 đường D52 Cộng Hòa, phường 12, quận Tân Bình</option></select></td>
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
		<div id="complaints-right">
			<h4>Trợ giúp - Hướng dẫn</h4>
			<p>1. Thời gian để phê chuẩn yêu cầu rút tiền của bạn không quá <strong><u>4</u></strong> giờ làm việc hoặc không quá <strong><u>24</u></strong> giờ kể từ thời điểm bạn yêu cầu rút.</p>
			<p>2. Khi yêu cầu rút tiền xin vui lòng kiểm tra lại địa chỉ nhận tiền (trường hợp nhận tiền tại địa điểm giao dịch của NgânLượng.vn) hoặc thông tin tài khoản (nếu rút tiền về tài khoản ngân hàng).</p>
			<p>3. Trường hợp rút tiền về tài khoản ngân hàng, tên chủ tài khoản ngân hàng phải trùng với tên chủ tài khoản NgânLượng.vn "<strong>Phan Quang Khải</strong>", nếu thông tin tài khoản ngân hàng của bạn bị sai và lệnh chuyển khoản đã thực hiện, bạn phải chịu phí chuyển khoản ngân hàng theo quy định.</p>
		</div>
	</div>
</div>

</asp:Content>
