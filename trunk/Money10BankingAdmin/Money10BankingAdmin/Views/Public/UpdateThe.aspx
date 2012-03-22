<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Money10BankingAdmin.Models.The>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	UpdateThe
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>UpdateThe</h2>

    <% using (Html.BeginForm("XuLyUpdateThe","Public")) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend><h3>Cập Nhật Thông Tin Tài Khoản</h3></legend>
            <br />
            <div class="editor-label">
                <%: Html.LabelFor(model => model.MaThe) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.MaThe, new Dictionary<string, object>() { { "readonly", "true" } })%>
                <%: Html.ValidationMessageFor(model => model.MaThe) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.MaTaiKhoan) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.MaTaiKhoan, new Dictionary<string, object>() { { "readonly", "true" } })%>
                <%: Html.ValidationMessageFor(model => model.MaTaiKhoan) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.MaLoaiThe) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.MaLoaiThe, new Dictionary<string, object>() { { "readonly", "true" } })%>
                <%: Html.ValidationMessageFor(model => model.MaLoaiThe) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.SoThe) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.SoThe, new Dictionary<string, object>() { { "readonly", "true" } }) %>
                <%: Html.ValidationMessageFor(model => model.SoThe) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.SoBaoMat) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.SoBaoMat)%>
                <%: Html.ValidationMessageFor(model => model.SoBaoMat)%>
            </div>
             <div class="editor-label">
                <%: Html.LabelFor(model => model.SoDu) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.SoDu)%>
                <%: Html.ValidationMessageFor(model => model.SoDu)%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.SoPin) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.SoPin)%>
                <%: Html.ValidationMessageFor(model => model.SoPin) %>
            </div>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.NgayMoThe) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.NgayMoThe)%>
                <%: Html.ValidationMessageFor(model => model.NgayMoThe) %>
            </div>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.NgayHetHan) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.NgayHetHan)%>
                <%: Html.ValidationMessageFor(model => model.NgayHetHan) %>
            </div>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.TinhTrang) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.TinhTrang)%>
                <%: Html.ValidationMessageFor(model => model.TinhTrang) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

