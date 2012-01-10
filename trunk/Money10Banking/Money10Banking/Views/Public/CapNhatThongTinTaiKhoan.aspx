<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master"
    Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Main">
        <div class="tab-acount">
            <div id="account_info">
                <div id="account_info_inner">
                    <div class="tran-tab-bg">
                        <table width="100%" cellspacing="0">
                            <tr>
                                <td width="25%" class="tran-first">
                                    <div class="font1">
                                        Số dư tài khoản
                                    </div>
                                    <div class="font2">
                                        0</div>
                                    <div>
                                        <a target="_blank" style="font-size: 12px; margin-left: -5px; color: #FFF; text-decoration: underline;"
                                            href="https://www.baokim.vn/transactions/topup">Bắn tiền ngay vào ĐT di động</a></div>
                                </td>
                                <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top: 15px;">
                                    <div class="font1">
                                        Số dư đóng băng</div>
                                    <div class="font2">
                                        0</div>
                                </td>
                                <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top: 15px;">
                                    <div class="font1">
                                        Số tiền thưởng</div>
                                    <div class="font2">
                                        0</div>
                                </td>
                                <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top: 15px;">
                                    Mã TK : 90D7E017B4DBC1
                                    <div style="margin-top: 5px; width: 100%;">
                                        <img src="../../Content/images/mail_ico.png" style="float: left;"><div style="margin-bottom: 0px;
                                            float: left; padding-left: 10px;">
                                            quangkhai1289@gmail.com</div>
                                    </div>
                                    </br>
                                    <div style="margin-top: 5px; width: 100%;">
                                        <img src="../../Content/images/Box-Supp.png" style="float: left;"><div style="margin-bottom: 0px;
                                            float: left; padding-left: 10px;">
                                            841698726280</div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">

            j(document).ready(function () {
                j("#provinceId").change(function () {
                    province_id = j("#provinceId").val();
                    if (province_id > 0) {
                        j("#districtId").load("https://www.baokim.vn//regionals/getdistricts/" + province_id);
                    } else {
                        j("#districtId")[0].innerHTML = '<option value="0">Chọn tỉnh/thành</option>';
                    }
                });

                j("#fprofile").validate({
                    //set the rules for the field names
                    rules: {
                        address: {
                            required: true
                        },
                        provinceId: {
                            number: true,
                            min: 1

                        },
                        districtId: {
                            number: true,
                            min: 1
                        }
                    },
                    //set messages to appear inline
                    messages: {
                        address: {
                            required: "Nhập địa chỉ" //'Nhập địa chỉ'				
                        },
                        provinceId: {
                            min: "Chọn tỉnh/thành" //'Chọn tỉnh/thành'

                        },
                        districtId: {
                            min: "Chọn quận/huyện" //'Chọn quận/huyện'
                        }
                    }
                });

            });

