<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="Main">
			<div class="tab-acount">
				<div id="account_info">
	<div id="account_info_inner">
		 <div class="tran-tab-bg">
	 <table width="100%" cellspacing="0">
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
	  </table>
</div>			</div>
</div>
	
			</div>
					    		    			
<script type="text/javascript">
    var TRANSACTION_MODE_DIRECT = 1;
    var TRANSACTION_MODE_ESCROW = 2;
    var ACCOUNT_TYPE_PERSONAL = 1;
    var ACCOUNT_TYPE_MERCHANT = 2;
    var ACCOUNT_TYPE_MERCHANT_GUARANTEE = 7;
    var ACCOUNT_TYPE_PERSONAL_GUARANTEE = 6;
    var receiverAccountType = ACCOUNT_TYPE_PERSONAL;
    var oldReceiverInput = '';
    var data_store = 0;
    var oldAccountType = 1;
    var newAccountType = 1;
    //initiate validator on load
    j(document).ready(function () {
        j('input[name=amount]').focus();
        j('[name=amount]').bind('keyup', changeData);
        j('[name=transactionModeId]').change(function () {
            changeData();
        });
        j('[name=feePayer]').change(function () {
            changeData();
        });
        j('[name=email]').blur(function () {
            if (j('[name=email]').val() != oldReceiverInput) {
                oldReceiverInput = j('[name=email]').val();
                if (oldReceiverInput != '') {
                    j.getJSON('/services/accounts_public/getAccountSetting/' + oldReceiverInput, function (data) {
                        if (data[2] != 'logout') {
                            if (data[3] != 1109323) {
                                receiverAccountType = data[2];
                                newAccountType = data[2];
                                data_store = data;
                                if (data[2] == 7 || data[2] == 6) {
                                    j('#type_transfer_mode').hide();
                                    j('#type_fee_payer').hide();
                                    j('#TRANSACTION_MODE_DIRECT').attr('checked', 'checked');
                                    j('#FEE_PAYER_RECEIVER').attr('checked', 'checked');
                                    hide_escrow_timeout();
                                } else {
                                    j('#type_transfer_mode').show();
                                    j('#type_fee_payer').show();
                                    show_escrow_timeout();
                                }
                                changeData();
                                if (data[3] == 0) {
                                    j('#phoneNoTitle').show();
                                    j('#phoneNoValue').show();
                                } else {
                                    j('#phoneNoTitle').hide();
                                    j('#phoneNoValue').hide();
                                }
                            } else {
                                alert('Bạn không thể chuyển tiền cho chính mình');
                                j('[name=email]').val('');
                                j('[name=email]').focus();
                            }
                        } else {
                            alert('Phiên làm việc của bạn đã hết. Hãy đăng nhập lại để thực hiện giao dịch.');
                            window.location = '/accounts/login?return_url=L3RyYW5zYWN0aW9ucy90cmFuc2Zlcg==';
                        }
                    });
                } else {
                    //alert('Bạn chưa nhập địa chỉ email');
                    j('[name=email]').focus();
                }
            }
        });
        changeData();

        j('[name=description]').bind('focus', function () {
            if (j('[id=id_description]').val() == '(bạn có thể gửi một thông điệp tới người nhận tiền tại đây!)') {
                j("[id=id_description]").removeAttr("style");
                j('[id=id_description]').val('');
            }
        });

        j('[name=description]').bind('blur', function () {
            if (j('[id=id_description]').val() == '') {
                j("[id=id_description]").attr("style", "color: gray;");
                j('[id=id_description]').val('(bạn có thể gửi một thông điệp tới người nhận tiền tại đây!)');
            }
        });

        j('#form_transfer').bind('submit', function () {
            if (j('[id=id_description]').val() == '(bạn có thể gửi một thông điệp tới người nhận tiền tại đây!)') {
                j("[id=id_description]").removeAttr("style");
                j('[id=id_description]').val('');
            }
        });

        // validate contact form on keyup and submit
        j("#form_transfer").validate({
            //set the rules for the field names
            rules: {
                email: {
                    required: true,
                    email: true
                },
                to_phone_no: {
                    number: true
                },
                amount: {
                    required: true,
                    number: true
                },
                description: {
                    maxlength: 300
                }
            },
            //set messages to appear inline
            messages: {
                email: {
                    required: "Hãy nhập Email người nhận",
                    email: "Email người nhận phải nhập địa chỉ email hợp lệ"
                },
                to_phone_no: {
                    number: "Số điện thoại chỉ được phép nhập số !"
                },
                amount: {
                    required: "Hãy nhập Số tiền chuyển",
                    number: "Số tiền chuyển chỉ được phép nhập số."
                },
                description: {
                    maxlength: ""
                }
            }
        });
        if (j('input:[@name="transactionModeId"]:checked').val() == 1) {
            hide_escrow_timeout();
        } else {
            show_escrow_timeout();
        };

        j('.help_context_icon_inline[title]').each(function () {
            j(this).qtip({
                position: {
                    corner: {
                        tooltip: 'leftTop',
                        target: 'rightBottom'
                    }
                },
                show: { when: { event: 'mouseover' }, solo: true },
                hide: { when: { event: 'mouseout'} },
                style: {
                    padding: 10,
                    textAlign: 'left',
                    tip: false,
                    width: 210,
                    name: 'baokim'
                }
            });
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
        j('.tooltip_description[title]').each(function () {
            j(this).qtip({
                position: {
                    corner: {
                        tooltip: 'leftTop',
                        target: 'rightTop'
                    }
                },
                show: { when: { event: 'mouseover' }, solo: true },
                hide: { when: { event: 'mouseout' }, solo: true },
                style: {
                    padding: 10,
                    textAlign: 'left',
                    tip: false,
                    width: 230,
                    name: 'baokim'
                }
            });
        });
        j('input[name=email]').focus();
    });
    function show_escrow_timeout() {
        j('#tr_escrow_timeout').show();
    }
    function hide_escrow_timeout() {
        j('#tr_escrow_timeout').hide();
    }
    function changeData() {
        var transModeId = j("input[name='transactionModeId']:checked:enabled").val();
        var __fixFee = 0;
        var __percentFee = 0;
        var feePayer = parseInt(j("input:[name='feePayer']:checked:enabled").val());
        if (feePayer == 1) {
            receiverAccountType = oldAccountType;
        } else {
            receiverAccountType = newAccountType;
        }

        if (data_store != 0) {
            if (transModeId == TRANSACTION_MODE_ESCROW) {
                if (receiverAccountType == ACCOUNT_TYPE_MERCHANT || receiverAccountType == ACCOUNT_TYPE_MERCHANT_GUARANTEE) {
                    if (feePayer == 1) {
                        __fixFee = data_store['escrow']['from'].fromFixFee;
                        __percentFee = data_store['escrow']['from'].fromPercentFee;
                    } else {
                        __fixFee = data_store['escrow']['to'].toFixFee;
                        __percentFee = data_store['escrow']['to'].toPercentFee;
                    }
                } else { //Personal or Email not exist
                    if (feePayer == 1) {
                        __fixFee = data_store['escrow']['from'].fromFixFee;
                        __percentFee = data_store['escrow']['from'].fromPercentFee;
                    } else {
                        __fixFee = data_store['escrow']['to'].toFixFee;
                        __percentFee = data_store['escrow']['to'].toPercentFee;
                    }
                }
            } else {
                if (receiverAccountType == ACCOUNT_TYPE_MERCHANT || receiverAccountType == ACCOUNT_TYPE_MERCHANT_GUARANTEE) {
                    //var feePayer = parseInt(j("input:[name='feePayer']:checked:enabled").val());
                    if (feePayer == 1) {
                        __fixFee = data_store['direct']['from'].fromFixFee;
                        __percentFee = data_store['direct']['from'].fromPercentFee;
                    } else {
                        __fixFee = data_store['direct']['to'].toFixFee;
                        __percentFee = data_store['direct']['to'].toPercentFee;
                    }
                } else { //Personal or Email not exist
                    if (feePayer == 1) {
                        __fixFee = data_store['direct']['from'].fromFixFee;
                        __percentFee = data_store['direct']['from'].fromPercentFee;
                    } else {
                        __fixFee = data_store['direct']['to'].toFixFee;
                        __percentFee = data_store['direct']['to'].toPercentFee;
                    }
                }
            }
        }

        j('span#fixFeeAmount').text(__fixFee);
        j('span#percentFeeAmount').text(__percentFee);

        var amount = parseInt(j('input[name=amount]').val());
        var feePayer = parseInt(j("input:[name='feePayer']:checked:enabled").val());
        if (parseInt(amount) > 0) {
            var receive = 0;
            var transactionFee = Math.round(parseFloat(__fixFee) + amount * parseFloat(__percentFee) / 100);
            var realAmount = 0;
            if (feePayer == 1) {
                receive = amount;
                realAmount = amount + transactionFee;
            } else {
                receive = amount - transactionFee;
                realAmount = amount;
            }

            j('span#transactionFee').text(transactionFee);
            j('span#transactionFee').format();
            j('#realReceive').text(receive);
            j('#realReceive').format();
            j('#realAmount').text(realAmount);
            j('#realAmount').format();
        } else {
            j('span#transactionFee').text('0');
        }
    }
	</script>
<div class="color-tab"></div>	
<div class="form-container">
	<div class="text_header">
		<span class="title">CHUYỂN TIỀN</span>
		<div class="icon-help-header"><a href="https://www.baokim.vn/faq/category/chuyen-tien" target="popup" onclick="window.open(&quot;&quot;,&quot;popup&quot;,&quot;height=500,width=810,scrollbars=yes&quot;)">Xem trợ giúp</a></div>
	   
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
<!-- TRANSACTION STEPS HEADER -->
<input type="hidden" name="_form_action" value="transactions/transfer/index">
<input type="hidden" name="_form_token" value="af2d4416433131c3d6fea943937ae37865833ba6">
<div class="form-content clear">
		<div class="form-instruction">BaoKim.vn cung cấp 2 phương thức chuyển tiền trực tuyến. Bạn nên <a href="https://www.baokim.vn/faq/category/cac-loai-giao-dich">tìm hiểu</a> kỹ sự khác nhau</div>
		<table class="form-content-table">
	<tbody>	
		<tr>
			<th>Email người nhận<span style="color: red;">*</span>:</th>
			<td><input type="text" name="email" value size="42" class="qtip" title="bạn có thể gửi tới email bất kỳ của người nhận (nếu email này chưa đăng ký tài khoản trên baokim, chúng tôi sẽ gửi email hướng dẫn họ hoàn thành giao dịch )"></td>
		</tr>
		<tr>
			<th id="phoneNoTitle" style="display:none">Số điện thoại người nhận :</th>
			<td id="phoneNoValue" style="display:none">
				<input type="text" name="to_phone_no" value>				Chỉ hỗ trợ 3 mạng : Viettel , Vinaphone , Mobiphone .			</td>
			
		</tr>
		<tr>
			<th>Số tiền chuyển<span style="color: red;">*</span>:</th>
			<td>
				<script type="text/javascript">
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
				    }</script><input style="text-align:right" class="qtip" size="10" autocomplete="off" onkeypress="return numbersonly(this, event)" title="Số tiền chuyển" id="amount" type="text" value name="amount"><b>₫</b><div style="font-weight:bold; padding-right:3px;" id="detail_amount"></div>			</td>
		</tr>		
		<tr id="type_transfer_mode">
			<th>Hình thức chuyển tiền:</th>
			<td>
				<span>
					<input type="radio" name="transactionModeId" value="1" id="TRANSACTION_MODE_DIRECT" onclick="hide_escrow_timeout()"><label for="TRANSACTION_MODE_DIRECT" class="clear">Chuyển tiền trực tiếp</label>					<a class="tooltip_description help_context_popup" title="Số tiền cần chuyển sẽ ngay lập tức vào tài khoản người nhận khi họ online và xác nhận giao dịch. Họ có thể sử dụng ngay số tiền này. Baokim không chịu trách nhiệm giải quyết khi có rủi ro thanh toán hay khiếu nại phát sinh từ phía bạn và người nhận. Baokim không thu phí đối với hình thức chuyển tiền này." target="popup" href="https://www.baokim.vn//faq/category/cac-loai-giao-dich" onclick="window.open('','popup','height=425,width=450,scrollbars=yes')">(cần xem giải thích)</a>					<br>
					<input type="radio" name="transactionModeId" value="2" checked="checked" id="TRANSACTION_MODE_ESCROW" onclick="show_escrow_timeout()"><label for="TRANSACTION_MODE_ESCROW" class="clear">Chuyển tiền an toàn</label>					<a class="tooltip_description help_context_popup" title="Số tiền cần chuyển sẽ được đóng băng trong tài khoản người nhận khi họ online và xác nhận giao dịch. Thời gian đóng băng tính bằng số ngày tạm giữ mà bạn lựa chọn. Baokim cam kết hỗ trợ giải quyết khiếu nại và rủi ro thanh toán cho bạn trong số ngày tạm giữ , bạn có thể nhận lại số tiền đã chuyển trong trường hợp người nhận tiền không đảm bảo cam kết giao dịch. Baokim sẽ thu phí 1% giá trị giao dịch đối với hình thức này." target="popup" href="https://www.baokim.vn/faq/category/cac-loai-giao-dich" onclick="window.open('','popup','height=425,width=450,scrollbars=yes')">(cần xem giải thích)</a>				</span>
			</td>
		</tr>
		<tr id="tr_escrow_timeout">
			<th>Số ngày tạm giữ<span style="color: red;">*</span>:</th>
			<td><select name="escrowTimeout">
<option value="3">3 ngày</option>
<option value="5">5 ngày</option>
<option value="7">7 ngày</option>
</select>				<div class="help_context_icon_inline" title="Số ngày tạm giữ là khoảng thời gian số tiền được 				
																		đóng băng trong tài khoản người nhận , BảoKim chỉ				
																		hỗ trợ giải quyết tranh chấp , khiếu nại trong thời 				
																		gian này"></div>			</td>
		</tr>
		<tr>
			<th>Phí giao dịch :</th>
			<td>
					
				<span id="type_fee_payer">		
					<input type="radio" name="feePayer" value="2" checked="checked" id="FEE_PAYER_RECEIVER"><label for="FEE_PAYER_RECEIVER" class="clear">Người nhận chịu phí</label>					<br>
					<input type="radio" name="feePayer" value="1" id="FEE_PAYER_SENDER"><label for="FEE_PAYER_SENDER" class="clear">Người chuyển chịu phí</label>				</span>
				<br>
				<span id="transactionFee"></span><span class="explain_message">₫  (=<span id="fixFeeAmount">0<b>₫</b></span>₫ phí cố định + <span id="percentFeeAmount">1</span>% số tiền giao dịch)</span>
			</td>
		</tr>
		<tr>
			<th>Số tiền thực nhận:</th>
			<td>
				<span id="realReceive"></span><b>₫</b>			</td>
		</tr>
		<tr>
			<th>Số tiền thực chuyển:</th>
			<td>
				<span id="realAmount"></span><b>₫</b>			</td>
		</tr>
		<tr>
			<th>Thông điệp của người chuyển:</th>
			<td><script type="text/javascript">			        j(document).ready(function () { j("#description").charCounter(255); });</script><textarea id="id_description" rows="5" class="qtip" cols="50" style="color: gray;" title="Nội dung chuyển tiền gửi cho người nhận" " name="description">(bạn có thể gửi một thông điệp tới người nhận tiền tại đây!)</textarea>			</td>
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
			<th>Nhập mã an toàn<span style="color: red;">*</span>:</th>
			<td><input type="text" name="captcha" value size="10" autocomplete="off">		</tr>
		<tr>
			<th></th>
			<td>
				<input type="checkbox" name="transfer_agreement" value="1" checked="checked">Tôi đã hiểu rõ và cam kết thực hiện "<a href="https://www.baokim.vn/thoa_thuan_giao_ket" target="_blank">thỏa thuận giao kết giữa người dùng và BảoKim</a>" khi thực hiện giao dịch này.</div>
			</td>
		</tr>
		<tr>
			<th></th>
			<td><input type="submit" name="btn_next" value="Tiếp tục" class="button"></td>
		</tr>
	</tbody>	
</table>
	</div>
	<div class="form-bottom"></div>
	<div class="clear"></div>
	        </div>	
</asp:Content>
