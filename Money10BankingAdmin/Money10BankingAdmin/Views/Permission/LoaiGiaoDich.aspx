<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.LoaiGiaoDich>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	LoaiGiaoDich
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>LoaiGiaoDich</h2>

    <table>
        <tr>
            <th></th>
            <th>
                MaLoaiGiaoDich
            </th>
            <th>
                TenLoaiGiaoDich
            </th>
            <th>
                TinhTrang
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.MaLoaiGiaoDich }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.MaLoaiGiaoDich })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.MaLoaiGiaoDich })%>
            </td>
            <td>
                <%: item.MaLoaiGiaoDich %>
            </td>
            <td>
                <%: item.TenLoaiGiaoDich %>
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

