<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NapTien
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="Main">
        <div class='<%=Html.Encode(ViewData["div"]) %>'>
            <%=Html.Encode(ViewData["error"]) %>
        </div>

        
        <div id="form_nap_tien" class="form-container">
            <%--<div class="text_header">
                <span class="title">Nạp tiền</span> <span>Nạp tiền Online vào thẻ ATM của Ngân 
                hàng</span></div>--%>
            <div class="form">
                
                <div class="form-content">
                    
                </div>
            </div>
            <form accept-charset="utf-8" action="../../Public/XuLyNapTien" method="post">
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
                    <tr>
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
                    </tr>
                    <tr>
                        <th>
                            Số tài khoản<span style="color: red;"><strong> *<br />
                            </strong></span>
                        </th>
                        <td>
                            <input autocomplete="off" class="text qtip" name="SoTaiKhoan" 
                                onkeypress="return numbersonly(this, event)" title="- Số Tài Khoản ( 16 số)" 
                                type="text" value='<% =ViewData["cardno"] %>' />
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
