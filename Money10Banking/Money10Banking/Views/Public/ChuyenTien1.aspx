<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <div id="Main">
    
    <div class="<%=Html.Encode(ViewData["div"]) %>"><%=Html.Encode(ViewData["error"]) %></div>
  
     <%-- <script type="text/javascript">
					    		    			    //initiate validator on load
					    		    			    j(document).ready(function () {
					    		    			        // validate contact form on keyup and submit
					    		    			        j("#form").validate({
					    		    			            //set the rules for the field names
					    		    			            rules: {
					    		    			                email: {
					    		    			                    required: true,
					    		    			                    email: true
					    		    			                },
					    		    			               CMND: {
					    		    			                    required: true,
					    		    			                    number: true,
					    		    			                    minlength: 9
					    		    			                    
					    		    			                },
					    		    			                password: {
					    		    			                    required: true,
					    		    			                    minlength: 8,
					    		    			                    maxlength: 20
					    		    			                },

					    		    			                passwordConfirm: {
					    		    			                    required: true,
					    		    			                    minlength: 8,
					    		    			                    maxlength: 20
                                                                   
					    		    			                },
					    		    			                acceptLicense: {
					    		    			                    required: true
					    		    			                },
                                                                date:{
                                                                    required: true,
                                                                    min: 1,
                                                                    max: 31
                                                                }
					    		    			            },
					    		    			            //set messages to appear inline
					    		    			            messages: {
					    		    			                email: {
					    		    			                    required: "Hãy nhập Email",
					    		    			                    email: "Email phải nhập địa chỉ email hợp lệ"
					    		    			                },
					    		    			                CMND: {
					    		    			                    required: "Hãy nhập CMND hoac hộ chiếu",
					    		    			                    number: "Số CMND chỉ được phép nhập số.",
					    		    			                    minlength: "Số CMND phải có ít nhất 9 ký tự."
					    		    			                    
					    		    			                },
					    		    			                password: {
					    		    			                    required: "Hãy nhập Mật khẩu",
					    		    			                    minlength: "Mật khẩu phải có ít nhất 8 ký tự.",
					    		    			                    maxlength: "Mật khẩu có thể nhập tối đa 20 ký tự."
					    		    			                },
					    		    			                passwordConfirm: {
					    		    			                    required: "Hãy nhập Xác nhận mật khẩu",
					    		    			                    minlength: "Xác nhận mật khẩu phải có ít nhất 8 ký tự.",
					    		    			                    maxlength: "Xác nhận mật khẩu có thể nhập tối đa 20 ký tự."
					    		    			                },
					    		    			                acceptLicense: {
					    		    			                    required: "Bạn phải đồng ý với các điều khoản sử dụng hệ thống của chúng tôi"
					    		    			                },                                                                
					    		    			            }
					    		    			        });
					    		    			        j("#form_company").validate({
					    		    			            //set the rules for the field names
					    		    			            rules: {
					    		    			                email_company: {
					    		    			                    required: true,
					    		    			                    email: true
					    		    			                },
					    		    			                phoneNo_company: {
					    		    			                    required: true,
					    		    			                    number: true,
					    		    			                    minlength: 9,
					    		    			                    maxlength: 20
					    		    			                },
					    		    			                password_company: {
					    		    			                    required: true,
					    		    			                    minlength: 8,
					    		    			                    maxlength: 20
					    		    			                },
					    		    			                passwordConfirm_company: {
					    		    			                    required: true,
					    		    			                    minlength: 8,
					    		    			                    maxlength: 20
					    		    			                },
					    		    			                acceptLicense_company: {
					    		    			                    required: true
					    		    			                },
					    		    			                name: {
					    		    			                    required: true
					    		    			                },
					    		    			                companySocialId: {
					    		    			                    required: true
					    		    			                },
					    		    			                companyName: {
					    		    			                    required: true
					    		    			                },
					    		    			                siteUrl: {
					    		    			                    url: true
					    		    			                },
					    		    			                companyPhoneNo: {
					    		    			                    number: true
					    		    			                }
					    		    			            },
					    		    			            //set messages to appear inline
					    		    			            messages: {
					    		    			                email_company: {
					    		    			                    required: "Hãy nhập Email",
					    		    			                    email: "Email phải nhập địa chỉ email hợp lệ"
					    		    			                },
					    		    			                phoneNo_company: {
					    		    			                    required: "Hãy nhập Số điện thoại di động",
					    		    			                    number: "Số điện thoại di động chỉ được phép nhập số.",
					    		    			                    minlength: "Số điện thoại di động phải có ít nhất 9 ký tự.",
					    		    			                    maxlength: "Số điện thoại di động có thể nhập tối đa 20 ký tự."
					    		    			                },
					    		    			                password_company: {
					    		    			                    required: "Hãy nhập Mật khẩu",
					    		    			                    minlength: "Mật khẩu phải có ít nhất 8 ký tự.",
					    		    			                    maxlength: "Mật khẩu có thể nhập tối đa 20 ký tự."
					    		    			                },
					    		    			                passwordConfirm_company: {
					    		    			                    required: "Hãy nhập Xác nhận mật khẩu",
					    		    			                    minlength: "Xác nhận mật khẩu phải có ít nhất 8 ký tự.",
					    		    			                    maxlength: "Xác nhận mật khẩu có thể nhập tối đa 20 ký tự."
					    		    			                },
					    		    			                acceptLicense_company: {
					    		    			                    required: "Bạn phải đồng ý với các điều khoản sử dụng hệ thống của chúng tôi"
					    		    			                },
					    		    			                name: {
					    		    			                    required: 'Điền tên người đại diện'
					    		    			                },
					    		    			                companySocialId: {
					    		    			                    required: 'Điền mã số thuế /số đăng ký kinh doanh'
					    		    			                },
					    		    			                companyName: {
					    		    			                    required: 'Điền tên tổ chức Doanh Nghiệp'
					    		    			                },
					    		    			                siteUrl: {
					    		    			                    url: "Nhập URL hợp lệ"
					    		    			                },
					    		    			                companyPhoneNo: {
					    		    			                    number: 'Số điện thoại là số nguyên'
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
					    		    			                    width: 300,
					    		    			                    name: 'baokim'
					    		    			                }
					    		    			            });
					    		    			        });
					    		    			        j('input[name=email]').focus();
					    		    			        j('#form').submit(function () {
					    		    			            if (j('[name="type_register"]').val() == 1) {
					    		    			                j("#form").validate({
					    		    			                    //set the rules for the field names
					    		    			                    rules: {
					    		    			                        name: {
					    		    			                            required: true
					    		    			                        }
					    		    			                    },
					    		    			                    messages: {
					    		    			                        name: {
					    		    			                            required: "Bạn chưa nhập họ tên"
					    		    			                        }
					    		    			                    }
					    		    			                });
					    		    			            }
					    		    			        });
					    		    			    });
      </script>
      <script>
    /**
    * Kiểm tra họ tên , có ít nhất 2 từ , mỗi từ trên 2 ký tự
    */
    function check_personal_name() {
        var y = document.form_register_personal.name.value;
        //var y=w.value;
        var r = 0;
        a = y.replace(/\s/g, ' ');
        a = a.split(' ');
        var cnt = 0;
        for (z = 0; z < a.length; z++) {
            if (a[z].length > 0)
                r++;
            if (a[z].length > 0 && a[z].length < 2)
                cnt++;
        }
        //x.value=r;
        if (cnt >= 2 && r < 2) {
            document.getElementById("error_name_personal").innerHTML = "Bạn vui lòng viết họ tên thật !";
            return false;
        } else if (r < 2) {
            document.getElementById("error_name_personal").innerHTML = "Bạn vui lòng viết họ tên thật !";
            return false;
        } else if (cnt >= 2) {
            document.getElementById("error_name_personal").innerHTML = "Bạn vui lòng viết họ tên thật !";
            return false;
        }
    }

    /**
    * Kiểm tra họ tên , có ít nhất 2 từ , mỗi từ trên 2 ký tự
    */
    function check_company_name() {
        var y = document.form_register_company.name.value;
        //var y=w.value;
        var r = 0;
        a = y.replace(/\s/g, ' ');
        a = a.split(' ');
        var cnt = 0;
        for (z = 0; z < a.length; z++) {
            if (a[z].length > 0)
                r++;
            if (a[z].length > 0 && a[z].length < 2)
                cnt++;
        }
        //x.value=r;
        if (cnt >= 2 && r < 2) {
            document.getElementById("error_name_company").innerHTML = "Bạn vui lòng viết họ tên thật !";
            return false;
        } else if (r < 2) {
            document.getElementById("error_name_company").innerHTML = "Bạn vui lòng viết họ tên thật !";
            return false;
        } else if (cnt >= 2) {
            document.getElementById("error_name_company").innerHTML = "Bạn vui lòng viết họ tên thật !";
            return false;
        }
    }
