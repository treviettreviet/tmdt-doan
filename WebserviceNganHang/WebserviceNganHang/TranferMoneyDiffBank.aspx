<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TranferMoneyDiffBank.aspx.cs" Inherits="WebserviceNganHang.TranferMoneyDiffBank" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table cellspacing="0" cellpadding="4" frame="box"  rules="none" style="border-collapse: collapse;">
            <tr>
	            <td class="style2" style="border-right: 2px solid white;" colspan="2"><strong>
                    Transfer Money Difference Bank</strong></td>
            </tr>
            <tr>
            <td class="frmText" style="color: #000000; font-weight: normal;">IdBankLinking:</td>
            <td>
                <asp:TextBox ID="txtIdBankLinking" runat="server" Text="1"></asp:TextBox>
                </td>
            </tr>
                        
            <tr>
            <td class="frmText" style="color: #000000; font-weight: normal;">CardIdSend:</td>
            <td >
                <asp:TextBox ID="txtCardIDSend" runat="server">340429813757143</asp:TextBox>
                </td>
            </tr>
                        
            <tr>
            <td class="frmText" style="color: #000000; font-weight: normal;">CardIdReceive:</td>
            <td class="style1">
                <asp:TextBox ID="txtCardIDReceive" runat="server">5119358602641937</asp:TextBox>
                </td>
            </tr>
                        
            <tr>
            <td class="frmText" style="color: #000000; font-weight: normal;">AmountMoney:</td>
            <td class="style1">
                <asp:TextBox ID="txtAmount" runat="server">100000</asp:TextBox>
                </td>
            </tr>
                        
            <tr>
            <td class="frmText" style="color: #000000; font-weight: normal;">SendSecuNum:</td>
            <td class="style1">
                <asp:TextBox ID="txtSendSecureNum" runat="server">1424E</asp:TextBox>
                </td>
            </tr>
                        
            <tr>
                <td></td>
                <td align="right" class="style1"> 
                    <asp:Button ID="Transfer" runat="server" onclick="Transfer_Click" 
                        Text="Transfer" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
