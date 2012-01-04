<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DangKy_DoanhNghiep.aspx.cs" Inherits="MoiGioi_Money10.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div id="content">
	<div id="content">
	<div id="register">
		<div id="title"><span class="yel">Đăng ký mở ví điện tử doanh nghiệp</span>&nbsp;&nbsp;[ <a href="DangKy_CaNhan.aspx">Chuyển sang đăng ký mở ví điện tử cá nhân</a> ]</div>		
	</div>
	<div class="box-content">
		<form name="NL_UserRegisterEnterpriseForm" method="post" enctype="multipart/form-data"><input type="hidden" name="form_module_id" value="273">	
		<div class="box-content-square" style="padding-top:0;">
			<div id="step-flow">
				<ul id="step-three">
					<li class="active"><strong>1.</strong>&nbsp;&nbsp;Thông tin đăng ký</li>
					<li>2.&nbsp;&nbsp;Kích hoạt tài khoản</li>
					<li class="last">3.&nbsp;&nbsp;Hoàn tất</li>
				</ul>
			</div>
			
			<!-- thông báo lỗi--><div class="message-box"></div><!--hết thông báo lỗi-->
			
			<h4 style="margin-top:10px;">Thông tin đăng nhập tài khoản</h4>
			<div class="frame_focus">				
				<div class="table-box">
					<table width="880" border="0" cellspacing="5" cellpadding="0">
					  <tr>
						<td width="200px;" align="right"><span class="required">*</span>Địa chỉ Email:</td>
						<td><input name="email" id="email" type="text" value class="input-business field-check" maxlength="255"><div class="field-notification field-alert">Ngân Lượng.vn sử dụng Email làm tên đăng nhập và định danh trong giao dịch, xin vui lòng nhập chính xác một địa chỉ email bạn thường sử dụng (không quá 255 ký tự)</div><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập địa chỉ Email</span><span class="field-check-function blur submit" title="isEmail(_value_)">Địa chỉ Email không đúng định dạng</span><span class="field-check-function blur" title="checkExistEmail(_value_,_obj_,_error_,'Bạn có thể sử dụng email này!')">Địa chỉ Email này đã được sử dụng</span></td>
					  </tr>
					  <tr>
						<td align="right"><span class="required">*</span>Nhập lại địa chỉ Email:</td>
						<td><input name="confirm_email" type="text" value class="input-business field-check" maxlength="255"><div class="field-notification field-alert">Nhập lại địa chỉ Email (không quá 255 ký tự)</div><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa xác nhận lại địa chỉ Email</span><span class="field-check-function blur submit" title="isEmail(_value_)">Xác nhận địa chỉ Email sai định dạng</span><span class="field-check-function blur" title="isConfirmObject(_value_,'email')">Xác nhận địa chỉ Email chưa chính xác</span></td>
					  </tr>
					  <tr>
						<td width="200" align="right"><span class="required">*</span>Mật khẩu đăng nhập:</td>
						<td><input style="width:200px;" id="password" name="password" type="password" autocomplete="off" value class="field-check keyboardInput" maxlength="30"><div class="field-notification field-alert">Từ 6-20 ký tự, không bao gồm khoảng trống</div><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập mật khẩu đăng nhập</span><span class="field-check-function blur submit" title="isPassword(_value_)">Mật khẩu đăng nhập chưa đúng quy tắc</span></td>
					  </tr>
					  <tr>
						<td align="right"><span class="required">*</span>Nhập lại mật khẩu đăng nhập:</td>
						<td><input style="width:200px;" id="confirm_password" name="confirm_password" autocomplete="off" type="password" value class="field-check keyboardInput" maxlength="30"><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập mật khẩu!</span><span class="field-check-function blur submit" title="isPassword(_value_)">Dùng từ 6 đến 20 ký tự, không bao gồm khoảng trống!</span><span class="field-check-function blur" title="isConfirmObject(_value_,'password')">Xin xác nhận lại mật khẩu của bạn!</span></td>
					  </tr>
					</table>
				</div>
			</div>
			<h4>hình thức xác minh giao dịch mặc định</h4>
			<div class="frame_focus">
				<div class="table-box">
					<table width="880" border="0" cellspacing="5" cellpadding="0">
					  <tr>
                        <td width="200" align="right"><span class="required">*</span>Chọn hình thức:</td>
					    <td><input class="otp-type" name="otp_type" type="radio" value="1" checked="checked">
					        <span class="otp-type" id="otp_mobile">OTP (mật khẩu một lần) qua SMS</span><br>
                            <div class="field-notification field-alert">Mỗi khi chuyển, rút tiền hoặc thay đổi thông tin tài khoản, NgânLượng.vn gửi một mã bí mật qua SMS đến số di động của bạn để xác minh giao dịch.</div>
                            <input class="otp-type" name="otp_type" type="radio" value="2">
                            <span class="otp-type" id="otp_payment_password">Mật khẩu thanh toán</span><br>
                            <div class="field-notification field-alert">Bạn khai báo và sử dụng một mật khẩu thanh toán khác với mật khẩu đăng nhập để xác minh giao dịch, khuyên dùng nếu bạn thường xuyên ở nước ngoài. </div>
					      	<br>
                            <span class="yel" style="font-weight:normal;"><strong><u>Ghi chú:</u></strong> Bạn có thể lựa chọn lại hình thức xác minh giao dịch mặc định tại khu vực "Thông tin tài khoản &gt; Hình thức xác minh" sau khi đã đăng ký mở xong tài khoản.</span> </td>
				      </tr>
					</table>
				</div>
			</div>
            
			<div class="otp-type" style="display:none;">
                <h4>Điện thoại di động</h4>
                <div class="frame_focus">
                    <div class="table-box">
                        <table width="880" border="0" cellspacing="5" cellpadding="0">
                          <tr>
                            <td width="200" align="right"><span class="required">*</span>Số điện thoại di động:</td>
                            <td><input name="mobile" id="mobile" type="text" value class="input-business input-numeric field-check"><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập số điện thoại di động!</span><span class="field-check-function blur submit" title="isMobile(_value_)">Dùng từ 10 đến 11 chữ số, không bao gồm khoảng trống!</span></td>
                          </tr>
                          <tr>
                            <td align="right"><span class="required">*</span>Xác nhận số điện thoại di động:</td>
                            <td><input name="confirm_mobile" type="text" value class="input-business input-numeric field-check"><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập số điện thoại di động!</span><span class="field-check-function blur submit" title="isMobile(_value_)">Dùng từ 10 đến 11 chữ số, không bao gồm khoảng trống!</span><span class="field-check-function blur" title="isConfirmObject(_value_,'mobile')">Số điện thoại di động nhập lại không đúng!</span></td>
                          </tr>
                        </table>
                    </div>
                </div>
			</div>
            
			<div class="otp-type" style="display:none;">
                <h4>Mật khẩu thanh toán</h4>
                <div class="frame_focus">
                    <div class="table-box">
                        <table width="880" border="0" cellspacing="5" cellpadding="0">
                          <tr>
                            <td width="200;" align="right"><span class="required">*</span>Mật khẩu thanh toán:</td>
                            <td><input style="width:200px;" name="password_payment" id="password_payment" autocomplete="off" type="password" value class="field-check"><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập mật khẩu!</span><span class="field-check-function blur submit" title="isPassword(_value_)">Dùng từ 6 đến 20 ký tự, không bao gồm khoảng trống!</span></td>
                          </tr>
                          <tr>
                            <td align="right"><span class="required">*</span>Xác nhận mật khẩu thanh toán:</td>
                            <td><input name="confirm_password_payment" style="width:200px;" type="password" autocomplete="off" value class="field-check"><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập mật khẩu!</span><span class="field-check-function blur submit" title="isPassword(_value_)">Dùng từ 6 đến 20 ký tự, không bao gồm khoảng trống!</span><span class="field-check-function blur" title="isConfirmObject(_value_,'password_payment')">Xin xác nhận lại mật khẩu của bạn!</span></td>
                          </tr>
                        </table>
                    </div>
                </div>
                <h4>Số điện thoại di động</h4>
                <div class="frame_focus">
                    <div class="table-box">
                        <table width="880" border="0" cellspacing="5" cellpadding="0">
                          <tr>
                            <td width="200" align="right">Số điện thoại di động:</td>
                            <td><input name="mobile2" type="text" value class="input-business input-numeric field-check"><span class="field-check-function blur" title="isMobile(_value_)">Dùng từ 10 đến 11 chữ số, không bao gồm khoảng trống!</span></td>
                          </tr>					  
                        </table>
                    </div>
                </div>
			</div>
            
			<h4>Thông tin doanh nghiệp</h4>
			<div class="frame_focus">
				<div class="table-box">
					<table width="880" border="0" cellspacing="5" cellpadding="0">
					  <tr>
						<td align="right"><span class="required">*</span>Giấy chứng thực:</td>
						<td><select name="verify_type" id="verify_type" style="width: " class="list-business field-check"><option value="3" selected>Số giấy ĐKKD</option><option value="4">Số giấy ĐK MST</option><option value="5">Số giấy phép đầu tư</option><option value="6">Số quyết định thành lập</option></select><span class="field-check-function submit" title="isSelect(_value_,0)">Bạn chưa chọn loại giấy chứng thực!</span></td>
					  </tr>
					  <tr>
                        <td align="right"><span class="required">*</span><span class="label">Số giấy ĐKKD:</span><span class="label" style="display:none;">Số giấy ĐK MST:</span><span class="label" style="display:none;">Số giấy phép đầu tư:</span><span class="label" style="display:none;">Số quyết định thành lập:</span></td>
					    <td><input name="social_id" type="text" value class="input-business field-check"><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập số chứng thực!</span><span class="field-check-function blur submit" title="isVerifyNumber(_value_)">Số chứng thực bạn nhập không đúng yêu cầu, không bao gồm khoảng trống!</span></td>
				      </tr>
                      <tr>
						<td width="200" align="right"><span class="required">*</span>Tên tổ chức, doanh nghiệp:</td>
						<td><input name="fullname" type="text" value class="input-business field-check"><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập tên doanh nghiệp!</span></td>
					  </tr>					  
					  <tr>
						<td align="right"><span class="required">*</span>Địa chỉ trụ sở chính:</td>
						<td><input name="address" type="text" value class="input-business field-check"><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập địa chỉ kinh doanh!</span></td>
					  </tr>
					  <tr>
                        <td align="right"><span class="required">*</span>Địa phương:</td>
					    <td>tỉnh/thành <select name="city_id" id="city_id" style="width: 130px" class="list-business" onchange="getZones(this, 'zone_id', this.value);"><option value="0" selected></option><option value="2">An Giang</option><option value="3">Bà Rịa Vũng Tàu</option><option value="4">Bạc Liêu</option><option value="5">Bắc Cạn</option><option value="6">Bắc Giang</option><option value="7">Bắc Ninh</option><option value="8">Bến Tre</option><option value="9">Bình Dương</option><option value="10">Bình Định</option><option value="11">Bình Phước</option><option value="12">Bình Thuận</option><option value="13">Cà Mau</option><option value="14">Cao Bằng</option><option value="15">Cần Thơ</option><option value="16">Đà Nẵng</option><option value="17">Đắk Lắk</option><option value="18">Đồng Nai</option><option value="19">Đồng Tháp</option><option value="20">Gia Lai</option><option value="21">Hà  Giang</option><option value="22">Hà Nam</option><option value="23">Hà Nội</option><option value="25">Hà Tĩnh</option><option value="26">Hải Dương</option><option value="27">Hải Phòng</option><option value="28">Hòa Bình</option><option value="29">Hưng Yên</option><option value="30">Hồ Chí Minh</option><option value="31">Khánh Hòa</option><option value="32">Kiên Giang</option><option value="33">Kon Tum</option><option value="34">Lai Châu</option><option value="35">Lạng Sơn</option><option value="36">Lào Cai</option><option value="37">Lâm Đồng</option><option value="38">Long An</option><option value="39">Nam Định</option><option value="40">Nghệ An</option><option value="41">Ninh Bình</option><option value="42">Ninh Thuận</option><option value="43">Phú Thọ</option><option value="44">Phú Yên</option><option value="45">Quảng Bình</option><option value="46">Quảng Nam</option><option value="47">Quảng Ngãi</option><option value="48">Quảng Ninh</option><option value="49">Quảng Trị</option><option value="50">Sóc Trăng</option><option value="51">Sơn La</option><option value="52">Tây Ninh</option><option value="53">Thái Bình</option><option value="54">Thái Nguyên</option><option value="55">Thanh Hóa</option><option value="56">Thừa Thiên Huế</option><option value="57">Tiền Giang</option><option value="58">Trà Vinh</option><option value="59">Tuyên Quang</option><option value="60">Vĩnh Long</option><option value="61">Vĩnh Phúc</option><option value="62">Yên Bái</option><option value="869">Điện Biên</option><option value="912">Hậu Giang</option><option value="919">Đắk Nông</option></select> quận/huyện <select name="zone_id" id="zone_id" style="width: 130px" class="list-business field-check"><option value="0" selected></option></select><span class="field-check-function submit" title="isSelect(_value_,0)">Bạn chưa chọn địa phương!</span></td>
				      </tr>
					  <tr>
                        <td align="right">Điện thoại cố định:</td>
					    <td><input name="phone" type="text" value class="input-business field-check">
					      <span class="field-check-function blur" title="isPhoneNumber(_value_)">Dùng từ 6 đến 15 ký tự!</span></td>
				      </tr>
					  <tr>
                        <td align="right">Địa chỉ Website:</td>
					    <td><input name="website" type="text" value class="input-business"></td>
				      </tr>
					</table>
				</div>
			</div>
			
			<h4>Thông tin người đại diện</h4>
			<div class="frame_focus">
				<div class="table-box">
					<table width="880" border="0" cellspacing="5" cellpadding="0">
					  <tr>
						<td align="right"><span class="required">*</span>Giấy chứng thực:</td>
						<td><select name="representative_verify_type" id="representative_verify_type" style="width: " class="list-business field-check"><option value="1" selected>Chứng minh thư nhân dân</option><option value="2">Hộ chiếu</option></select><span class="field-check-function submit" title="isSelect(_value_,0)">Bạn chưa chọn loại giấy chứng thực!</span></td>
					  </tr>
					  <tr>
                        <td align="right"><span class="required">*</span><span class="label2">Số CMTND:</span><span class="label2" style="display:none;">Số hộ chiếu:</span></td>
					    <td><input name="representative_verify_number" value type="text" class="input-business field-check">
					      <span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập số chứng thực!</span><span class="field-check-function blur submit" title="isVerifyNumber(_value_)">Số chứng thực bạn nhập không đúng yêu cầu, không bao gồm khoảng trống!</span></td>
				      </tr>
                      <tr>
						<td width="200" align="right"><span class="required">*</span>Họ tên đầy đủ:</td>
						<td><input name="representative" value type="text" class="input-business field-check"><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập họ tên!</span></td>
					  </tr>
					  <tr>
						<td align="right"><span class="required">*</span>Ngày tháng năm sinh:</td>
						<td><select name="date" id="date" style="width: 50px" class="list-business field-check"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select> / <select name="month" id="month" style="width: 50px" class="list-business field-check"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select> / <select name="year" id="year" style="width: 60px" class="list-business field-check"><option value="1922">1922</option><option value="1923">1923</option><option value="1924">1924</option><option value="1925">1925</option><option value="1926">1926</option><option value="1927">1927</option><option value="1928">1928</option><option value="1929">1929</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992" selected>1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option></select><!--<input name="representative_birthday" type="text" value="" class="input-business-date field-check" />--></td>
					  </tr>
					  <tr>
						<td align="right">Chỗ ở hiện tại:</td>
						<td><input name="representative_address" value maxlength="255" type="text" class="input-business field-check"><span class="field-check-function blur submit" title="checkLength(_value_,0,255)">Địa chỉ liên hệ của người đại diện không được nhập quá 255 ký tự</span></td>
					  </tr>
					  <tr>
						<td align="right">Số điện thoại liên hệ:</td>
						<td><input name="representative_phone" value type="text" class="input-business field-check"><span class="field-check-function blur" title="isPhoneNumber(_value_)">Dùng từ 6 đến 15 ký tự!</span></td>
					  </tr>
					</table>
				</div>
			</div>
		 	
			<h4>Xác nhận điều khoản sử dụng dịch vụ</h4>			
			<div class="table-box">
				<table width="880" border="0" cellspacing="5" cellpadding="0">
				  <tr>
					<td width="200" align="right"><span class="required">*</span>Nhập mã xác nhận:</td>
					<td><input name="verify_image" type="text" value maxlength="5" class="input-business field-check" autocomplete="off" style="width:80px;"><img src="../images/captcha0.gif" id="verify_image" align="absmiddle" style="margin-left:10px;"><span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa nhập mã xác nhận</span></td>
				  </tr>			 
				</table>						
			</div>
            <div class="checkbox" style="margin-bottom:0px;">
				<input name="agree" id="agree" type="checkbox" value="1">
				<span style="font-weight:bold;">Tôi đã đọc kỹ và xin cam kết tuân thủ <a href="http://help.nganluong.vn/chi-tiet-4/27/373/Thoa-thuan-nguoi-dung-NganLuong.vn.html" target="_blank">Thỏa thuận người dùng</a> và <a href="http://help.nganluong.vn/danh-muc-56/2/1/Dang-ky-mo-tai-khoan.html" target="_blank">Hướng dẫn sử dụng</a> của NgânLượng.vn</span>
				<input name="cmdRegister" id="cmdRegister" type="submit" value="Đăng ký »" class="register-button" onclick="if(!document.getElementById('agree').checked) {alert('Bạn chưa chọn đồng ý điều khoản sử dụng dịch vụ'); return false;};">
			</div>	
        </div>		
		</form>
		</div>		
	</div>
</div>
</asp:Content>
