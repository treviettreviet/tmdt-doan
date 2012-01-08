<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChuyenKhoan.aspx.cs" Inherits="WebNganHang.ChuyenKhoan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="stylesheet" href="css/Style.css" type="text/css" media="screen, projection" />
    <title></title>
</head>
<body>
    
    <div class="grid_4">
   			        <form id="contactForm" runat="server">
        			<h2> <span class="orange">Chuyển Tiền&nbsp;
                        <asp:Label ID="lbluser" runat="server"></asp:Label>
                        </span></h2>
					<div class="formContent">

       
						<label for="name">Số tiền chuyển:</label>					
						<asp:TextBox ID="txtSoTien" runat="server" Width="216px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtSoTien" ErrorMessage="(*)"></asp:RequiredFieldValidator>
        &nbsp;<label for="email">Số Tài Khoản Gửi:</label>
						<asp:TextBox ID="txtTaiKhoan" runat="server" Width="216px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtTaiKhoan" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                &nbsp;<label for="email">Số Tài Khoản Nhận:</label>
						<asp:TextBox ID="txtTheNhan" runat="server" Width="216px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtTheNhan" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                &nbsp;<label for="email">Mã Bảo Vệ:</label>
						<asp:TextBox ID="txtMaBV" runat="server" Width="216px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtMaBV" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                &nbsp;<label for="email">So pin:</label>
						<asp:TextBox ID="txtSoPin" runat="server" Width="216px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtSoPin" ErrorMessage="(*)"></asp:RequiredFieldValidator>
        &nbsp;	
							<label class="optional">Ghi chú:</label>
												  
                            <textarea id="txtGhiChu"  name="mesage" ></textarea><br />
&nbsp;<asp:Button ID="Button1" runat="server" Text="Đồng ý" CssClass="submit" onclick="Button1_Click" 
                            />
                         <asp:Button ID="Button2" runat="server" Text="Hủy" CssClass="submit" 
                             />
                        
				  </div>
			        </form>
   		</div>
   
</body>
</html>
