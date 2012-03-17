<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Money10BankingAdmin.Models.TaiKhoan>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	TaoTK
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>TaoTK</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.MaTaiKhoan) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.MaTaiKhoan) %>
                <%: Html.ValidationMessageFor(model => model.MaTaiKhoan) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.SoTaiKhoan) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.SoTaiKhoan) %>
                <%: Html.ValidationMessageFor(model => model.SoTaiKhoan) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.MaLoaiTaiKhoan) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.MaLoaiTaiKhoan) %>
                <%: Html.ValidationMessageFor(model => model.MaLoaiTaiKhoan) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Email) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Email) %>
                <%: Html.ValidationMessageFor(model => model.Email) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.MatKhau) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.MatKhau) %>
                <%: Html.ValidationMessageFor(model => model.MatKhau) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.MatKhauGiaoDich) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.MatKhauGiaoDich) %>
                <%: Html.ValidationMessageFor(model => model.MatKhauGiaoDich) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.TinhTrang) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.TinhTrang) %>
                <%: Html.ValidationMessageFor(model => model.TinhTrang) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

