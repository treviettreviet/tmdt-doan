<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.LogAction>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	LogAction
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>LogAction</h2>

    <table>
        <tr>
            <th></th>
            <th>
                Id
            </th>
            <th>
                Email
            </th>
            <th>
                ThoiGian
            </th>
            <th>
                BangLienQuan
            </th>
            <th>
                ThaoTac
            </th>
            <th>
                DuLieuCu
            </th>
            <th>
                DuLieuMoi
            </th>
            <th>
                TinhTrang
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.Id })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.Id })%>
            </td>
            <td>
                <%: item.Id %>
            </td>
            <td>
                <%: item.Email %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.ThoiGian) %>
            </td>
            <td>
                <%: item.BangLienQuan %>
            </td>
            <td>
                <%: item.ThaoTac %>
            </td>
            <td>
                <%: item.DuLieuCu %>
            </td>
            <td>
                <%: item.DuLieuMoi %>
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

