<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Money10BankingAdmin.Models.Permission>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edit</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ID) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ID) %>
                <%: Html.ValidationMessageFor(model => model.ID) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Insert) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Insert) %>
                <%: Html.ValidationMessageFor(model => model.Insert) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Update) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Update) %>
                <%: Html.ValidationMessageFor(model => model.Update) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Delete) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Delete) %>
                <%: Html.ValidationMessageFor(model => model.Delete) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.TableName) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.TableName) %>
                <%: Html.ValidationMessageFor(model => model.TableName) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.GroupID) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.GroupID) %>
                <%: Html.ValidationMessageFor(model => model.GroupID) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Status) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Status) %>
                <%: Html.ValidationMessageFor(model => model.Status) %>
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

