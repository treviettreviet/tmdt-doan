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
    </div>
</asp:Content>
