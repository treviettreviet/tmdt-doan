<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <%
        Money10Banking.Models.Language dataLang = new Money10Banking.Models.Language();
        Money10Banking.Models.Language dataContent = new Money10Banking.Models.Language();
        if (Session["Language"] != null && Session["Content"] != null)
        {
            dataLang = (Money10Banking.Models.Language)Session["Language"];
            dataContent = (Money10Banking.Models.Language)Session["Content"];
        }
    %>
    <div id="Main">
        <%--<div class="error-box">Thông tin đăng nhập không chính xác</div>--%>
        <div class="<%=Html.Encode(ViewData["div"]) %>"><%=Html.Encode(ViewData["error"]) %></div>
        <!-- Body -->
        <div class="home-form-login">
            <div class="frm-login-left left" style="padding-bottom: 20px;">
                <div class="login-form">
                    <div class="login_header">
                    </div>
                    <div class="login_content">
                        <form action="/Public/XuLyDangNhap" id="form_login" accept-charset="utf-8" method="post">
                        <div class="header">
                            <%=dataLang["TITLE_LOGIN"].ValueLang%></div>
                        <div class="login_label">
                             <%=dataLang["BOX_EMAIL"].ValueLang%></div>
                        <div>
                            <input type="text" name="email" value="" /></div>
                        <div class="login_label">
                            <%=dataLang["BOX_PASSWORD"].ValueLang%></div>
                        <div>
                            <input type="password" name="password" value="" /></div>
                        <div class="login_label">
                            Go to...</div>
                        <div>
                            <%--<select name="goTo">
                                <option value="accounts/info"><%=dataLang["BOX_ACCINFO"].ValueLang%></option>
                                <option value="transactions/log"><%=dataLang["MENU_TRANSHISTORY"].ValueLang%></option>
                                <option value="accounts/profile/money_receiving_config"><%=dataLang["MENU_UPDATEPROFILE"].ValueLang%></option>
                            </select>--%>
                        </div>
                        <div>
                            <input type="submit" name="submit" value="Login" class="login_button"></div>
                        <%=dataContent["MAIN_REGLINK"].ValueLang%>
                        </form>
                    </div>
                    <div class="login_bottom">
                    </div>
                </div>
            </div>
            <%--<div class="frm-login-right right">
                <a href="#">
                    <div class="frm_login_right_top">
                    </div>
                </a>
                <%=dataContent["REG_TERM"].ValueLang%>
            </div>--%>
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
