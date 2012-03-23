<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script language="javascript" type="text/javascript">
        function checkValid() {
            var pass = document.forms.form_login.password.value;
            if (pass == "") {
                alert("Chưa nhập Số Pin. Vui lòng nhập Số Pin.");
                //document.forms.form_login.password.forcus();
                return false;
            }
            return true;
        }
    </script>
    <div id="Main">
    <%
        Money10Banking.Models.Language dataLang = new Money10Banking.Models.Language();
        if (Session["Language"] != null && Session["Content"] != null)
            dataLang = (Money10Banking.Models.Language)Session["Language"];

    %>
        <!-- Body -->
        <div class="home-form-login">
            <div class="frm-login-left left" style="padding-bottom: 20px;">
                <div class="login-form">
                    <div class="login_header"></div>
                    <div class="login_content">
                     <%
                        string div = Request.QueryString["div"];
                        string error = Request.QueryString["error"];
                        if (div != null && error != null)
                        {
                    %>
                            <div class="<%=Html.Encode(div) %>"><%=Html.Encode(error) %></div>        
                    <%                    
                        }
                    %>
                        <form onsubmit="return checkValid();" name="form_login" action="/Public/XuLyChuyenTien" id="form_login" accept-charset="utf-8" method="post">

                        <div class="header">
                            <%=dataLang["TITLE_LOGIN"].ValueLang%></div>
                        <div class="login_label">
                            &nbsp;<%=dataLang["BOX_CARDNUM"].ValueLang%></div>
                        <div>
                        <%
                            Money10Banking.Models.The th = (Money10Banking.Models.The)Session["The"];
                            if (th != null)
                            {
                        %>
                                <input type="text" name="cardno" value="<%=th.SoThe%>" readonly="readonly" /></div>
                        <%        
                            }
                            else
                            {
                        %>
                                <input type="text" name="cardno" value="" /></div>
                        <%        
                            }
                        %>
                            
                        <div class="login_label">
                            <%=dataLang["BOX_PASSWORD"].ValueLang%>(Pin)</div>
                        <div>
                            <input type="password" name="password" value="" /></div>                       
                        <div>
                            <input type="submit" name="submit" value="Đăng Nhập" class="login_button" /></div>
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
