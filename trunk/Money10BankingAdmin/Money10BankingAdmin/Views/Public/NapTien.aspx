<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NapTien
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <div>
        <div id="body-wrapper"> <!-- Wrapper for the radial gradient background -->
		
		<div id="sidebar"><div id="sidebar-wrapper"> <!-- Sidebar with logo and menu -->
			
			<h1 id="sidebar-title"><a href="#">Admin EcMoney10Banking</a></h1>
		  
			<!-- Logo (221px wide) -->
			<a href="#"><img id="logo" src="../../Content/images/logo.png" alt="Admin logo" /></a>
            <div></div>
		  
			<!-- Sidebar Profile links -->
			<div id="profile-links">
            <% Money10BankingAdmin.Models.Admin ad = (Money10BankingAdmin.Models.Admin)Session["User"]; %>
				Hello, <a href="#" title="Edit your profile"><%=ad.Name %></a>, 
                <br />
				<br />
				<a href="#" title="View the Site">Thông tin</a> | <a href="/Public/XuLyThoat" title="Sign Out">Thoát</a>
			</div>        
			
			<ul id="main-nav">  <!-- Accordion Menu -->
			
				
				<li> 
					<a href="/Public/QuanLyThe" class="nav-top-item"> <!-- Add the class "current" to current menu item -->
                    QUẢN LÝ THẺ
					</a>
					<%--<ul>
						<li><a href="#">Thông tin Khách Hàng</a></li>
						<li><a class="current" href="#">Thêm Khách Hàng</a></li> <!-- Add class "current" to sub menu items also -->
						<li><a href="#">Xóa Khách Hàng</a></li>
						<li><a href="#">Cập Nhật Thông Tin Khách Hàng</a></li>
					</ul>--%>
				</li>
				
				<li>
					<a href="#" class="nav-top-item current">
						QUẢN LÝ GIAO DỊCH
					</a>
					<ul>
						<li><a href="/Mod/NapTien">Nạp Tiền</a></li>
						<%--<li><a class="current" href="#">Chuyển Tiền</a></li> --%><!-- Add class "current" to sub menu items also -->
						<%--<li><a href="#">Xóa Môi Giới</a></li>
						<li><a href="#">Cập Nhật Thông Tin Môi Giới</a></li>--%>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						QUẢN LÝ USER
					</a>
					<ul>
						<li><a href="/Admin/TaoUser">Tạo User</a></li>
						<li><a href="#">Phân Quyền</a></li>
						<li><a href="/Admin/DanhSachUser">Danh Sách User</a></li>
						<%--<li><a href="#">Cập Nhật Thông Tin Thẻ</a></li>--%>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						TIỆN ÍCH
					</a>
					<ul>
						<li><a href="#">Banner</a></li>
						<li><a href="#">Webpages</a></li>
						<li><a href="#">Images</a></li>
					</ul>
				</li>			
			</ul> <!-- End #main-nav -->
			
			<div id="messages" style="display: none"> <!-- Messages are shown when a link with these attributes are clicked: href="#messages" rel="modal"  -->
				
				<h3>3 Messages</h3>
			 
				<p>
					<strong>17th May 2009</strong> by Admin<br />
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue.
					<small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
				</p>
			 
				<p>
					<strong>2nd May 2009</strong> by Jane Doe<br />
					Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.
					<small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
				</p>
			 
				<p>
					<strong>25th April 2009</strong> by Admin<br />
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue.
					<small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
				</p>
				
				<form action="#" method="post">
					
					<h4>New Message</h4>
					
					<fieldset>
						<textarea class="textarea" name="textfield" cols="79" rows="5"></textarea>
					</fieldset>
					
					<fieldset>
					
						<select name="dropdown" class="small-input">
							<option value="option1">Send to...</option>
							<option value="option2">Everyone</option>
							<option value="option3">Admin</option>
							<option value="option4">Jane Doe</option>
						</select>
						
						<input class="button" type="submit" value="Send" />
						
					</fieldset>
					
				</form>
				
			</div> <!-- End #messages -->
			
		</div></div> <!-- End #sidebar -->

    <div id="Main">

        
        <div id="form_nap_tien" class="form-container">
            <%--<div class="text_header">
                <span class="title">Nạp tiền</span> <span>Nạp tiền Online vào thẻ ATM của Ngân 
                hàng</span></div>--%>
            <div class="form">
                
                <div class="form-content">
                    <div class="<%=Html.Encode(ViewData["div"]) %>">
            <%=Html.Encode(ViewData["error"]) %></div>
                </div>
            </div>
            <form accept-charset="utf-8" action="/Mod/XuLyNapTien" method="post">
            <div class="form-content">
                <table class="form-content-table">                  
                    <tr>
                        <th>
                            Số tiền nạp<span style="color: red;"><strong> *</strong></span>:<br />
                            <span class="explain_message">(chưa trừ phí)</span>
                        </th>
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
                                    }</script>
                                <input id="amount" autocomplete="off" class="qtip" name="amount" 
                                onkeypress="return numbersonly(this, event)" size="10" 
                                style="text-align: right" title="Nhập vào số tiền muốn chuyển" type="text" 
                                value="" /><b>₫</b><%--<div id="detail_amount" 
                                style="font-weight: bold; padding-right: 3px;">
                            </div>--%>
                        </td>
                    </tr>
