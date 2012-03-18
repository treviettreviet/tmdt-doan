<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master"
    Inherits="System.Web.Mvc.ViewPage<dynamic>" %>



<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CapNhatThongTinTaiKhoanCaNhan
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Main">
        <div class="tab-acount">
            <div id="account_info">
                <div id="account_info_inner">
                    <div class="tran-tab-bg">
                         <table width="100%" cellspacing="0">
                            <tr>
                                <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top: 15px;">
                                    Mã TK : 
                                    <% Money10Banking.Models.TaiKhoan tk1 = (Money10Banking.Models.TaiKhoan)Session["User"]; %><%=tk1.SoTaiKhoan%>
                                    <div style="margin-top: 5px; width: 100%;">
                                        <img src="../../Content/images/mail_ico.png" style="float: left;" ><div style="margin-bottom: 0px;
                                            float: left; padding-left: 10px;">
                                           <%=tk1.Email%></div>
                                    </div>
                                    </br>
                                   
                                </td>
                                
                                <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top: 15px;">
                                    <div class="font1">
                                        Thông tin thẻ</div>
                                    <div>
                                        <%Money10Banking.Models.The the = (Money10Banking.Models.The)Session["The"];
                                          if (the == null || the.TinhTrang == 0)
                                          {
                                                %>
                                        <ul>
                                        <li>Số Thẻ: 0<br /></li>
                                        <li>Số dư: 0 đ</li>
                                        </ul>
                                          <%  }
                                          else
                                          { %>
                                                <ul>
                                        <li>Số Thẻ: <%=the.SoThe %><br /></li>
                                        <li>Số dư: <%=the.SoDu %> đ</li>
                                        </ul>
                                        <%  }
                                              %>
                                       
                                </td>
                                <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top: 15px;">
                                    <div class="font1">
                                        Thông tin thẻ </div>
                                    <div class="font2">
                                        0</div>
                                </td>
                                <td width="25%" class="tran-first">
                                    <div class="font1">
                                        Thông tin khác
                                    </div>
                                    <div class="font2">
                                   <%-- <% 
                                       if (Session["SoTienThe"] == null)
                                       {
                                       %>
                                           <%=stk %>
                                       }
                                        
                                        <%=stk %>--%>
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
                <form action="XLCapNhatTaiKhoan" name="fprofile" id="fprofile"
                accept-charset="utf-8" method="post">
                <table class="form-content-table" cellspacing="10px">
                    <tr>
                        <th>
                            Tên chủ tài khoản
                        </th>
                        <td>
                         <% Money10Banking.Models.TaiKhoan tk = (Money10Banking.Models.TaiKhoan)Session["User"];  %>
                         <% Money10Banking.Models.NganHangEntities db = new Money10Banking.Models.NganHangEntities(); %>
                         <% Money10Banking.Models.KhachHang kh = db.KhachHangs.Single(p => p.MaTaiKhoan == tk.MaTaiKhoan);%>
                            <span class="acc_name"> <%= kh.HoTen%></span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Chứng minh thư/Hộ chiếu
                        </th>
                        <td>
                            <input type="text" name="cmnd" value class="text address" maxlength="50"></td>
                    </tr>
                    <tr>
                        <th>
                            Địa chỉ
                        </th>
                        <td>
                            <input type="text" name="diachi" value class="text address" maxlength="50">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Đường
                        </th>
                        <td>
                            <input type="text" name="street" value class="text address" maxlength="50">
                        </td>
                    </tr>
                     <tr>
                        <th>
                            Phường/ Xã</th>
                        <td>
                            <input type="text" name="phuong" value class="text address" maxlength="50">
                        </td>
                    </tr>      
                    
                    <tr>
                        <th>
                            Quận/Huyện
                        </th>
                        <td>
                            <input type="text" name="distric" value class="text address" maxlength="50">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Tỉnh/Thành phố
                        </th>
                        <td>
                             <input type="text" name="city" value class="text address" maxlength="50">
                        </td>
                    </tr>
                                 
                   
                    <tr>
                        <th>
                            Nhận thông báo qua email</th>
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
                                    <a href=#>Đổi mật khẩu</a>
                                    Bạn click vào đây để thay đổi mật khẩu đăng nhập vào tài khoản Ngân Hàng</p>

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
