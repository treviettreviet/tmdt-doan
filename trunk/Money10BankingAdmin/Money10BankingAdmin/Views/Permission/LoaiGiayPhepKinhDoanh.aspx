<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.LoaiGiayPhepKinhDoanh>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	LoaiGiayPhepKinhDoanh
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>LoaiGiayPhepKinhDoanh</h2>

    <table>
        <tr>
            <th></th>
            <th>
                MaLoaiGiayPhepKinhDoanh
            </th>
            <th>
                TenLoaiGiayPhepKinhDoanh
            </th>
            <th>
                TinhTrang
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.MaLoaiGiayPhepKinhDoanh }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.MaLoaiGiayPhepKinhDoanh })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.MaLoaiGiayPhepKinhDoanh })%>
            </td>
            <td>
                <%: item.MaLoaiGiayPhepKinhDoanh %>
            </td>
            <td>
                <%: item.TenLoaiGiayPhepKinhDoanh %>
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

