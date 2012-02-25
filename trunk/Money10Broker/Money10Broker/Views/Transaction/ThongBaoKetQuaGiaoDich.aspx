<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master"
    Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Thông báo kết quả giao dịch
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content">
        <div id="menu-nav-content">
            <div id="menu-nav-content-l"></div>
            <div id="menu-nav-content-r"></div>
            <div id="menu-nav-content-c">
                <div id="menu-nav-content-main">
                    <ul>
                        <li class="active" style="display: block"><a href="/Public/TongHop"><span>GIAO DỊCH</span></a></li>
                        <li class=" " style="display: block"><a href="/Account/ThongTinTaiKhoan"><span>TÀI KHOẢN</span></a></li>
                    </ul>
                </div>
                <div id="menu-nav-content-sub">
                    <ul>
                        <li class="" style="display: block"><a href="/Public/TongHop"><span>Tổng hợp</span></a></li>
                        <li class="" style="display: block"><a href="/Transaction/LichSuGiaoDich"><span>Lịch
                            sử giao dịch</span></a></li>
                        <li class="" style="display: block"><a href="/Transaction/RutTien"><span>Rút tiền</span></a></li>
                        <li class=" " style="display: block"><a href="/Transaction/ChuyenTien"><span>Chuyển
                            tiền</span></a></li>
                        <li class="active " style="display: block"><a href="/Transaction/ChuyenTienCungMoigioi">
                            <span>Chuyển tiền cùng môi giới</span></a></li>
                        <li class=" " style="display: block"><a href="/Transaction/ChuyenTienKhacMoigioi"><span>
                            Chuyển tiền khác môi giới</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="note-content-warning">
        <p style="color: #ff6900;">
            <strong>Thông báo kết quả giao dịch:</strong></p>
        <%
            string message = "";
            if (ViewData["message"] != null)
            {
                message = ViewData["message"].ToString();     
        %>
        <p>
            <%=message %></p>
        <%       
            }
        %>
    </div>
</asp:Content>