<%--                    <tr>
                        <th>
                            Số tiền nhận<span style="color: red;"><strong> *</strong></span>:<br />
                            <span class="explain_message">(sau khi trừ phí)</span>
                        </th>
                        <td>
                                <script type="text/javascript">
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
                                    }</script>
                                <input id="receive" autocomplete="off" class="qtip" name="receive" 
                                onkeypress="return numbersonly(this, event)" size="10" 
                                style="text-align: right" title="Nhập vào số tiền thực nhận" type="text" 
                                value="" /><b>₫</b><div id="detail_receive" 
                                style="font-weight: bold; padding-right: 3px;">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                        </th>
                        <td>
                            <span class="explain_message">(Số tiền nạp phải nằm trong khoản từ 30.000<b>₫</b> 
                            đến 100.000.000<b>₫</b>)</span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Phí tiện ích:
                        </th>
                        <td>
                            <span id="bankFee">0 </span><b>₫</b> <span class="explain_message">(=0<b>₫</b> 
                            phí cố định + 0% số tiền giao dịch)</span>
                        </td>
                    </tr>--%>
                    <tr>
                        <th>
                            Số tài khoản<span style="color: red;"><strong> *<br />
                            </strong></span>
                        </th>
                        <td>
                            <input autocomplete="off" class="text qtip" name="SoTaiKhoan" 
                                onkeypress="return numbersonly(this, event)" title="- Số Tài Khoản ( 16 số)" 
                                type="text" value='' />
                        </td>
                    </tr>
                        <%--<tr>
				<th></th>
				<td><script type="text/javascript">
				        function new_captcha() {
				            var now = new Date();
				            document.images.captcha.src = "/application/captcha/visual-captcha.php?" + now.getTime() + "&id=";
				        }
		</script><img style="border: solid 1px lightgray;" id="captcha" name="captcha" src="../../Content/images/visual-c.jpg" height="48" alt="Visual CAPTCHA"><a href="javascript: new_captcha();" tabindex="100"><img src="../../Content/images/Refresh_.png"></img></a></td>
			</tr>--%>
                        <%--<tr>
				<th>Nhập mã an toàn<span style="color: red;">*</span>:</th>
				<td><input type="text" name="captcha" value class="text qtip" size="10" autocomplete="off" title="Nhập mã an toàn giống như trong ảnh trên.<br/>Trong trường hợp không nhìn rõ chữ, bạn có thể thay đổi mã an toàn bằng cách nhấn vào nút <img src='/application/captcha/Refresh_48.png' style='vertical-align:top;height:24px' alt='refresh'/> bên phải"></td>
			</tr>--%>
                        <tr>
                            <th>
                            </th>
                            <td>
                                <input class="button" name="submit" type="submit" value="Nạp tiền" />
                            </td>
                    </tr>
                </table>
            </div>
            <div class="form-bottom">
            </div>
            <div class="clear">
            </div>
            <input name="bankPaymentMethodId" type="hidden" value="91" />
            </form>
        </div>
    </div>

    <h2>&nbsp;</h2>

</asp:Content>
