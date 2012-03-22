<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.PhiGiaoDich>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	PhiGiaoDich
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>PhiGiaoDich</h2>

    <table>
        <tr>
            <th></th>
            <th>
                MaPhiGiaoDich
            </th>
            <th>
                MaLoaiGiaoDich
            </th>
            <th>
                Phi
            </th>
            <th>
                TinhTrang
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.MaPhiGiaoDich }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.MaPhiGiaoDich })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.MaPhiGiaoDich })%>
            </td>
            <td>
                <%: item.MaPhiGiaoDich %>
            </td>
            <td>
                <%: item.MaLoaiGiaoDich %>
            </td>
            <td>
                <%: String.Format("{0:F}", item.Phi) %>
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

