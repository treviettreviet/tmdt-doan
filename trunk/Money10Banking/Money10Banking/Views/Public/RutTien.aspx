<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="Main">
			<div class="tab-acount">
				<div id="account_info">
	<div id="account_info_inner">
		 <div class="tran-tab-bg">
	 <%--<table width="100%" cellspacing="0">
		<tr>
		   <td width="25%" class="tran-first"><div class="font1">Số dư tài khoản </div>
			 <div class="font2">0</div>
			 <div>
			 <a target="_blank" style="font-size: 12px;margin-left:-5px;color:#FFF;text-decoration:underline;" href="https://www.baokim.vn/transactions/topup">Bắn tiền ngay vào ĐT di động</a></div>
			 </td>
		   <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top:15px;">
		   <div class="font1">Số dư đóng băng</div><div class="font2">0</div></td>
		   <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top:15px;"><div class="font1">Số tiền thưởng</div><div class="font2"> 0</div></td>
		   <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top:15px;">
		   		Mã TK : 90D7E017B4DBC1		   		<div style="margin-top:5px;width: 100%;">
 				<img src="R%FAt%20tiền%20mặt%20tại%20quầy%20giao%20dịch%20_%20Cổng%20thanh%20to%E1n%20Bảo%20Kim_files/mail_ico.png" style="float:left;"><div style="margin-bottom:0px;float:left;padding-left:10px;">quangkhai1289@gmail.com</div>
 				</div></br>
 				<div style="margin-top:5px;width: 100%;">
 				<img src="R%FAt%20tiền%20mặt%20tại%20quầy%20giao%20dịch%20_%20Cổng%20thanh%20to%E1n%20Bảo%20Kim_files/Box-Supp.png" style="float:left;"><div style="margin-bottom:0px;float:left;padding-left:10px;">841698726280</div>
 				</div>
 			</td>
		 </tr>
	  </table>--%>
</div>			</div>
</div>
	
			</div>
					    		    			<script language="javascript" type="text/javascript">

					    		    			    var f_fix_fee = 0.00;
					    		    			    var f_percent_fee = 0;

					    		    			    j(document).ready(function () {
					    		    			        j('[name=amount]').bind('keyup', changeData);
					    		    			        // validate contact form on keyup and submit
					    		    			        j("#form").validate({
					    		    			            //set the rules for the field names
					    		    			            rules: {
					    		    			                amount: {
					    		    			                    required: true,
					    		    			                    number: true,
					    		    			                    min: 10000.00,
					    		    			                    max: 100000000.00
					    		    			                }
					    		    			            },
					    		    			            //set messages to appear inline
					    		    			            messages: {
					    		    			                amount: {
					    		    			                    required: "Hãy nhập Số tiền muốn rút",
					    		    			                    number: "Số tiền muốn rút chỉ được phép nhập số.",
					    		    			                    min: "Số tiền muốn rút phải lớn hơn hoặc bằng 10.000.",
					    		    			                    max: "Số tiền muốn rút phải nhỏ hơn hoặc bằng 100.000.000."
					    		    			                }
					    		    			            }
					    		    			        });
					    		    			        j('.qtip[title]').each(function () {
					    		    			            j(this).qtip({
					    		    			                position: {
					    		    			                    corner: {
					    		    			                        tooltip: 'leftTop',
					    		    			                        target: 'rightTop'
					    		    			                    }
					    		    			                },
					    		    			                show: { when: { event: 'focus' }, solo: true },
					    		    			                hide: false,
					    		    			                style: {
					    		    			                    padding: 10,
					    		    			                    textAlign: 'left',
					    		    			                    tip: true,
					    		    			                    width: 230,
					    		    			                    name: 'baokim'
					    		    			                }
					    		    			            });
					    		    			        });


					    		    			        function changeData() {
					    		    			            var amount = j('input[name=amount]').val();
					    		    			            if (amount > f_fix_fee) {
					    		    			                var transactionFee = Math.round(amount * f_percent_fee / 100 + f_fix_fee);
					    		    			                var receiveAmount = amount - transactionFee;
					    		    			                j('span#transaction_fee').text(transactionFee);
					    		    			                j('span#transaction_fee').format();
					    		    			                j('span#receive_amount').text(receiveAmount);
					    		    			                j('span#receive_amount').format();
					    		    			            } else {
					    		    			                j('span#transaction_fee').text('0');
					    		    			                j('span#receive_amount').text('0');
					    		    			            }
					    		    			        }
					    		    			    });
