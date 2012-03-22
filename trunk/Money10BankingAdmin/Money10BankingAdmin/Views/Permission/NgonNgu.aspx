<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.NgonNgu>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NgonNgu
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>NgonNgu</h2>

    <table>
        <tr>
            <th></th>
            <th>
                MaNgonNgu
            </th>
            <th>
                BienNgonNgu
            </th>
            <th>
                TiengViet
            </th>
            <th>
                TiengAnh
            </th>
            <th>
                MoTa
            </th>
            <th>
                LinkTiengViet
            </th>
            <th>
                LinkTiengAnh
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.MaNgonNgu }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.MaNgonNgu })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.MaNgonNgu })%>
            </td>
            <td>
                <%: item.MaNgonNgu %>
            </td>
            <td>
                <%: item.BienNgonNgu %>
            </td>
            <td>
                <%: item.TiengViet %>
            </td>
            <td>
                <%: item.TiengAnh %>
            </td>
            <td>
                <%: item.MoTa %>
            </td>
            <td>
                <%: item.LinkTiengViet %>
            </td>
            <td>
                <%: item.LinkTiengAnh %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

