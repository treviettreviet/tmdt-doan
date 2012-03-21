<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Money10BrokerAdmin.Models.Admin>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	UpdateUser
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <% using (Html.BeginForm("XuLyUpdateUser","Admin")) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend><h3>Cập Nhật Thông Tin Tài Khoản</h3></legend>
            <br />
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ID) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ID, new Dictionary<string, object>() { { "readonly", "true" } })%>
                <%: Html.ValidationMessageFor(model => model.ID) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Email) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Email) %>
                <%: Html.ValidationMessageFor(model => model.Email) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Password) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Password, new Dictionary<string, object>() { { "readonly", "true" } }) %>
                <%: Html.ValidationMessageFor(model => model.Password) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Name) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Name) %>
                <%: Html.ValidationMessageFor(model => model.Name) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.GroupID) %>
            </div>

            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Group.GroupName, new Dictionary<string, object>() { { "readonly", "true" } })%>
                <%: Html.ValidationMessageFor(model => model.Group.GroupName)%>
            </div>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.Status) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Status, new Dictionary<string, object>() { { "readonly", "true" } })%>
                <%: Html.ValidationMessageFor(model => model.Status) %>
            </div>

            <%--<div class="editor-label">
                <%: Html.LabelFor(model => model.ID) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ID,new { name = "ID" })%>
                <%: Html.ValidationMessageFor(model => model.ID) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Email) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Email, new { name = "Email" })%>
                <%: Html.ValidationMessageFor(model => model.Email) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Password) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Password) %>
                <%: Html.ValidationMessageFor(model => model.Password) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Name) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Name, new { name = "name" })%>
                <%: Html.ValidationMessageFor(model => model.Name) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.GroupID) %>
            </div>

            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Group.GroupName, new { name = "group" })%>
                <%: Html.ValidationMessageFor(model => model.Group.GroupName)%>
            </div>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.Status) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Status, new { name = "status" })%>
                <%: Html.ValidationMessageFor(model => model.Status) %>
            </div>--%>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>
