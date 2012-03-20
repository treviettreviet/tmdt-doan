<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Money10BankingAdmin.Models.The>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	DanhSachThe
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2 align=center>Danh Sách Thẻ</h2>

    <table>
        <tr>
            <th></th>
            <th>
                ID
            </th>
            <th>
                Số Thẻ
            </th>
            <th>
                Mã Pin</th>
                 <th>
                Số Dư</th>
            <th>
                Mã Bảo Mật</th>
            <th>
                Ngày Mở Thẻ</th>
                 <th>
                Ngày Hết Hạn</th>
            <th>
                Status
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "UpdateUser/", new { id = item.MaThe })%> |
                <%: Html.ActionLink("Details", "Details/", new { id=item.MaThe })%> |
                <%: Html.ActionLink("Delete", "DeleteUser/", new { id=item.MaThe })%>
            </td>
            <td>
                <%: item.MaThe %>
            </td>
            <td>
                <%: item.SoThe %>
            </td>
             <td>
                <%: item.SoPin %>
            </td>
           
             <td>
                <%: item.SoDu %>
            </td>
            <td>
                <%: item.SoBaoMat %>
            </td>
            <td>
                <%: item.NgayMoThe %>
            </td>
            <td>
                <%: item.NgayHetHan %>
            </td>
            <td>
                <%: item.TinhTrang %>
            </td>
        </tr>
    
    <% } %>

    </table>

   

</asp:Content>

