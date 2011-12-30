    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WSWorkFlow.WebForm1" %>

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <style type="text/css">
            .style1
            {
                width: 174px;
            }
        </style>
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
                                <td><input class="frmInput" type="text" size="50" name="sid"/></td>
                              </tr>
                        
                              <tr>
                                <td class="frmText" style="color: #000000; font-weight: normal;">CardIdSend:</td>
                                <td ><input class="frmInput" type="text" size="50" name="CardIdSend"/></td>
                              </tr>
                        
                              <tr>
                                <td class="frmText" style="color: #000000; font-weight: normal;">CardIdReceiv:</td>
                                <td class="style1"><input class="frmInput" type="text" size="50" name="CardIdReceiv"/></td>
                              </tr>
                        
                              <tr>
                                <td class="frmText" style="color: #000000; font-weight: normal;">AmountMoney:</td>
                                <td class="style1"><input class="frmInput" type="text" size="50" name="AmountMoney"/></td>
                              </tr>
                        
                              <tr>
                                <td class="frmText" style="color: #000000; font-weight: normal;">SendSecuNum:</td>
                                <td class="style1"><input class="frmInput" type="text" size="50" name="SendSecuNum"/></td>
                              </tr>
                        
                              <tr>
                                <td class="frmText" style="color: #000000; font-weight: normal;">ReceivSecuNum:</td>
                                <td class="style1"><input class="frmInput" type="text" size="50" name="ReceivSecuNum"/></td>
                              </tr>
                        
                            <tr>
                              <td></td>
                              <td align="right" class="style1"> <input type="submit" value="Accept" class="button"/></td>
                            </tr>
                            </table>
                      


        </div>
        </form>
    </body>
    </html>
