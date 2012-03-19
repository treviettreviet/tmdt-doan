<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Main">
        <%--<div class="error-box">Thông tin đăng nhập không chính xác</div>--%>
        <div class="<%=Html.Encode(ViewData["div"]) %>"><%=Html.Encode(ViewData["error"]) %></div>
    <%
        Money10Banking.Models.Language dataLang = new Money10Banking.Models.Language();
        if (Session["Language"] != null && Session["Content"] != null)
            dataLang = (Money10Banking.Models.Language)Session["Language"];

    %>
        <!-- Body -->
        <div class="home-form-login">
            <div class="frm-login-left left" style="padding-bottom: 20px;">
                <div class="login-form">
                    <div class="login_header">
                    </div>
                    <div class="login_content">
                        <form action="/Public/XuLyChuyenTien" id="form_login" accept-charset="utf-8" method="post">

                        <div class="header">
                            <%=dataLang["TITLE_LOGIN"].ValueLang%></div>
                        <div class="login_label">
                            &nbsp;<%=dataLang["BOX_CARDNUM"].ValueLang%></div>
                        <div>
                            <input type="text" name="cardno" value="" /></div>
                        <div class="login_label">
                            <%=dataLang["BOX_PASSWORD"].ValueLang%>(Pin)</div>
                        <div>
                            <input type="password" name="password" value="" /></div>                       
                        <div>
                            <input type="submit" name="submit" value="Login" class="login_button"></div>
                        </form>
                    </div>
                    <div class="login_bottom">
                    </div>
                </div>
            </div>
            <div class="frm-login-right right">
                <a href="#">
                    <div class="frm_login_right_top">
                    </div>
                </a>
                <div class="frm_login_right_bottom">
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
