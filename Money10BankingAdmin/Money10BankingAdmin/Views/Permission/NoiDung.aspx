<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.NoiDung>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NoiDung
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>NoiDung</h2>

    <table>
        <tr>
            <th></th>
            <th>
                MaNoiDung
            </th>
            <th>
                BienNoiDung
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
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.MaNoiDung }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.MaNoiDung })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.MaNoiDung })%>
            </td>
            <td>
                <%: item.MaNoiDung %>
            </td>
            <td>
                <%: item.BienNoiDung %>
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
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