</script>--%>
<div id="dhtmltooltip"></div>
<script type="text/javascript" src="../../Scripts/js/small000.js"></script>
<style>
#register_wrap .main_reg .instruction{font-size:0.95em;width:250px}
    .style1
    {
        width: 529px;
    }
</style>

<div class="form-container" style="padding-bottom:20px;">
    <div class="text_header">
        <div class="left">
            <h2 class="title">Chuyển Tiền</h2>
        </div>
        <img title="Đăng ký tài khoản cá nhân" atl="Đăng ký tài khoản" src="../../Content/images/icon_dan.gif">
    </div>
    <div class="clear"></div>
                    
                    <%--<div class="banner_login" onmouseover="ddrivetip('Tiếp tục chuyển qua bước 2 để khám phá bí mật','#3291c6','#fff','#004d83',300)" ; onmouseout="hideddrivetip()"></div>--%>
                       
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
	       Nhập mã <br>kich hoạt tài khoản	        </div>
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
</div>                      </div>
                       <div class="form-content clear">                 
	                     	<p style="margin-left:80px;"><input type="radio" name="account[]" value checked="checked" onclick="j('#TransferMoneySameBank').show();j('#TransferMoneyDiffBank').hide(); j('#type_register').val(1);" id="id_account_per"><label for="id_account_per"><span class="font-acc">Chuyển tiên cùng ngân hàng</span><span class="font-acc-command"></span></label></p>
                       		<p style="margin-left:80px;"><input type="radio" name="account[]" value  onclick="j('#TransferMoneySameBank').hide();j('#TransferMoneyDiffBank').show(); j('#type_register').val(2);" id="id_account_merchant"><label for="id_account_merchant"><span class="font-acc">Chuyển tiền khác liên ngânhàng</span><span class="font-acc-command"></span></label></p>


                            <form action="" onsubmit="return check_personal_name()" id="form" name="form_register_personal" accept-charset="utf-8" method="post">
                             <!-- Chuyển tiền cũng ngân hàng -->
                          <table class="form-content-table" id="TransferMoneySameBank">
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
			                    <td><input type="submit" name="btn_next" value="Thực Hiện" class="button"></td>
		                    </tr>
	                    </tbody>	
                    </table>                    
                             </form>

                            <form action="XuLyDangKyMoiGioi" onsubmit="return check_company_name()" id="form_company" name="form_register_company" accept-charset="utf-8" method="post">
                            <!-- Chuyển tiền liên ngân hàng -->
                             <table class="form-content-table" id="TransferMoneyDiffBank" style="display:none">
	                             <div id="hotrothanhtoan" style="margin: 10px;">
                        <img src="../../Content/images/hotrothb.png" width="655" height="128" border="0"
                            usemap="#map_thanhtoan">
                        <map name="map_thanhtoan" id="map_thanhtoan">
                            <area shape="rect" coords="6, 2, 57, 35" 
                                href="/Public/ChuyenTienLienNganHang">
                            <area shape="rect" coords="65, 1, 131, 34" 
                                href="http://www.mastercard.com/index.html">
                            <area shape="rect" coords="140, 1, 219, 37" 
                                href="http://www.vietcombank.com.vn/">
                            <area shape="rect" coords="227, 1, 305, 37" 
                                href="https://www.techcombank.com.vn/">
                            <area shape="rect" coords="310, 0, 378, 34" href="http://www.eab.com.vn/">
                            <area shape="rect" coords="385, 1, 486, 35" 
                                href="http://www.vietinbank.vn/web/home/vn/index.html">
                            <area shape="rect" coords="493, 1, 560, 36" 
                                href="http://www.vib.com.vn/default.aspx">
                            <area shape="rect" coords="569, 2, 663, 36" href="http://www.shb.com.vn/">
                            <area shape="rect" coords="204, 50, 289, 80" href="http://www.bidv.com.vn/">
                            <area shape="rect" coords="294, 52, 401, 80" href="http://agribank.com.vn/">
                            <area shape="rect" coords="9, 52, 59, 83" href="http://www.acb.com.vn/">
                            <area shape="rect" coords="64, 49, 197, 79" 
                                href="http://www.sacombank.com.vn/vn/Pages/default.aspx">
                            <area shape="rect" coords="402, 52, 464, 80" href="http://mbbank.com.vn/">
                            <area shape="rect" coords="471, 52, 546, 80" href="http://www.vpb.com.vn/">
                            <area shape="rect" coords="554, 50, 660, 81" href="http://www.seabank.com.vn/">
                            <area shape="rect" coords="3, 96, 78, 127" href="http://www.tpb.com.vn/vn/">
                            <area shape="rect" coords="80, 98, 172, 127" href="http://www.msb.com.vn/">
                            <area shape="rect" coords="176, 93, 278, 127" 
                                href="http://www.pgbank.com.vn/pages/pghome.aspx">
                            <area shape="rect" coords="282, 97, 372, 127" href="http://mb.softbank.jp/en/">
                            <area shape="rect" coords="378, 99, 517, 125" 
                                href="https://ebank.vtc.vn/media/news.1615.html">
                        </map>
                    </div>            
                            </table>
                        </form> 
                        </div>
                        <div class="form-bottom"></div>
                        <div class="clear"></div>
                    </div>                    
    <div>
        <center><img onmouseover="ddrivetip('Tiếp tục chuyển qua bước 2 để khám phá bí mật','#e7e7e7','#669933','#cccccc',300)" onmouseout="hideddrivetip()" src="../../Content/images/banner_r.jpg"/></center>
    </div>                    
 </div>
</asp:Content>
