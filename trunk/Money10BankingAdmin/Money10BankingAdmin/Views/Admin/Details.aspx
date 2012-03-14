<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Money10BankingAdmin.Models.Permission>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Thông tin chi tiết tài khoản</h2>

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

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.ID }) %> |
        <%: Html.ActionLink("Back to List", "/XuLyChonNhom")%>
    </p>

</asp:Content>