</script>
<style type="text/css">
.error {
	color: red;
}
</style>
<div class="form-container">
	<div class="text_header">
		<span class="title">Rút tiền mặt tại quầy</span>
		<div class="icon-help-header"><a href="https://www.baokim.vn/faq/category/rut-tien-tai-quay" target="popup" onclick="window.open(&quot;&quot;,&quot;popup&quot;,&quot;height=500,width=810,scrollbars=yes&quot;)">Xem trợ giúp</a></div>
	</div>
	
	<div class="form">
        <div class="form-tab">
	<ul>
		    <li class="selected">
	        <div class="number left">
	        01    
	        </div>
	        <div class="tab-label">
	       Nhập thông tin	        </div>
	    </li>
		    <li class>
	        <div class="number left">
	        02    
	        </div>
	        <div class="tab-label">
	       Xác minh giao dịch	        </div>
	    </li>
		    <li class>
	        <div class="number left">
	        03    
	        </div>
	        <div class="tab-label">
	       Hoàn thành<br>Chờ xử lý	        </div>
	    </li>
		</ul>	
	<div class="clear"></div>	
</div>
<div class="form-content">
<table class="form_tab_padding_top" cellspacing="10px">
	<tr style="height:0px;"><td></td></tr>
</table>
</div>    </div>	
<form action="https://www.baokim.vn/transactions/withdraw/withdraw_by_cash" id="form" accept-charset="utf-8" method="post">
<input type="hidden" name="_form_action" value="/transactions/withdraw/withdraw_by_cash">
<input type="hidden" name="_form_token" value="8f84f9b41b7d322a243e3a4cf056494ba03c37cf">

<!-- WITHDRAW STEPS HEADER -->
<div class="form-content">
			<div class="form-instruction">
				Lưu ý: Bạn vui lòng nhập số tiền muốn rút, xác minh các thông tin cần thiết để hoàn thành giao dịch trước khi đến nhận tiền mặt tại trụ sở của Bảo Kim.
			</div>
			<table class="form-content-table">
	<tbody>
		<tr>
			<th><label>Số tiền muốn rút<span class="mandatory">*</span>:</label></th>
			<td><script type="text/javascript">
			        j(document).ready(function () {
			            j("#amount").bind("keyup", function () {
			                initFormatNumber_amount();
			            });
			            initFormatNumber_amount();
			        });
			        function initFormatNumber_amount() {
			            j("#detail_amount").text(j("#amount").val());

			            if (j("#amount").val() != "") {
			                j("#detail_amount").format();
			            } 
			        } function numbersonly(myfield, e, dec) {
			            var key;
			            var keychar;

			            if (window.event)
			                key = window.event.keyCode;
			            else if (e)
			                key = e.which;
			            else
			                return true;
			            keychar = String.fromCharCode(key);

			            // control keys
			            if ((key == null) || (key == 0) || (key == 8) ||
								    (key == 9) || (key == 13) || (key == 27))
			                return true;

			            // numbers
			            else if ((("0123456789").indexOf(keychar) > -1))
			                return true;

			            // decimal point jump
			            else if (dec && (keychar == ".")) {
			                myfield.form.elements[dec].focus();
			                return false;
			            }
			            else
			                return false;
			        }</script><input style="text-align:right" size="10" autocomplete="off" onkeypress="return numbersonly(this, event)" class="qtip" title="Số tiền cần rút nằm trong khoảng từ 10.000 <b>₫</b> đến 100.000.000 <b>₫</b>" id="amount" type="text" value name="amount"><b>₫</b><div style="font-weight:bold; padding-right:3px;" id="detail_amount"></div></td>
		</tr>
		
		<!-- Hien thi phi giao dich neu co -->
				<tr>
			<th>Rút tại:</th>
			<td><select name="branch">
<option value="Trụ sở Hà Nội">Trụ sở Hà Nội</option>
<option value="VP.TP Hồ Chí Minh">VP.TP Hồ Chí Minh</option>
</select></td>
		</tr>
		<tr>
			<th>Ghi chú:</th>
			<td><script type="text/javascript">			        j(document).ready(function () { j("#description").charCounter(255); });</script><textarea rows="4" cols="60" class="qtip" title="Nội dung rút tiền" " id="description" name="description"></textarea></td>
		</tr>
		<tr>
			<th></th>
			<td>
				<script type="text/javascript">
				    function new_captcha() {
				        var now = new Date();
				        document.images.captcha.src = "/application/captcha/visual-captcha.php?" + now.getTime() + "&id=";
				    }
		</script><img style="border: solid 1px lightgray;" id="captcha" name="captcha" src="../../Content/images/visual-c.jpg" height="48" alt="Visual CAPTCHA"><a href="javascript: new_captcha();" tabindex="100"><img src="../../Content/images/Refresh_.png"></img></a>			</td>
		</tr>
		<tr>
			<th>Nhập mã an toàn<span style="color: red;">*</span></th>
			<td><input type="text" name="captcha" value size="10" autocomplete="off">		</tr>
		<tr>
			<th></th>
			<td><input type="submit" name="submit" value="Tiếp tục" class="button"></td>
		</tr>
	</tbody>	
	</table>
			<div class="form-instruction">
					
			</div>
		</div>
		<div class="form-bottom"></div>
		<div class="clear"></div>
	</form></div>

</asp:Content>
