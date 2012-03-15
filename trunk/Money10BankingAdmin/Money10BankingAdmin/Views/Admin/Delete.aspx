<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Money10BankingAdmin.Models.Permission>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Delete</h2>
    <h3>Are you sure you want to delete this?</h3>
    <% using (Html.BeginForm("XuLyDelete", "Admin"))
       { %>
    <fieldset>
        <div class="display-field">ID: <%: Model.ID %></div>
        
        <div class="display-field">Insert: <%: Model.Insert %></div>
        
        <div class="display-field">Update: <%: Model.Update %></div>
        
        <div class="display-field">Delete: <%: Model.Delete %></div>
        
        <div class="display-field">TableName: <%: Model.TableName %></div>
        
        <div class="display-field">GroupID: <%: Model.GroupID %></div>
        
        <div class="display-field">Status: <%: Model.Status %></div>
    </fieldset>
    
        <p>
		    <input type="submit" value="Delete" /> |
		    <%: Html.ActionLink("Back to List", "XuLyChonNhom") %>
            <input id="hidden" name="hidden" type="hidden" value="<%: Model.ID %>" />
        </p>
    <% } %>

</asp:Content>

