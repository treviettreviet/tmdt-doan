<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
                        <form action="XuLyChuyenTien" id="form_login" accept-charset="utf-8" method="post">

                        <div class="header">
                            Đăng Nhập Tài Khoản Thẻ</div>
                        <div class="login_label">
                            &nbsp;Số Tài Khoản (Số Thẻ)</div>
                        <div>
                            <input type="text" name="cardno" value="" /></div>
                        <div class="login_label">
                            Mật khẩu(Số Pin)</div>
                        <div>
                            <input type="password" name="password" value="" /></div>                       
                        <div>
                            <input type="submit" name="submit" value="Đăng Nhập" class="login_button"></div>
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
                    <b style="padding-top: 5px;">Khi là thành viên của Bảo Kim, bạn được hưởng các tiện
                        ích:</b>
                    <div class="baokim_tienich">
                        <ul>
                            <li>Mua hàng được tích lũy <a href="#"
                                class="c006699">tiền thưởng</a></li>
                            <li><a href=#" class="c006699">
                                Kiếm tiền</a> tại nhà với Bảo Kim</li>
                            <li><a href="#"
                                class="c006699">Nạp thẻ điện thoại</a> tại nhà được chiết khấu ...<a href="#"
                                    class="c006699"> xem thêm &gt;&gt;</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