</script>
        <div>
            <div class="payment-title">
                <div class="pay-method-title">
                    THAY ĐỔI THÔNG TIN TÀI KHOẢN</div>
                <div class="payment-help">
                    <div class="icon-help">
                        <img src="../../Content/images/icon-hel.png"></div>
                    <div class="text-help">
                        <a href="https://www.baokim.vn/faq/category/quan-ly-tai-khoan" class="help_link_top bold"
                            target="popup" onclick="window.open(&quot;&quot;,&quot;popup&quot;,&quot;height=500,width=810,scrollbars=yes&quot;)">
                            <b>Xem trợ giúp</b></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- new -->
        <div class="form-container" style="padding-bottom: 20px;">
            <div class="form-content">
                <table class="form_tab_padding_top" cellspacing="10px">
                    <tr style="height: 0px;">
                        <td>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="form">
            </div>
            <div class="form-content clear">
                <form action="https://www.baokim.vn/accounts/profile/edit" name="fprofile" id="fprofile"
                accept-charset="utf-8" method="post">
                <input type="hidden" name="_form_action" value="accounts/profile/edit">
                <input type="hidden" name="_form_token" value="73c6840b7bc23d428efe2482fa8d88767738686d">
                <table class="form-content-table" cellspacing="10px">
                    <tr>
                        <th>
                            Tên chủ tài khoản
                        </th>
                        <td>
                            <span class="acc_name">Phan Quang Khải</span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Chứng minh thư/Hộ chiếu
                        </th>
                        <td>
                            <input type="text" name="address0" value class="text address" maxlength="50"></td>
                    </tr>
                    <tr>
                        <th>
                            Địa chỉ
                        </th>
                        <td>
                            <input type="text" name="address" value class="text address" maxlength="50">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Tỉnh/Thành phố
                        </th>
                        <td>
                            <select class="text" name="provinceId" id="provinceId">
                                <option value>Chọn tỉnh/thành</option>
                                <option value="1">An Giang</option>
                                <option value="2">Bà Rịa-Vũng Tàu</option>
                                <option value="9">Bình Dương</option>
                                <option value="10">Bình Phước</option>
                                <option value="11">Bình Thuận</option>
                                <option value="8">Bình Định</option>
                                <option value="5">Bạc Liêu</option>
                                <option value="3">Bắc Giang</option>
                                <option value="4">Bắc Kạn</option>
                                <option value="6">Bắc Ninh</option>
                                <option value="7">Bến Tre</option>
                                <option value="14">Cao Bằng</option>
                                <option value="12">Cà Mau</option>
                                <option value="13">Cần Thơ</option>
                                <option value="21">Gia Lai</option>
                                <option value="22">Hà Giang</option>
                                <option value="23">Hà Nam</option>
                                <option value="24">Hà Nội</option>
                                <option value="25">Hà Tĩnh</option>
                                <option value="29">Hòa Bình</option>
                                <option value="30">Hưng Yên</option>
                                <option value="26">Hải Dương</option>
                                <option value="27">Hải Phòng</option>
                                <option value="28">Hậu Giang</option>
                                <option value="31">Khánh Hoà</option>
                                <option value="32">Kiên Giang</option>
                                <option value="33">Kon Tum</option>
                                <option value="34">Lai Châu</option>
                                <option value="38">Long An</option>
                                <option value="37">Lào Cai</option>
                                <option value="35">Lâm Đồng</option>
                                <option value="36">Lạng Sơn</option>
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
                                <option value="58">TP Hồ Chí Minh</option>
                                <option value="55">Thanh Hoá</option>
                                <option value="53">Thái Bình</option>
                                <option value="54">Thái Nguyên</option>
                                <option value="56">Thừa Thiên-Huế</option>
                                <option value="57">Tiền Giang</option>
                                <option value="59">Trà Vinh</option>
                                <option value="60">Tuyên Quang</option>
                                <option value="52">Tây Ninh</option>
                                <option value="61">Vĩnh Long</option>
                                <option value="62">Vĩnh Phúc</option>
                                <option value="63">Yên Bái</option>
                                <option value="18">Điện Biên</option>
                                <option value="15">Đà Nẵng</option>
                                <option value="16">Đắk Lắk</option>
                                <option value="17">Đắk Nông</option>
                                <option value="19">Đồng Nai</option>
                                <option value="20">Đồng Tháp</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Quận/Huyện
                        </th>
                        <td>
                            <select class="text" name="districtId" id="districtId">
                                <option value="0">Chọn quận/huyện</option>
                                ';
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>
                           Số điện thoại
                        </th>
                        <td>
                            <input type="text" name="phone" value class="text address" maxlength="50">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Mục đích đăng ký
                        </th>
                        <td>
                            <input type="checkbox" name="purpose[]" value="1" checked="checked" id="purpose_buy_c"><label
                                for="purpose_buy_c"><span class="font-acc-command">Mua Hàng</span></label>
                            <input type="checkbox" name="purpose[]" value="2" id="purpose_sale_c"><label for="purpose_sale_c"><span
                                class="font-acc-command">Bán Hàng</span></label>
                            <input type="checkbox" name="purpose[]" value="3" id="purpose_other_c"><label for="purpose_other_c"><span
                                class="font-acc-command">Chưa xác định</span></label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Nhận thông báo từ Bảo Kim
                        </th>
                        <td>
                            <input type="checkbox" name="receiveReport" value="1" id="receiveReport">
                            <label for="receiveReport" class="clear">
                                Đồng ý</label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                        </th>
                        <td>
                            <input type="submit" name="submit" value="Cập nhật" class="button">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="acc_link" style="margin: 10px 10px 0 20px;">
                                <p style="margin-bottom: 10px;">
                                    <a href="https://www.baokim.vn/accounts/profile/change_password">Đổi mật khẩu</a>
                                    Bạn click vào đây để thay đổi mật khẩu đăng nhập vào tài khoản Bảo Kim.</p>
                                <p>
                                    <a href="https://www.baokim.vn/accounts/profile/security_question">Cập nhật câu hỏi
                                        bảo mật</a> Bạn cần cập nhật câu hỏi bảo mật để sử dụng trong trường hợp quên
                                    email đăng nhập vào tài khoản Bảo Kim.</p>
                            </div>
                        </td>
                    </tr>
                </table>
                </form>
            </div>
            <div class="form-bottom">
            </div>
            <div class="clear">
            </div>
        </div>
</asp:Content>
