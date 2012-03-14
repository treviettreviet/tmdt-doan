<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Phân quyền cho Super Mod & Mod | Admin Banking
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script language="javascript" type="text/javascript">
    function selectOption() {
        var selected = document.forms.frm.group.value;
        if (selected != "-1") {
            document.forms.frm.submit();
        }
    }
</script>

    <h2>Phân Quyền</h2><br />
    <div>
    <form method="post" id="frm" name="frm" action="/Admin/XuLyChonNhom">
        <b>Chọn nhóm</b>
        <select name="group" onchange="return selectOption();" style="width:120px">
            <option value="-1">------[Group]------</option>
            <option value="2">Super Mod</option>
            <option value="3">Mod</option>
        </select>
    </form>
        <%--<strong>Danh sách các bảng</strong>
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
                <td>
                   <b>Group: <i></i></b>
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
        </table>--%>
    </div>
</asp:Content>
