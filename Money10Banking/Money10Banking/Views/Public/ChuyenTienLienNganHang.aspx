<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	ChuyenTienLienNganHang
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   <div id="Main">
    
    <div class="<%=Html.Encode(ViewData["div"]) %>"><%=Html.Encode(ViewData["error"]) %></div>    
<div id="dhtmltooltip"></div>
<script type="text/javascript" src="../../Scripts/js/small000.js"></script>
<style>
#register_wrap .main_reg .instruction{font-size:0.95em;width:250px}
    </style>

<div class="form-container" style="padding-bottom:20px;">
    <div class="text_header">
        <div class="left">
            <h2 class="title">Chuyển Tiền Liên Ngân Hàng</h2>
        </div>
        <img title="Chuyển tiền liên ngân hàng" atl="" src="../../Content/images/icon_dan.gif">
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
                            <form action="" onsubmit="return check_personal_name()" id="form" name="form_register_personal" accept-charset="utf-8" method="post">
                             <!-- Chuyển tiền cũng ngân hàng -->
                          <table class="form-content-table" id="TransferMoneyDiffBank">
	                    <tbody>	
		                    <tr>
			                    <th>Số thẻ người gửi <span style="color: red;">*</span>:</th>
			                    <td><input type="text" name="email" value size="42" class="qtip" title="Nhập số thẻ người gửi"></td>
		                    </tr>
		                      <tr>
			                    <th>Số thẻ người nhận<span style="color: red;">*</span>:</th>
			                    <td><input type="text" name="email" value size="42" class="qtip" title="Nhập số thẻ người nhận"></td>
		                    </tr>                                                                                          
		                    <tr>
			                    <th>Số tiền muốn chuyển<span style="color: red;">*</span>:</th>
			                    <td><input type="text" name="email" value size="42" class="qtip" title="Số tiền muốn chuyển"></td>
		                    </tr>    
                              <tr>
			                    <th>Số bảo mật<span style="color: red;">*</span>:</th>
			                    <td><input type="text" name="email" value size="42" class="qtip" title="Số tiền muốn chuyển"></td>
		                    </tr>                                                                                                                                                                                                    <tr>
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
			                    <th>Thông điệp của người chuyển:</th>
			                    <td><script type="text/javascript">	 j(document).ready(function () { j("#description").charCounter(255); });</script><textarea id="id_description" rows="5" class="qtip" cols="50" style="color: gray;" title="Nội dung chuyển tiền gửi cho người nhận" " name="description">(bạn có thể gửi một thông điệp tới người nhận tiền tại đây!)</textarea>			</td>
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
			                    <td><input type="submit" name="btn_next" value="Thực hiện" class="button"></td>
		                    </tr>
	                    </tbody>	
                    </table>                    
                             </form>

                            <form action="XuLyDangKyMoiGioi" onsubmit="return check_company_name()" id="form_company" name="form_register_company" accept-charset="utf-8" method="post">
                            <!-- Chuyển tiền liên ngân hàng -->                            
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
