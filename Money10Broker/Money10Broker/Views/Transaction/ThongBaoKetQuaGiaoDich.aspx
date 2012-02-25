<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Thông báo kết quả giao dịch
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="note-content-warning">
	    <p style="color:#ff6900;"><strong>Thông báo kết quả giao dịch:</strong></p>
        <%
            string message = "";
            if (ViewData["message"] != null)
            {
                message = ViewData["message"].ToString();     
	    %>
                <p><%=message %></p>
        <%       
            }
        %>
    </div>
</asp:Content>
