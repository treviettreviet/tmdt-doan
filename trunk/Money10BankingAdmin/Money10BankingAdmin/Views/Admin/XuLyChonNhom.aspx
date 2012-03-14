<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.Permission>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	XuLyChonNhom
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>XuLyChonNhom</h2>

    <table>
        <tr>
            <th></th>
            <th>
                ID
            </th>
            <th>
                Insert
            </th>
            <th>
                Update
            </th>
            <th>
                Delete
            </th>
            <th>
                TableName
            </th>
            <th>
                GroupID
            </th>
            <th>
                Status
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
                <%: item.Insert %>
            </td>
            <td>
                <%: item.Update %>
            </td>
            <td>
                <%: item.Delete %>
            </td>
            <td>
                <%: item.TableName %>
            </td>
            <td>
                <%: item.GroupID %>
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

