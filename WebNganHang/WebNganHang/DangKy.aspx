<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="WebNganHang.DangKy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="stylesheet" href="css/Style.css" type="text/css" media="screen, projection" />
    <title>Dang Ky</title>
</head>
<body id="login">
<div id="mx_loginbox">
    <form id="form1" runat="server">
    
    <table cellpadding="5" cellspacing="3" class="style2" style="margin-top: 5px">
    
    <tr>
        <td colspan="2" class="sectionHeader">
            Đăng Ký</td>
    </tr>
    <tr>
        <td colspan="2" 
            
            style="background-repeat: no-repeat; font-weight: bold; font-style: italic; text-transform: capitalize; color: #FF0000; vertical-align: middle; text-align: center;">
            <asp:Label ID="lbInform" runat="server" 
                Text="chúc mừng bạn đã đăng ký thành công" Visible="False"></asp:Label>
        </td>
    </tr>
     <tr>
       
        <td colspan="2" >Thông Tin Tai Khoản</td>
    
    </tr>
    <tr>
        <td width="30%">
            Email</td>
        <td>
            <asp:TextBox ID="txtUserName" runat="server" Width="216px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtPassword" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtUserName" ErrorMessage="Email is invalid" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:Label ID="lblemail" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td width="20%">
            Password</td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" Width="216px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtPassword" ErrorMessage="(*)"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="20%">
            Confirm Password</td>
        <td>
            <asp:TextBox ID="txtConfPwd" runat="server" Width="216px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtConfPwd" ErrorMessage="(*)"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtPassword" ControlToValidate="txtConfPwd" 
                ErrorMessage="Bạn cần nhập Password và Confirm Password phải giống nhau"></asp:CompareValidator>
        </td>
    </tr>
     <tr>
       
        <td colspan="2" >Thông Tin Cá Nhân</td>
    
    </tr>
    <tr>
        <td width="20%">
           Họ Tên</td>
        <td>
            <asp:TextBox ID="txtHoTen" runat="server" Width="216px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtHoTen" ErrorMessage="(*)"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="20%">
            Ngày Sinh</td>
        <td>
            <asp:TextBox ID="txtNgaySinh" runat="server" Width="216px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td width="20%">
            Giới Tính</td>
        <td>
            <asp:RadioButton ID="rdNam" runat="server" Text="Nam" style="width:50%;" /><asp:RadioButton ID="rdNu" runat="server" Text="Nữ" style="width:50%;" />
        </td>
    </tr>
    <tr>
        <td width="20%">
           CMDN/Hộ Chiếu</td>
        <td>
            <asp:TextBox ID="txtCMND" runat="server" Width="216px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtCMND" ErrorMessage="(*)"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="20%">
            Số Nhà</td>
        <td>
            <asp:TextBox ID="txtSoNha" runat="server" Width="216px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td width="20%">
            Đường</td>
        <td>
            <asp:TextBox ID="txtDuong" runat="server" Width="216px"></asp:TextBox>
        </td>
    </tr>
    
     <tr>
        <td width="20%">
            Phường/Xã</td>
        <td>
            <asp:TextBox ID="txtPhuongXa" runat="server" Width="216px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td width="20%">
            Quận/Huyện</td>
        <td>
            <asp:TextBox ID="txtQuanHuyen" runat="server" Width="216px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td width="20%">
            Tỉnh/Thành Phố</td>
        <td>
            <asp:TextBox ID="txtThanhPho" runat="server" Width="216px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td width="20%">
            Chứng Thực</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td width="20%">
            &nbsp;</td>
        <td>
            <asp:Button ID="btnSubMit" runat="server" Text="Submit" Width="84px" onclick="Button1_Click" 
                 />
        </td>
    </tr>
</table>
   
    </form>
    </div>
</body>
</html>

