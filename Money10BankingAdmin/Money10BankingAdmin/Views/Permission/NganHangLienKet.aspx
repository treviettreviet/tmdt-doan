<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.NganHangLienKet>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NganHangLienKet
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>NganHangLienKet</h2>

    <table>
        <tr>
            <th></th>
            <th>
                MaNganHangLienKet
            </th>
            <th>
                TenNgangHangLienKet
            </th>
            <th>
                TaiKhoanNgangHangLienKet
            </th>
            <th>
                WebserviceChuyenKhoanCungNganHang
            </th>
            <th>
                WebserviceChuyenKhoanKhacNganHang
            </th>
            <th>
                GhiChu
            </th>
            <th>
                TinhTrang
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.MaNganHangLienKet }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.MaNganHangLienKet })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.MaNganHangLienKet })%>
            </td>
            <td>
                <%: item.MaNganHangLienKet %>
            </td>
            <td>
                <%: item.TenNgangHangLienKet %>
            </td>
            <td>
                <%: item.TaiKhoanNgangHangLienKet %>
            </td>
            <td>
                <%: item.WebserviceChuyenKhoanCungNganHang %>
            </td>
            <td>
                <%: item.WebserviceChuyenKhoanKhacNganHang %>
            </td>
            <td>
                <%: item.GhiChu %>
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

