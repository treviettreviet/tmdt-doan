<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Giao dịch chuyển tiền
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

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
				<<li class=" " style="display:block"><a href="/Public/LichSuGiaoDich"><span>Tổng hợp</span></a></li>
				<li class=" " style="display:block"><a href="/Public/LichSuGiaoDich"><span>Lịch sử giao dịch</span></a></li>				
				<li class=" " style="display:block"><a href="/Public/NapTien"><span>Nạp tiền</span></a></li>
                <li class="" style="display:block"><a href="/Public/RutTien"><span>Rút tiền</span></a></li>	
				<li class=" active" style="display:block"><a href="/Public/ChuyenTien"><span>Chuyển tiền</span></a></li>
                <li class=" " style="display:block"><a href="/Public/ChuyenTienCungMoigioi"><span>Chuyển tiền cùng môi giới</span></a></li>
                <li class=" " style="display:block"><a href="/Public/ChuyenTienKhacMoigioi"><span>Chuyển tiền khác môi giới</span></a></li>					
				<li class=" end" style="display:block"><a href="#"><span>Nhận tiền hoàn lại</span></a></li>
			</ul>
		</div>
	</div>
</div>		
<div class="box-content">	
	<div class="box-content-square" style="padding-top:0;">	
         
         <div class="<%=Html.Encode(ViewData["div"]) %>"><%=Html.Encode(ViewData["messege"]) %></div>
         
		<div id="complaints-left">		 
		<%--<div>
			<!-- thông báo lỗi--><div class="message-box"></div><!--hết thông báo lỗi-->
		</div>--%>	
        <div id="title">
        <span class="yel">Chuyển Tiền Trên Ecmoney10broker</span>
         </div>
		  <form method="post" action="/Public/TransferByBroker" enctype="multipart/form-data"><input type="hidden" name="form_module_id" value="451">
		  <table border="0" cellspacing="10" cellpadding="0" width="100%">	
          <p style="margin-left:80px;"><input type="radio" name="id" value checked="checked" onclick="" id="id_account_per"><label for="id_account_per"><span class="font-acc">Chuyển tiền cùng ngân hàng</span><span class="font-acc-command">(Chuyển tiền trong cũng một ngân hàng)</span></label></p>
                       		<p style="margin-left:80px;"><input type="radio" name="id" value  onclick="" id="id_account_merchant"><label for="id_account_merchant"><span class="font-acc">Chuyển tiền liên ngân hàng</span><span class="font-acc-command">(Chuyển tiền giữa hai ngân hàng khác nhau)</span></label></p>		  	
			  <tr>
				<th><span class="required">*</span>Số thẻ người gửi:</th>
				<td><input name="sendcardnum" id="sendcardnum" type="text" value="340426820759153" ></td>
			  </tr>
			  <tr>
				<th><span class="required">*</span>Số thẻ người nhận:</th>
				<td><input name="receivecardnum" id="receivecardnum" type="text" value="340429813757143" > <span class="field-check-function submit" title="notEmpty(_value_)">Chưa nhập số tiền muốn rút</span><span class="field-check-function blur submit" title="isAmount(_value_)">Số tiền muốn rút nhập không đúng yêu cầu</span>
				</td>
			  </tr>		
			  <tr>
				<th><span class="required">*</span>Số tiền muốn chuyển khoản</th>
				<td><input name="amount" id="amount" type="text" value="10000" maxlength="16" class="input-business input-amount field-check" autocomplete="off"><span class="span-grey"> (VND)</span> <span class="field-check-function submit" title="notEmpty(_value_)">Chưa nhập số tiền muốn rút</span><span class="field-check-function blur submit" title="isAmount(_value_)">Số tiền muốn rút nhập không đúng yêu cầu</span>
				</td>
			  </tr>		  			  
			 		  
			  <tr class="cashout-fee">
				<th>Phí rút tiền:</th>
				<td><strong>Theo phí chuyển khoản quy định của từng ngân hàng</strong></td>
			  </tr>              			 	  					  		  				  
			  <tr>
				<th>&nbsp;</th>
				<td><input name="btnSubmit" type="submit" value="Chuyển Tiền" class="button-content"></td>
			  </tr>
		</table>
		</form>
        <script language="javascript">setFormCheck();</script>	
		</div>
		
	</div>
</div>

</asp:Content>
