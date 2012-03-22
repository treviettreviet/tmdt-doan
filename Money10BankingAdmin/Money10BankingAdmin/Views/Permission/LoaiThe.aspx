<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.LoaiThe>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	LoaiThe
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>LoaiThe</h2>

    <table>
        <tr>
            <th></th>
            <th>
                MaLoaiThe
            </th>
            <th>
                TenLoaiThe
            </th>
            <th>
                TinhTrang
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.MaLoaiThe }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.MaLoaiThe })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.MaLoaiThe })%>
            </td>
            <td>
                <%: item.MaLoaiThe %>
            </td>
            <td>
                <%: item.TenLoaiThe %>
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

