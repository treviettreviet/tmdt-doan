<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.Group>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Group
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Group</h2>

    <table>
        <tr>
            <th></th>
            <th>
                GroupID
            </th>
            <th>
                GroupName
            </th>
            <th>
                Status
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.GroupID }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.GroupID })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.GroupID })%>
            </td>
            <td>
                <%: item.GroupID %>
            </td>
            <td>
                <%: item.GroupName %>
            </td>
            <td>
                <%: item.Status %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

