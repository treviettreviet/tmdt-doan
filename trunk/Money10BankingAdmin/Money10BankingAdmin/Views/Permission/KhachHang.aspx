<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.KhachHang>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	KhachHang
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>KhachHang</h2>

    <table>
        <tr>
            <th></th>
            <th>
                MaKhachHang
            </th>
            <th>
                MaTaiKhoan
            </th>
            <th>
                HoTen
            </th>
            <th>
                NgaySinh
            </th>
            <th>
                GioiTinh
            </th>
            <th>
                CMNDHoChieu
            </th>
            <th>
                TinhTrang
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.MaKhachHang }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.MaKhachHang })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.MaKhachHang })%>
            </td>
            <td>
                <%: item.MaKhachHang %>
            </td>
            <td>
                <%: item.MaTaiKhoan %>
            </td>
            <td>
                <%: item.HoTen %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.NgaySinh) %>
            </td>
            <td>
                <%: item.GioiTinh %>
            </td>
            <td>
                <%: item.CMNDHoChieu %>
            </td>
            <td>
                <%: item.TinhTrang %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

