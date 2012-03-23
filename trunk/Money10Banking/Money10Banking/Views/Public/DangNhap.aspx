<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script language="javascript" type="text/javascript">
        function checkVL() {
            var email = document.forms.frmLog.email.value;
            var pass = document.forms.frmLog.password.value;
            if (email == "") {
                alert("Chưa nhập Email. Vui lòng nhập vào Email để đăng nhập.");
                return false;
            }
            if (pass == "") {
                alert("Chưa nhập Mật Khẩu. Vui lòng nhập vào Mật Khẩu để đăng nhập.");
                return false;
            }
            return true;
        }
        </script>

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
                        <form action="/Public/XuLyDangNhap" id="form_login" accept-charset="utf-8" method="post" name="frmLog" onsubmit="return checkVL()">
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
                        <div>
                            <input type="submit" name="submit" value="Đăng Nhập" class="login_button" /></div>
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
