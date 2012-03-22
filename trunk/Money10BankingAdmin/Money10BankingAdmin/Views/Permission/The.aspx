<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.The>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	The
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>The</h2>

    <table>
        <tr>
            <th></th>
            <th>
                MaThe
            </th>
            <th>
                MaTaiKhoan
            </th>
            <th>
                MaLoaiThe
            </th>
            <th>
                SoThe
            </th>
            <th>
                SoPin
            </th>
            <th>
                SoBaoMat
            </th>
            <th>
                SoDu
            </th>
            <th>
                NgayMoThe
            </th>
            <th>
                NgayHetHan
            </th>
            <th>
                TinhTrang
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.MaThe }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.MaThe })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.MaThe })%>
            </td>
            <td>
                <%: item.MaThe %>
            </td>
            <td>
                <%: item.MaTaiKhoan %>
            </td>
            <td>
                <%: item.MaLoaiThe %>
            </td>
            <td>
                <%: item.SoThe %>
            </td>
            <td>
                <%: item.SoPin %>
            </td>
            <td>
                <%: item.SoBaoMat %>
            </td>
            <td>
                <%: String.Format("{0:F}", item.SoDu) %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.NgayMoThe) %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.NgayHetHan) %>
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

