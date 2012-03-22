<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.DiaChi>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	DiaChi
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>DiaChi</h2>

    <table>
        <tr>
            <th></th>
            <th>
                MaDiaChi
            </th>
            <th>
                MaTaiKhoan
            </th>
            <th>
                SoNha
            </th>
            <th>
                Duong
            </th>
            <th>
                PhuongXa
            </th>
            <th>
                QuanHuyen
            </th>
            <th>
                TinhThanh
            </th>
            <th>
                TinhTrang
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.MaDiaChi }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.MaDiaChi })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.MaDiaChi })%>
            </td>
            <td>
                <%: item.MaDiaChi %>
            </td>
            <td>
                <%: item.MaTaiKhoan %>
            </td>
            <td>
                <%: item.SoNha %>
            </td>
            <td>
                <%: item.Duong %>
            </td>
            <td>
                <%: item.PhuongXa %>
            </td>
            <td>
                <%: item.QuanHuyen %>
            </td>
            <td>
                <%: item.TinhThanh %>
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

