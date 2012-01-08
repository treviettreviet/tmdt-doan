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
 				<img src="../../Content/images/mail_ico.png" style="float:left;"><div style="margin-bottom:0px;float:left;padding-left:10px;">quangkhai1289@gmail.com</div>
 				</div></br>
 				<div style="margin-top:5px;width: 100%;">
 				<img src="../../Content/images/Box-Supp.png" style="float:left;"><div style="margin-bottom:0px;float:left;padding-left:10px;">841698726280</div>
 				</div>
 			</td>
		 </tr>
	  </table>--%>
</div>			</div>
</div>
	
			</div>
					    		    			<script language="javascript" type="text/javascript">
					    		    			    j(document).ready(function () {
					    		    			        j('input[name=amount]').focus();
					    		    			        j('[name=amount]').bind('keyup', changeData);
					    		    			        j('[name=receive]').bind('keyup', changeReceive);

					    		    			        j('#form_nap_tien').click(function () {
					    		    			            changeData();
					    		    			            changeReceive();
					    		    			        });


					    		    			        j('[name=amount]').change(function () {
					    		    			            changeData();
					    		    			        });
					    		    			        j('[name=receive]').change(function () {
					    		    			            changeReceive();
					    		    			        });

					    		    			        changeData();
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
					    		    			                    name: 'baokim'
					    		    			                }
					    		    			            });
					    		    			        });
					    		    			        function changeData() {
					    		    			            var bankFixFee = 0.000;
					    		    			            var bankPercentFee = 0.000;

					    		    			            var bkFixFee = 0.00;
					    		    			            var bkPercentFee = 0;
					    		    			            var amount = j('input[name=amount]').val();
					    		    			            if (amount > bkFixFee + bankFixFee) {
					    		    			                var bankFee = Math.round(amount * bankPercentFee / 100 + bankFixFee);
					    		    			                var bkFee = Math.round(amount * bkPercentFee / 100 + bkFixFee);
					    		    			                j('span#bankFee').text(bankFee);
					    		    			                j('span#bankFee').format();
					    		    			                j('span#bkFee').text(bkFee);
					    		    			                j('span#bkFee').format();
					    		    			                j('#receive').val(amount - bankFee - bkFee);
					    		    			                j("#detail_receive").text(amount - bankFee - bkFee);
					    		    			                j('#detail_receive').format();
					    		    			                j('#realReceive').text(amount - bankFee - bkFee);
					    		    			                j('#realReceive').format();
					    		    			                j('#realAmount').text(amount);
					    		    			                j('#realAmount').format();
					    		    			            } else {
					    		    			                j('#receive').val('0');
					    		    			                j('span#bkFee').text('0');
					    		    			                j('span#bankFee').text('0');
					    		    			                j('span#realAmount').text('0');
					    		    			                j('span#realReceive').text('0');
					    		    			            }
					    		    			        }

					    		    			        function changeReceive() {
					    		    			            var bankFixFee = 0.000;
					    		    			            var bankPercentFee = 0.000;

					    		    			            var bkFixFee = 0.00;
					    		    			            var bkPercentFee = 0;

					    		    			            var receive = parseInt(j('input[name=receive]').val());
					    		    			            var amount = Math.round((receive + bkFixFee + bankFixFee) / (1 - bankPercentFee / 100 - bkPercentFee / 100));
					    		    			            if (amount > (bankFixFee + bkFixFee)) {
					    		    			                var bankFee = Math.round(amount * bankPercentFee / 100 + bankFixFee);
					    		    			                var bkFee = Math.round(amount * bkPercentFee / 100 + bkFixFee);
					    		    			                j('span#bankFee').text(bankFee);
					    		    			                j('span#bankFee').format();
					    		    			                j('span#bkFee').text(bkFee);
					    		    			                j('span#bkFee').format();
					    		    			                j('#amount').val(amount);
					    		    			                j("#detail_amount").text(amount);
					    		    			                j('#detail_amount').format();
					    		    			                j('#realReceive').text(receive);
					    		    			                j('#realReceive').format();
					    		    			                j('#realAmount').text(amount);
					    		    			                j('#realAmount').format();
					    		    			            } else {
					    		    			                j('#receive').val('0');
					    		    			                j('span#bkFee').text('0');
					    		    			                j('span#bankFee').text('0');
					    		    			                j('span#realAmount').text('0');
					    		    			                j('span#realReceive').text('0');
					    		    			            }
					    		    			        }
					    		    			    });

					    		    			    function review() {
					    		    			        changeData();
					    		    			        changeReceive();
					    		    			    }
</script>
<div class="form-container" id="form_nap_tien">
	<div class="text_header">
		<span class="title">Nạp tiền</span>
		<span>Nạp tiền Online bằng thẻ ATM của Ngân hàng Công thương Việt Nam</span>
	<div class="icon-help-header">
		<a href="https://www.baokim.vn/faq/category/nap-voi-the-atm" target="popup" onclick="window.open(&quot;&quot;,&quot;popup&quot;,&quot;height=500,width=810,scrollbars=yes&quot;)">Xem trợ giúp</a>	</div>
