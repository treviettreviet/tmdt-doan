<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="WebNganHang.DangNhap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="stylesheet" href="css/Style.css" type="text/css" media="screen, projection" />
    <title>Đăng Nhập</title>
</head>
<body id="login">
<div id="mx_loginbox">
    <form id="form1" runat="server" >
            <div class="sectionHeader">Đăng nhập </div>
            <div class="sectionBody">

                <label>Email </label>
                <asp:TextBox runat="server" ID="txtUser" TabIndex="1" CssClass="text"></asp:TextBox>                

                <label>Mật Khẩu </label>
                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="text" TabIndex="2"></asp:TextBox>                

                <p class="caption"></p>

                <div>
                    <table>
                        <tr>
                            <td valign="bottom">
                                <asp:CheckBox runat="server" ID="chkRememberMe" TabIndex="3" 
                                    Checked="false" Text="Ghi Nhớ" TextAlign="Left" /></td>                            
                        </tr>
                    </table>
                </div>     
                                                           
                
                <asp:Button runat="server" ID="cmdLogin" Text="Login" 
                    onclick="cmdLogin_Click"  />
                <!-- anything to output before the login box via a plugin ... like the forgot password link? -->
                <div id="onManagerLoginFormRender"><a id="ForgotManagerPassword-show_form" href="#">Quên mật khẩu</a></div>
            </div>
    </form>
    </div>
</body>
</html>


