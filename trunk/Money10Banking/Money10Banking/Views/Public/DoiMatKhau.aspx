<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Main">
        <div class="tab-acount">
            <div id="account_info">
                <div id="account_info_inner">
                    <div class="tran-tab-bg">
                        <table width="100%" cellspacing="0">
                            <%--<tr>
		   <td width="25%" class="tran-first"><div class="font1">Số dư tài khoản </div>
			 <div class="font2">0</div>
			 <div>
			 <a target="_blank" style="font-size: 12px;margin-left:-5px;color:#FFF;text-decoration:underline;" href="https://www.baokim.vn/transactions/topup">Bắn tiền ngay vào ĐT di động</a></div>
			 </td>
		   <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top:15px;">
		   <div class="font1">Số dư đóng băng</div><div class="font2">0</div></td>
		   <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top:15px;"><div class="font1">Số tiền thưởng</div><div class="font2"> 0</div></td>
		   <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top:15px;">
		   		Mã TK : 90D7E017B4DBC1		   		<div style="margin-top:5px;width: 100%;">
 				<img src="../../Content/images/mail_ico.png" style="float:left;"><div style="margin-bottom:0px;float:left;padding-left:10px;">quangkhai1289@gmail.com</div>
 				</div></br>
 				<div style="margin-top:5px;width: 100%;">
 				<img src="../../Content/images/Box-Supp.png" style="float:left;"><div style="margin-bottom:0px;float:left;padding-left:10px;">841698726280</div>
 				</div>
 			</td>
		 </tr>--%>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-container" style="padding-bottom: 20px;">
            <div class="text_header">
                <div class="left">
                    <div class="title">
                        Thay đổi mật khẩu</div>
                </div>
            </div>
            <div class="clear">
            </div>
            <div class="form-content clear">
                <table cellspacing="10px" class="form_tab_padding_top">
                    <tbody>
                        <tr style="height: 0px;">
                            <td>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <form action="https://www.baokim.vn/accounts/profile/change_password" method="post"
                accept-charset="utf-8">
                <input type="hidden" name="_form_action" value="/accounts/profile/change_password">
                <input type="hidden" name="_form_token" value="fda1e295824f105eaf2d62af42ff7d2c8e4012c7">
                <table class="form-content-table" cellspacing="10px">
                    <tr>
                        <td colspan="2">
                            <p style="padding-left: 20px;">
                                Chúng tôi đề nghị bạn sử dụng mật khẩu không phải là một từ có thể tra trong từ
                                điền, có cả kí tự viết hoa, không viết hoa và ít nhất có một kí tự đặc biệt như
                                @, $, %...</p>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Mật khẩu hiện tại<span class="mandatory">*</span> :
                        </th>
                        <td>
                            <input type="password" name="password" value>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Mật khẩu mới<span class="mandatory">*</span> :
                        </th>
                        <td>
                            <input type="password" name="newPassword" value>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Xác nhận mật khẩu mới<span class="mandatory">*</span> :
                        </th>
                        <td>
                            <input type="password" name="confirmNewPassword" value>
                        </td>
                    </tr>
                    <tr>
                        <th>
                        </th>
                        <td>
                            <input type="submit" name="ok" value="Thay đổi" class="button"><input type="submit"
                                name="cancel" value="Hủy bỏ" class="button cancel">
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
    </div>
</asp:Content>
