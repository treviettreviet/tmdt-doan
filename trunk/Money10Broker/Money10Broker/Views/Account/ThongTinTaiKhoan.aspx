<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master"
    Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Thông tin tài khoản
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="menu-nav-content">
        <div id="menu-nav-content-l">
        </div>
        <div id="menu-nav-content-r">
        </div>
        <div id="menu-nav-content-c">
            <div id="menu-nav-content-main">
                <ul>
                    <li class="active " style="display: block"><a href="#"><span>GIAO DỊCH</span></a></li>
                    <li class=" " style="display: block"><a href="#"><span>TÀI KHOẢN</span></a></li>
                </ul>
            </div>
            <div id="menu-nav-content-sub">
                <ul>
                    <li class=" active" style="display: block"><a href="/Public/LichSuGiaoDich"><span>Tổng
                        hợp</span></a></li>
                    <li class=" " style="display: block"><a href="/Public/LichSuGiaoDich"><span>Lịch sử
                        giao dịch</span></a></li>
                    <li class=" " style="display: block"><a href="/Public/NapTien"><span>Nạp tiền</span></a></li>
                    <li class="" style="display: block"><a href="/Public/RutTien"><span>Rút tiền</span></a></li>
                    <li class=" " style="display: block"><a href="/Public/ChuyenTien"><span>Chuyển tiền</span></a></li>
                    <li class=" " style="display: block"><a href="/Public/ChuyenTienCungMoigioi"><span>Chuyển
                        tiền cùng môi giới</span></a></li>
                    <li class=" " style="display: block"><a href="/Public/ChuyenTienKhacMoigioi"><span>Chuyển
                        tiền khác môi giới</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div id="menu-vertical">
        <div id="menu-vertical-right">
            <div class="menu-vertical-right-content-form">
                <div id="menu-vertical-right-content">
                    <div class="menu-vertical-right-content">
                        <%
                            if (Session["User"] == null)
                            {
                                Response.Redirect("../Public/DangNhap");
                            }
                            else
                            {
                                Money10Broker.Models.TaiKhoan tk = (Money10Broker.Models.TaiKhoan)Session["User"];
                                string LoaiTaiKhoan = "";
                                string TinhTrangTaiKhoan = "";
                                Money10Broker.Models.CaNhan cn = new Money10Broker.Models.CaNhan();
                                Money10Broker.Models.DoanhNghiep dn = new Money10Broker.Models.DoanhNghiep();
                                if (tk.MaLoaiTaiKhoan.Equals("LTK001"))
                                {
                                    LoaiTaiKhoan = "TÀI KHOẢN VÍ DÀNH CHO CÁC NHÂN";
                                    if (Session["TaiKhoanCaNhan"] != null)
                                    {
                                        cn = (Money10Broker.Models.CaNhan)Session["TaiKhoanCaNhan"];
                                    }
                                }
                                else
                                {
                                    LoaiTaiKhoan = "TÀI KHOẢN VÍ DÀNH CHO DOANH NGHIỆP";
                                    if(Session["TaiKhoanDoanhNghiep"] !=null)
                                    {
                                        dn = (Money10Broker.Models.DoanhNghiep)Session["TaiKhoanDoanhNghiep"];
                                    }
                                }
                                if (tk.TinhTrang == 0)
                                    TinhTrangTaiKhoan = "Đang hoạt động";
                                else
                                    TinhTrangTaiKhoan = "Không hoạt động";
                                
                                
                        %>
                        <div class="menu-vertical-right-content-title">Thông tin tài khoẢn</div>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <th>
                                    Loại tài khoản:
                                </th>
                                <td>
                                    <strong><%=LoaiTaiKhoan%></strong>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Mã tài khoản:
                                </th>
                                <td>
                                    <strong>
                                        <%=tk.SoTaiKhoan %></strong>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Tình trạng tài khoản:
                                </th>
                                <td>
                                    <%=TinhTrangTaiKhoan %>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Hình thức xác minh giao dịch:
                                </th>
                                <td>
                                    Sử dụng mật khẩu giao dịch<span style="margin-left: 10px;">[ <a href="#">Thay đổi</a>]</span>
                                </td>
                            </tr>
                        </table>
                        <%       
                        } 
                        %>
                    </div>
                    <div class="menu-vertical-right-content">
                        <div class="menu-vertical-right-content-title">
                            <span>Thông tin chỦ tài khoẢn</span></div>
                        <form method="post" action="">
                        <div class="message-success">
                        </div>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <th>
                                    Tên chủ tài khoản
                                </th>
                                <td>
                                    <strong>Phan Quang Khải</strong>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Địa chỉ Email chính:
                                </th>
                                <td>
                                    quangkhai1289@gmail.com [ <a href="#">Thay đổi</a> ]
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Số điện thoại di động chính:
                                </th>
                                <td>
                                    01698726280 [ <a href="">Thay đổi</a> ]
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Tài khoản Ngân hàng mặc định:
                                </th>
                                <td>
                                    [ <a href="">Khai báo</a> ]
                                </td>
                            </tr>
                            <!-- BEGIN BlockNotVerify -->
                            <tr>
                                <th>
                                    <span class="required">*</span>Ngày sinh:
                                </th>
                                <td>
                                    <select name="date" id="date" style="width: 50px" class="list-business field-check">
                                        <option value="1" selected>1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                        <option value="23">23</option>
                                        <option value="24">24</option>
                                        <option value="25">25</option>
                                        <option value="26">26</option>
                                        <option value="27">27</option>
                                        <option value="28">28</option>
                                        <option value="29">29</option>
                                        <option value="30">30</option>
                                        <option value="31">31</option>
                                    </select>
                                    /
                                    <select name="month" id="month" style="width: 50px" class="list-business field-check">
                                        <option value="1" selected>1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                    /
                                    <select name="year" id="year" style="width: 60px" class="list-business field-check">
                                        <option value="1922">1922</option>
                                        <option value="1923">1923</option>
                                        <option value="1924">1924</option>
                                        <option value="1925">1925</option>
                                        <option value="1926">1926</option>
                                        <option value="1927">1927</option>
                                        <option value="1928">1928</option>
                                        <option value="1929">1929</option>
                                        <option value="1930">1930</option>
                                        <option value="1931">1931</option>
                                        <option value="1932">1932</option>
                                        <option value="1933">1933</option>
                                        <option value="1934">1934</option>
                                        <option value="1935">1935</option>
                                        <option value="1936">1936</option>
                                        <option value="1937">1937</option>
                                        <option value="1938">1938</option>
                                        <option value="1939">1939</option>
                                        <option value="1940">1940</option>
                                        <option value="1941">1941</option>
                                        <option value="1942">1942</option>
                                        <option value="1943">1943</option>
                                        <option value="1944">1944</option>
                                        <option value="1945">1945</option>
                                        <option value="1946">1946</option>
                                        <option value="1947">1947</option>
                                        <option value="1948">1948</option>
                                        <option value="1949">1949</option>
                                        <option value="1950">1950</option>
                                        <option value="1951">1951</option>
                                        <option value="1952">1952</option>
                                        <option value="1953">1953</option>
                                        <option value="1954">1954</option>
                                        <option value="1955">1955</option>
                                        <option value="1956">1956</option>
                                        <option value="1957">1957</option>
                                        <option value="1958">1958</option>
                                        <option value="1959">1959</option>
                                        <option value="1960">1960</option>
                                        <option value="1961">1961</option>
                                        <option value="1962">1962</option>
                                        <option value="1963">1963</option>
                                        <option value="1964">1964</option>
                                        <option value="1965">1965</option>
                                        <option value="1966">1966</option>
                                        <option value="1967">1967</option>
                                        <option value="1968">1968</option>
                                        <option value="1969">1969</option>
                                        <option value="1970">1970</option>
                                        <option value="1971">1971</option>
                                        <option value="1972">1972</option>
                                        <option value="1973">1973</option>
                                        <option value="1974">1974</option>
                                        <option value="1975">1975</option>
                                        <option value="1976">1976</option>
                                        <option value="1977">1977</option>
                                        <option value="1978">1978</option>
                                        <option value="1979">1979</option>
                                        <option value="1980">1980</option>
                                        <option value="1981">1981</option>
                                        <option value="1982">1982</option>
                                        <option value="1983">1983</option>
                                        <option value="1984">1984</option>
                                        <option value="1985">1985</option>
                                        <option value="1986">1986</option>
                                        <option value="1987">1987</option>
                                        <option value="1988">1988</option>
                                        <option value="1989">1989</option>
                                        <option value="1990">1990</option>
                                        <option value="1991">1991</option>
                                        <option value="1992">1992</option>
                                        <option value="1993">1993</option>
                                        <option value="1994">1994</option>
                                        <option value="1995">1995</option>
                                        <option value="1996">1996</option>
                                        <option value="1997">1997</option>
                                        <option value="1998">1998</option>
                                        <option value="1999">1999</option>
                                        <option value="2000">2000</option>
                                        <option value="2001">2001</option>
                                        <option value="2002">2002</option>
                                    </select><!--<input name="birthday" type="text" value="01/01/1989" class="input-business" />-->
                                    (DD/MM/YYYY)
                                    <div class="message-box">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <span class="required">*</span>Giới tính : :
                                </th>
                                <td>
                                    <select name="gender" id="gender" style="width: ">
                                        <option value="1" selected>Nam</option>
                                        <option value="2">Nữ</option>
                                    </select>
                                    <div class="message-box">
                                    </div>
                                </td>
                            </tr>
                            <!-- END BlockNotVerify -->
                            <tr>
                                <th>
                                    <span class="required">*</span>Địa chỉ chỗ ở hiện tại:
                                </th>
                                <td>
                                    <input name="address" type="text" value="345/5 Trần Hưng Đạo" class="input-business">
                                    <div class="message-box">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <span class="required">*</span>Địa phương nơi bạn sống:
                                </th>
                                <td>
                                    <select name="city_id" id="city_id" style="width: 110px" class="list-business" onchange="getZones(this, 'zone_id', this.value);">
                                        <option value="0"></option>
                                        <option value="2">An Giang</option>
                                        <option value="3">Bà Rịa Vũng Tàu</option>
                                        <option value="4">Bạc Liêu</option>
                                        <option value="5">Bắc Cạn</option>
                                        <option value="6">Bắc Giang</option>
                                        <option value="7">Bắc Ninh</option>
                                        <option value="8">Bến Tre</option>
                                        <option value="9">Bình Dương</option>
                                        <option value="10">Bình Định</option>
                                        <option value="11">Bình Phước</option>
                                        <option value="12">Bình Thuận</option>
                                        <option value="13">Cà Mau</option>
                                        <option value="14">Cao Bằng</option>
                                        <option value="15">Cần Thơ</option>
                                        <option value="16">Đà Nẵng</option>
                                        <option value="17">Đắk Lắk</option>
                                        <option value="18">Đồng Nai</option>
                                        <option value="19">Đồng Tháp</option>
                                        <option value="20">Gia Lai</option>
                                        <option value="21">Hà Giang</option>
                                        <option value="22">Hà Nam</option>
                                        <option value="23">Hà Nội</option>
                                        <option value="25">Hà Tĩnh</option>
                                        <option value="26">Hải Dương</option>
                                        <option value="27">Hải Phòng</option>
                                        <option value="28">Hòa Bình</option>
                                        <option value="29">Hưng Yên</option>
                                        <option value="30"> Hồ Chí Minh</option>
                                        <option value="31">Khánh Hòa</option>
                                        <option value="32">Kiên Giang</option>
                                        <option value="33">Kon Tum</option>
                                        <option value="34">Lai Châu</option>
                                        <option value="35">Lạng Sơn</option>
                                        <option value="36">Lào Cai</option>
                                        <option value="37">Lâm Đồng</option>
                                        <option value="38">Long An</option>
                                        <option value="39">Nam Định</option>
                                        <option value="40">Nghệ An</option>
                                        <option value="41">Ninh Bình</option>
                                        <option value="42">Ninh Thuận</option>
                                        <option value="43">Phú Thọ</option>
                                        <option value="44">Phú Yên</option>
                                        <option value="45">Quảng Bình</option>
                                        <option value="46">Quảng Nam</option>
                                        <option value="47">Quảng Ngãi</option>
                                        <option value="48">Quảng Ninh</option>
                                        <option value="49">Quảng Trị</option>
                                        <option value="50">Sóc Trăng</option>
                                        <option value="51">Sơn La</option>
                                        <option value="52">Tây Ninh</option>
                                        <option value="53">Thái Bình</option>
                                        <option value="54">Thái Nguyên</option>
                                        <option value="55">Thanh Hóa</option>
                                        <option value="56">Thừa Thiên Huế</option>
                                        <option value="57">Tiền Giang</option>
                                        <option value="58">Trà Vinh</option>
                                        <option value="59">Tuyên Quang</option>
                                        <option value="60">Vĩnh Long</option>
                                        <option value="61">Vĩnh Phúc</option>
                                        <option value="62">Yên Bái</option>
                                        <option value="869">Điện Biên</option>
                                        <option value="912">Hậu Giang</option>
                                        <option value="919">Đắk Nông</option>
                                    </select><select name="zone_id" id="zone_id" style="width: 110px" class="list-business field-check"><option
                                        value="0"></option>
                                        <option value="72" selected>Quận 1</option>
                                        <option value="73">Quận 2</option>
                                        <option value="591">Quận 3</option>
                                        <option value="592">Quận 4</option>
                                        <option value="593">Quận 5</option>
                                        <option value="594">Quận 6</option>
                                        <option value="595">Quận 7</option>
                                        <option value="596">Quận 8</option>
                                        <option value="597">Quận 9</option>
                                        <option value="598">Quận 10</option>
                                        <option value="599">Quận 11</option>
                                        <option value="600">Quận 12</option>
                                        <option value="601">Quận Gò Vấp</option>
                                        <option value="602">Quận Phú Nhuận</option>
                                        <option value="603">Quận Bình Thạnh</option>
                                        <option value="604">Quận Tân Bình</option>
                                        <option value="605">Quận Thủ Đức</option>
                                        <option value="606">Huyện Bình Chánh</option>
                                        <option value="607">Huyện Nhà Bè</option>
                                        <option value="608">Huyện Hóc Môn</option>
                                        <option value="609">Huyện Củ Chi</option>
                                        <option value="610">Huyện Cần Giờ</option>
                                        <option value="634">Quận Bình Tân</option>
                                        <option value="635">Quận Tân Phú</option>
                                    </select>
                                    <div class="message-box">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                </th>
                                <td>
                                    <input class="button-content" type="submit" value="Cập nhật">
                                </td>
                            </tr>
                        </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div id="menu-vertical-left">
            <ul>
                <li class="active"><a href="/Account/ThongTinTaiKhoan">Thông tin tài khoản</a></li>                        
                <li class><a href="/Account/DoiMatKhau">Đổi mật khẩu</a></li>
            </ul>
        </div>
    </div>
</asp:Content>
