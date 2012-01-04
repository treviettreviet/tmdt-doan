<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="MoiGioi_Money10.WebForm1" %><%@ Register src="TrangChu_NoiDung.ascx" tagname="TrangChu_NoiDung" tagprefix="uc1" %>
<%@ Register src="TrangChu_SlideShow.ascx" tagname="TrangChu_SlideShow" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc2:TrangChu_SlideShow ID="TrangChu_SlideShow1" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
<uc1:TrangChu_NoiDung ID="TrangChu_NoiDung1" runat="server" />
</form>
</asp:Content>
