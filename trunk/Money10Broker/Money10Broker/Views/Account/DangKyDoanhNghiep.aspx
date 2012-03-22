<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" >
    <script type="text/javascript">
    var emailfilter = /^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
    function isEmail(e) {
        var returnval = emailfilter.test(e.value)
        return returnval
    }
    function isNumber(e) {
        var unicode = e.keyCode;
        if (unicode != 8) {
            if (unicode < 48 || unicode > 57) {
                return false;
            }
        }
    }
    function checkForm() {
        // Email
        if (document.form1.email.value == "") {
            alert("Bạn phải nhập vào email");
            document.form1.email.focus();
            return false;
        }
        if (isEmail(document.form1.email) == false) {
            alert("Email không đúng định dạng");
            document.form1.email.focus();
            return false;
        }
        if (document.form1.confirm_email.value != document.form1.email.value) {
            alert("Email nhập lại không đúng");
            document.form1.confirm_email.focus();
            return false;
        }
        //Mật khẩu đăng nhập

        if (document.form1.password.value == "") {
            alert("Bạn phải nhập vào mật khẩu đăng nhập");
            return false;
        }
        //        if (document.form1.password.length() < 6) {
        //            alert("Mật khẩu quá ngắn");
        //            document.form1.password.focus();
        //            return false;
        //        }
        if (document.form1.confirm_password.value != document.form1.password.value) {
            alert("Mật khẩu đăng nhập nhập lại không đúng");
            document.form1.confirm_password.focus();
            return false;
        }
        //Mật khẩu thanh toán
        if (document.form1.password_payment.value == "") {
            alert("Bạn phải nhập vào mật khẩu thanh toán");
            return false;
        }
        if (document.form1.confirm_password_payment.value != document.form1.password_payment.value) {
            alert("Mật khẩu thanh toán nhập lại không đúng");
            document.form1.confirm_password_payment.focus();
            return false;
        }
        //CMND
        if (document.form1.social_id.value == "") {
            alert("Bạn phải nhập số giấy ĐKKD");
            return false;
        }
        //Họ tên
        if (document.form1.fullname.value == "") {
            alert("Bạn phải nhập tên tổ chức");
            return false;
        }        
    }