</div>
<div class="form">
	 <%--<div class="form-tab">
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
	       Xác nhận của ngân hàng	        </div>
	    </li>
		    <li class>
	        <div class="number left">
	        03    
	        </div>
	        <div class="tab-label">
	       Hoàn thành	        </div>
	    </li>
		</ul>	
	<div class="clear"></div>	
</div>--%>
<div class="form-content">
<table class="form_tab_padding_top" cellspacing="10px">
	<tr style="height:0px;"><td></td></tr>
</table>
</div></div>
<form action="https://www.baokim.vn/transactions/charges/sml_bank_card/91" method="post" accept-charset="utf-8">
<input type="hidden" name="_form_action" value="/transactions/charges/sml_bank_card/91">
<input type="hidden" name="_form_token" value="83b2524f2bda199a1b9a8b2136bcfeb57af8d267">
<div class="form-content">
	<table class="form-content-table">
		<tbody>
			<tr>
				<td colspan="2" style="padding: 0px 20px 20px 20px;">
								</td>
			</tr>
			<tr><td></td></tr>
			<tr>
				<th>Số tiền muốn nạp<span style="color: red;"><strong> *</strong></span>:<br> <span class="explain_message">(chưa trừ phí)</span></th>
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
				        }</script><input style="text-align:right" class="qtip" size="10" autocomplete="off" onkeypress="return numbersonly(this, event)" title="Nhập vào số tiền muốn chuyển" id="amount" type="text" value name="amount"><b>₫</b><div style="font-weight:bold; padding-right:3px;" id="detail_amount"></div></td>
			</tr>
			<tr>
				<th>Số tiền muốn nhận<span style="color: red;"><strong> *</strong></span>:<br> <span class="explain_message">(sau khi trừ phí)</span></th>
				<td><script type="text/javascript">
				        j(document).ready(function () {
				            j("#receive").bind("keyup", function () {
				                initFormatNumber_receive();
				            });
				            initFormatNumber_receive();
				        });
				        function initFormatNumber_receive() {
				            j("#detail_receive").text(j("#receive").val());

				            if (j("#receive").val() != "") {
				                j("#detail_receive").format();
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
				        }</script><input style="text-align:right" class="qtip" size="10" autocomplete="off" onkeypress="return numbersonly(this, event)" title="Nhập vào số tiền thực nhận" id="receive" type="text" value name="receive"><b>₫</b><div style="font-weight:bold; padding-right:3px;" id="detail_receive"></div></td>
			</tr>
			<tr>
				<th></th>
				<td><span class="explain_message">(Số tiền nạp phải nằm trong khoản từ 30.000<b>₫</b> đến 100.000.000<b>₫</b>)</span></td>
			</tr>
			<tr>
				<th>Phí tiện ích:</th>
				<td>
					<span id="bankFee">
						0					</span>	
					 <b>₫</b>					<span class="explain_message">(=0<b>₫</b> phí cố định + 0% số tiền giao dịch)</span>
				</td>
			</tr>
						<tr>
				<th>Số tiền thực nhận trên Bao Kim<br><span class="explain_message">(sau khi trừ phí ngân hàng)</span>:</th>
				<td>
					<span id="realReceive"></span>
				</td>
			</tr>
			<tr>
				<th>Số tiền bạn cần thanh toán<br><span class="explain_message">(Đã bao gồm phí ngân hàng)</span>:</th>
				<td>
					<span id="realAmount"></span>
				</td>
			</tr>
			
			<tr>
				<th></th>
				<td><script type="text/javascript">
				        function new_captcha() {
				            var now = new Date();
				            document.images.captcha.src = "/application/captcha/visual-captcha.php?" + now.getTime() + "&id=";
				        }
		</script><img style="border: solid 1px lightgray;" id="captcha" name="captcha" src="../../Content/images/visual-c.jpg" height="48" alt="Visual CAPTCHA"><a href="javascript: new_captcha();" tabindex="100"><img src="../../Content/images/Refresh_.png"></img></a></td>
			</tr>
			<tr>
				<th>Nhập mã an toàn<span style="color: red;">*</span>:</th>
				<td><input type="text" name="captcha" value class="text qtip" size="10" autocomplete="off" title="Nhập mã an toàn giống như trong ảnh trên.<br/>Trong trường hợp không nhìn rõ chữ, bạn có thể thay đổi mã an toàn bằng cách nhấn vào nút <img src='/application/captcha/Refresh_48.png' style='vertical-align:top;height:24px' alt='refresh'/> bên phải"></td>
			</tr>
			<tr>
				<th></th>
				<td><input type="submit" name="submit" value="Nạp tiền" class="button" onmouseover="review()" onclick="review()"></td>
			</tr>
		</tbody>	
	</table>
</div>
	<div class="form-bottom"></div>
	<div class="clear"></div>

<input type="hidden" name="bankPaymentMethodId" value="91">
</form></div>	

</asp:Content>
