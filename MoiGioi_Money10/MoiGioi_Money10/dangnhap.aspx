<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="MoiGioi_Money10.dangnhap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>

        <br />

        <asp:TextBox ID="txtpass" runat="server" Height="22px" TextMode="Password"></asp:TextBox>
    
        <asp:Button ID="btnDangNhap" runat="server" onclick="btnDangNhap_Click" 
            Text="Đăng Nhập" />
        <br />
        <asp:TextBox ID="txtTongTien" runat="server" Height="22px"></asp:TextBox>
        <br />
        <asp:Label ID="lblSoDu" runat="server"></asp:Label>
        &nbsp;<asp:Label ID="Label1" runat="server" Text="So Du"></asp:Label>
        <br />
        <asp:Label ID="lblThongBao" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
