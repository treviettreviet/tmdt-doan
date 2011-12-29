<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WSWorkFlow.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width:50%;">
            <tr>
                <td colspan="2" style="text-align: center; font-weight: 700; font-size: medium">
                    ĐĂNG NHẬP</td>
            </tr>
            <tr>
                <td>
                    Bank ID</td>
                <td>
                    <asp:TextBox ID="txtBankID" runat="server" Text="lenhuynh3003@gmail.com"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Password</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Text="123456"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