</script>
    <div id="content">
        <div id="register">
            <div id="title">
                <span class="yel">Đăng ký mở ví điện tử doanh nghiệp</span>&nbsp;&nbsp;[ <a href="/Account/DangKyCaNhan">
                    Chuyển sang đăng ký mở ví điện tử cá nhân</a> ]</div>
        </div>
        <div class="box-content">

            <form action="/Account/XuLyDangKyDoanhNghiep" name="form1" onsubmit="return checkForm();" method="post" enctype="multipart/form-data">
            <div class="box-content-square" style="padding-top: 0;">
                <div id="step-flow">
                    <ul id="step-three">
                        <li class="active"><strong></strong>&nbsp;&nbsp;Thông tin đăng ký</li>                        
                    </ul>
                </div>
                <!-- thông báo lỗi-->
                <div class="message-box">
                </div>
                <!--hết thông báo lỗi-->
                
                <div class="frame_focus">
                    <div class="table-box">
                        <table width="880" border="0" cellspacing="5" cellpadding="0">
                        <tr><td><h4>
                    THÔNG TIN ĐĂNG NHẬP TÀI KHOẢN</h4></td></tr>
                            <tr>
                                <td width="300px;" align="right">
                                    <span class="required" style="font-size:12px">*</span>Địa chỉ Email:
                                </td>
                                <td>
                                    <input name="email" id="email" type="text" value class="input-business field-check"
                                        maxlength="255">
                                    <div class="field-notification field-alert">
                                            ECMoney10Broker.tk sử dụng Email làm tên đăng nhập và định danh trong giao dịch, xin
                                            vui lòng nhập chính xác một địa chỉ email bạn thường sử dụng (không quá 255 ký tự)</div>
                                <tr>
                                <td align="right">
                                    <span class="required">*</span>Nhập lại địa chỉ Email:
                                </td>
                                <td>
                                    <input name="confirm_email" type="text" value class="input-business field-check"
                                        maxlength="255"><div class="field-notification field-alert">
                                            Nhập lại địa chỉ Email (không quá 255 ký tự)</div>
                                </td>
                            </tr>
                            <tr>
                                <td width="300" align="right">
                                    <span class="required">*</span>Mật khẩu đăng nhập:
                                </td>
                                <td>
                                    <input id="password" name="password" type="password" autocomplete="off"
                                        value=""  maxlength="30"><div class="field-notification field-alert">
                                            Từ 6-20 ký tự, không bao gồm khoảng trống</div>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <span class="required">*</span>Nhập lại mật khẩu đăng nhập:
                                </td>
                                <td>
                                    <input  id="confirm_password" name="confirm_password" autocomplete="off"
                                        type="password" value=""  maxlength="30">
                                        <div class="field-notification field-alert">
                                            Từ 6-20 ký tự, không bao gồm khoảng trống</div>
                                        </td>
                            </tr>
                            <tr>
                            <td>
                            <h4>MẬT KHẨU THANH TOÁN</h4>
                            </tr>
                             <tr>
                                <td width="300" align="right">
                                    &nbsp;<span class="required">*</span><span class="otp-type" id="otp_payment_password0">Nhập mật khẩu thanh toán:</span></td>
                                <td>
                                    <input name="password_payment" type="password" value="" class="input-business field-check">
                                    <div class="field-notification field-alert">
                                            Từ 6-20 ký tự, không bao gồm khoảng trống</div>
                                        </td>
                                    <br>
                                </td>
                            </tr>
                            
                            
                            <tr>
                                <td width="300" align="right">
                                    &nbsp;<span class="required">*</span><span class="otp-type" id="Span3">Nhập lại mật khẩu thanh toán:</span></td>
                                <td>
                                    <input name="confirm_password_payment" type="password" value="" class="input-business field-check">
                                    <div class="field-notification field-alert">Từ 6-20 ký tự, không bao gồm khoảng 
                                        trống</div>
                                </td>
                            </tr>
                            <tr>
                            <td><h4>THÔNG TIN DOANH NGHIỆP</h4></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <span class="required">*</span>Giấy chứng thực:
                                </td>
                                <td>
                                    <select name="verify_type" id="verify_type" style="width: " class="list-business field-check">
                                        <option value="3" selected>Số giấy ĐKKD</option>
                                        <option value="4">Số giấy ĐK MST</option>
                                        <option value="5">Số giấy phép đầu tư</option>
                                        <option value="6">Số quyết định thành lập</option>
                                    </select><span class="field-check-function submit" title="isSelect(_value_,0)">Bạn chưa
                                        chọn loại giấy chứng thực!</span>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <span class="required">*</span><span class="label">Số giấy ĐKKD:</span>
                                </td>
                                <td>
                                    <input name="social_id" type="text" value class="input-business field-check">
                                </td>
                            </tr>
                            <tr>
                                <td width="300" align="right">
                                    <span class="required">*</span>Tên tổ chức, doanh nghiệp:
                                </td>
                                <td>
                                    <input name="fullname" type="text" value class="input-business field-check">
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    Địa chỉ trụ sở chính:
                                </td>
                                <td>
                                    <input name="address" type="text" value class="input-business field-check">
                                </td>
                            </tr>                            
                            <tr>
                                <td align="right">
                                    Điện thoại cố định:
                                </td>
                                <td>
                                    <input name="phone" type="text" value onkeydown="return isNumber(event)" class="input-business field-check">                                    
                                </td>
                            </tr>
                            <tr>
                            <td></td>
                            <td><input name="cmdRegister" id="cmdRegister" type="submit" value="Đăng ký »" class="register-button" /></td>
                            </tr>
                        </table>
                    </div>
                </div>            
            </div>
            </form>
        </div>
    </div>
</asp:Content>
