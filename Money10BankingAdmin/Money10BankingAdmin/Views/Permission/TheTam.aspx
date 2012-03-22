<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.TheTam>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	TheTam
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>TheTam</h2>

    <table>
        <tr>
            <th></th>
            <th>
                ID
            </th>
            <th>
                TenLoaiThe
            </th>
            <th>
                SoThe
            </th>
            <th>
                SoPin
            </th>
            <th>
                SoBaoMat
            </th>
            <th>
                NgayMoThe
            </th>
            <th>
                NgayHetHan
            </th>
            <th>
                MaTaiKhoan
            </th>
            <th>
                TinhTrang
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.ID }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.ID })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.ID })%>
            </td>
            <td>
                <%: item.ID %>
            </td>
            <td>
                <%: item.TenLoaiThe %>
            </td>
            <td>
                <%: item.SoThe %>
            </td>
            <td>
                <%: item.SoPin %>
            </td>
            <td>
                <%: item.SoBaoMat %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.NgayMoThe) %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.NgayHetHan) %>
            </td>
            <td>
                <%: item.MaTaiKhoan %>
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

