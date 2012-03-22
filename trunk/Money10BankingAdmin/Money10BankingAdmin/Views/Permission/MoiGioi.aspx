<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.MoiGioi>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	MoiGioi
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>MoiGioi</h2>

    <table>
        <tr>
            <th></th>
            <th>
                MaMoiGioi
            </th>
            <th>
                MaTaiKhoan
            </th>
            <th>
                TenCongTy
            </th>
            <th>
                DienThoaiCongTy
            </th>
            <th>
                SoGiayPhepKinhDoanh
            </th>
            <th>
                TinhTrang
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.MaMoiGioi }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.MaMoiGioi })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.MaMoiGioi })%>
            </td>
            <td>
                <%: item.MaMoiGioi %>
            </td>
            <td>
                <%: item.MaTaiKhoan %>
            </td>
            <td>
                <%: item.TenCongTy %>
            </td>
            <td>
                <%: item.DienThoaiCongTy %>
            </td>
            <td>
                <%: item.SoGiayPhepKinhDoanh %>
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

