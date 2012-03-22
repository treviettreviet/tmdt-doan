<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
    function checkForm() {
        // Email
        if (document.form1.email.value == "") {
            alert("Bạn phải nhập vào email");
            document.form1.email.focus();
            return false;
        }
        if (document.form1.password.value == "") {
            alert("Bạn phải nhập vào mật khẩu");
            document.form1.password.focus();
            return false;
        }
    }
</script>
    <div id="content">
        <div id="body">
            <div id="line-yell">
            </div>
            <div id="login-box">
                <div id="login-box-left">
                    <div id="login-box-left-content">
                        <div id="login-title">
                            Đăng nhập tài khoản ví điện tử Ngân Lượng</div>
                        <div id="login-box-content">
                            <form method="post" name="form1" onsubmit="return checkForm();" action="/Account/XuLyDangNhap">
                            <%
                                string div = Request.QueryString["div"];
                                string error = Request.QueryString["error"];
                                if (div != null && error != null)
                                {
                            %>
                                    <div id="message-box-login" style="display: block;" class="<%=Html.Encode(div) %>"><%=Html.Encode(error) %></div>
                            <%                    
                                }
                            %>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <th style="width: 80px; text-align: right;">
                                        <span class="required">*</span>Tài khoản:
                                    </th>
                                    <td>
                                        <input name="email" type="text" value="">
                                    </td>
                                </tr>
                                <tr>
                                    <th style="width: 80px; text-align: right;">
                                        <span class="required">*</span>Mật khẩu:
                                    </th>
                                    <td>
                                        <%--<input name="password" type="password" autocomplete="off" value="" style="width: 150px;"
                                            class="password keyboardInput">--%>
                                            <input name="password" type="password" autocomplete="off" value="" style="width: 150px;" />
                                    </td>
                                </tr>
                                <tr>
                                    <%--<th style="width: 80px; text-align: right;">
                                        <span class="required">*</span>Mã xác nhận:
                                    </th>
                                    <td>
                                        <input name="verify_image" type="text" value maxlength="5" autocomplete="off" style="width: 70px;
                                            float: left; margin-right: 5px;"><img src="../../Content/images/captcha0.gif">
                                    </td>--%>
                                </tr>
                                <tr>
                                    <th>
                                        &nbsp;
                                    </th>
                                    <td style="line-height: 28px;">
                                        <input type="submit" class="button-content" value="Đăng nhập" style="float: left;
                                            margin-right: 5px;">
                                        <%--<a href="#">
                                            Quên mật khẩu?</a>--%>
                                    </td>
                                </tr>
                            </table>
                            </form>
                        </div>
                        <div id="login-rigister">
                            <p>
                                Bạn chưa có tài khoản ví điện tử EcMoney10Broker.tk?</p>
                            <p>
                                <a href="/Account/ChonDangKy">
                                    <img src="../../Content/images/button-r.gif"/></a></p>
                        </div>
                    </div>
                </div>
                <div id="login-box-right">
                    <img src="../../Content/images/login-ba.png">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
