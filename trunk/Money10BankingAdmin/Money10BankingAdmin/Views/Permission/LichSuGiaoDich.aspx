<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.LichSuGiaoDich>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	LichSuGiaoDich
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>LichSuGiaoDich</h2>

    <table>
        <tr>
            <th></th>
            <th>
                MaLichSuGiaoDich
            </th>
            <th>
                MaThe
            </th>
            <th>
                MaLoaiGiaoDich
            </th>
            <th>
                SoTheNhan
            </th>
            <th>
                NgayGiaoDich
            </th>
            <th>
                SoTienGiaoDich
            </th>
            <th>
                TinhTrang
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.MaLichSuGiaoDich }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.MaLichSuGiaoDich })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.MaLichSuGiaoDich })%>
            </td>
            <td>
                <%: item.MaLichSuGiaoDich %>
            </td>
            <td>
                <%: item.MaThe %>
            </td>
            <td>
                <%: item.MaLoaiGiaoDich %>
            </td>
            <td>
                <%: item.SoTheNhan %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.NgayGiaoDich) %>
            </td>
            <td>
                <%: String.Format("{0:F}", item.SoTienGiaoDich) %>
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

