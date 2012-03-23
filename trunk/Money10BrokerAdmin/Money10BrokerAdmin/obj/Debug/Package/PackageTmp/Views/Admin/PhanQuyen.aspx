<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	PhanQuyen
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

  <h2>Phân Quyền</h2>
    <div>
    <strong>Chọn nhóm</strong>
        <select id="group">
            <option>---[Group]---</option>
            <option>Super Mod</option>
            <option>Mod</option>
        </select><br />
        <strong>Danh sách các bảng</strong>
        <table border="1">
            <tr>
                <td>
                    STT
                </td>
                <td>
                    Tên Bảng
                </td>
                <td>
                   Insert
                </td>
                <td>
                   Update
                </td>
                <td>
                   Delete
                </td>
            </tr>
            <tr>
                <td>
                    1
                </td>
                <td>
                    Admin
                </td>
                <td>
                    <input id="Checkbox1" type="checkbox" />
                </td>
                <td>
                    <input id="Checkbox2" type="checkbox" />
                </td>
                <td>
                    <input id="Checkbox3" type="checkbox" />
                </td>
            </tr>
            <tr>
                <td>
                    2
                </td>
                <td>
                    Group
                </td>
                <td>
                    <input id="Checkbox4" type="checkbox" />
                </td>
                <td>
                    <input id="Checkbox5" type="checkbox" />
                </td>
                <td>
                    <input id="Checkbox6" type="checkbox" />
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
