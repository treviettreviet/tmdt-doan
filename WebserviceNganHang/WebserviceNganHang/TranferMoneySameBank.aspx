<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TranferMoneySameBank.aspx.cs" Inherits="WebserviceNganHang.TranferMoneySameBank" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" action="TranferMoneySameBank.aspx">
    <div>
        <table border="1">
            <tr>
                <td class="style1" colspan="2">
                    <strong>Tranfer Money Same Banking</strong></td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    CardNoSend:</td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="CardNoSend" runat="server" Width="300px" Text="5119358602641937"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    CardNoReceive:</td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="CardNoReceive" runat="server" Width="300px" Text="340429813757143"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    Amount:</td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="Amount" runat="server" Width="300px" Text="400000"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    SecurityNumberCardNoSend:</td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="SecurityNumberCardNoSend" runat="server" Width="300px" Text="5C7A3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                    </td>
                
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
