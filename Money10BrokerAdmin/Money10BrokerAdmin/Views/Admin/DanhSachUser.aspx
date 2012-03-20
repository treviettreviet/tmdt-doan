<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BrokerAdmin.Models.Admin>>" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2 align=center>Danh Sách User</h2>

    <table>
        <tr>
            <th></th>
            <th>
                ID
            </th>
            <th>
                Email
            </th>
            <th>
                Password
            </th>
            <th>
                Name
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
                <%: Html.ActionLink("Edit", "UpdateUser/", new { id = item.ID })%> |
                <%: Html.ActionLink("Details", "DetailUser/", new { id=item.ID })%> |
                <%: Html.ActionLink("Delete", "DeleteUser/", new { id=item.ID })%>
            </td>
            <td>
                <%: item.ID %>
            </td>
            <td>
                <%: item.Email %>
            </td>
            <td>
                <%: item.Password %>
            </td>
            <td>
                <%: item.Name %>
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

   

</asp:Content>