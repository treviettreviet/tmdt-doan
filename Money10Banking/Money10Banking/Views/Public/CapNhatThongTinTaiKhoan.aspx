﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master"
    Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CapNhatThongTinCaNhan
</asp:Content>

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
                                    Mã TK : <%=Session["SoThe"] %>
                                    <div style="margin-top: 5px; width: 100%;">
                                        <img src="../../Content/images/mail_ico.png" style="float: left;"><div style="margin-bottom: 0px;
                                            float: left; padding-left: 10px;"> <%= Session["Login"] %>
                                           </div>
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
                <form action="CapNhat" name="fprofile" id="fprofile"
                accept-charset="utf-8" method="post">
                <input type="hidden" name="_form_action" value="accounts/profile/edit">
                <input type="hidden" name="_form_token" value="73c6840b7bc23d428efe2482fa8d88767738686d">
                <table class="form-content-table" cellspacing="10px">
                    <tr>
                        <th>
                            Tên chủ tài khoản
                        </th>
                        <td>
                            <span class="acc_name"> </span>
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
                            Đường
                        </th>
                        <td>
                            <input type="text" name="street" value class="text address" maxlength="50">
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
                           Số điện thoại
                        </th>
                        <td>
                            <input type="text" name="phone" value class="text address" maxlength="50">
                        </td>
                    </tr>                    
                   
                    <tr>
                        <th>
                            Nhận thông báo qua email
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
                  
                </table>
                </form>
            </div>
            
            <div class="clear">
            </div>
        </div>
</asp:Content>
