﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmTransfer.aspx.cs" Inherits="WSWorkFlow.frmTransfer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table cellspacing="0" cellpadding="4" frame="box"  rules="none" style="border-collapse: collapse;">
            <tr>
	            <td class="frmHeader" style="border-right: 2px solid white;">InPut</td>
	            <td class="style1">Giá Trị Input</td>
            </tr>
            <tr>
            <td class="frmText" style="color: #000000; font-weight: normal;">sid:</td>
            <td>
                <asp:TextBox ID="txtSID" runat="server"></asp:TextBox>
                </td>
            </tr>
                        
            <tr>
            <td class="frmText" style="color: #000000; font-weight: normal;">CardIdSend:</td>
            <td >
                <asp:TextBox ID="txtCardIDSend" runat="server">5119358602641937</asp:TextBox>
                </td>
            </tr>
                        
            <tr>
            <td class="frmText" style="color: #000000; font-weight: normal;">CardIdReceive:</td>
            <td class="style1">
                <asp:TextBox ID="txtCardIDReceive" runat="server">340426820759153</asp:TextBox>
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
                <asp:TextBox ID="txtSendSecureNum" runat="server">5C7A3</asp:TextBox>
                </td>
            </tr>
                        
            <tr>
            <td class="frmText" style="color: #000000; font-weight: normal;">ReceiveSecuNum:</td>
            <td class="style1">
                <asp:TextBox ID="txtReceiveSecureNum" runat="server">4E3CB</asp:TextBox>
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
