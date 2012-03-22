<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.ThamSo>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	ThamSo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>ThamSo</h2>

    <table>
        <tr>
            <th></th>
            <th>
                MaThamSo
            </th>
            <th>
                TenThamSo
            </th>
            <th>
                Kieu
            </th>
            <th>
                GiaTri
            </th>
            <th>
                GhiChu
            </th>
            <th>
                TinhTrang
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.MaThamSo }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.MaThamSo })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.MaThamSo })%>
            </td>
            <td>
                <%: item.MaThamSo %>
            </td>
            <td>
                <%: item.TenThamSo %>
            </td>
            <td>
                <%: item.Kieu %>
            </td>
            <td>
                <%: item.GiaTri %>
            </td>
            <td>
                <%: item.GhiChu %>
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

