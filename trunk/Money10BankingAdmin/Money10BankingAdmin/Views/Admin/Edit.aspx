<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Money10BankingAdmin.Models.Permission>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edit</h2>

    <% using (Html.BeginForm("XuLyEdit", "Admin")) {%>
        <%: Html.ValidationSummary(true) %>
        <fieldset>
            <div class="editor-field">
                <b>ID: </b><%: Html.TextBoxFor(model => model.ID, new Dictionary<string, object>() { { "readonly", "true" } })%>
                <%: Html.ValidationMessageFor(model => model.ID) %>
            </div>
            <div class="editor-field">
                <b>Insert: </b><%: Html.TextBoxFor(model => model.Insert) %>
                <%: Html.ValidationMessageFor(model => model.Insert) %>
            </div>
            <div class="editor-field">
                <b>Update: </b><%: Html.TextBoxFor(model => model.Update) %>
                <%: Html.ValidationMessageFor(model => model.Update) %>
            </div>
            <div class="editor-field">
                <b>Delete: </b><%: Html.TextBoxFor(model => model.Delete) %>
                <%: Html.ValidationMessageFor(model => model.Delete) %>
            </div>
            <div class="editor-field">
                <b>Table Name: </b><%: Html.TextBoxFor(model => model.TableName) %>
                <%: Html.ValidationMessageFor(model => model.TableName) %>
            </div>

            <div class="editor-field">
                <b>Group: </b><%: Html.DropDownList("groups")%>
                <%: Html.ValidationMessageFor(model => model.GroupID) %>
            </div>
            
            <div class="editor-field">
                <b>Status: </b><%: Html.TextBoxFor(model => model.Status) %>
                <%: Html.ValidationMessageFor(model => model.Status) %>
            </div>
            
            <p><input type="submit" value="Save" /></p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "XuLyChonNhom") %>
    </div>

</asp:Content>

