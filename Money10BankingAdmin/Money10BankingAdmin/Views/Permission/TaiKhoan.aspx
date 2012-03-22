<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.TaiKhoan>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	TaiKhoan
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>TaiKhoan</h2>

    <table>
        <tr>
            <th></th>
            <th>
                MaTaiKhoan
            </th>
            <th>
                SoTaiKhoan
            </th>
            <th>
                MaLoaiTaiKhoan
            </th>
            <th>
                Email
            </th>
            <th>
                MatKhau
            </th>
            <th>
                MatKhauGiaoDich
            </th>
            <th>
                TinhTrang
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.MaTaiKhoan }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.MaTaiKhoan })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.MaTaiKhoan })%>
            </td>
            <td>
                <%: item.MaTaiKhoan %>
            </td>
            <td>
                <%: item.SoTaiKhoan %>
            </td>
            <td>
                <%: item.MaLoaiTaiKhoan %>
            </td>
            <td>
                <%: item.Email %>
            </td>
            <td>
                <%: item.MatKhau %>
            </td>
            <td>
                <%: item.MatKhauGiaoDich %>
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

