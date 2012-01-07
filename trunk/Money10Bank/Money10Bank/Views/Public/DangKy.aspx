<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="DKy" runat="server" visible="true">
    DAB kính chào quý khách<br />
    <br />
    Xin vui lòng điền đầy đủ thông tin bên dưới:
    <br /><br />
    Chúng tôi sẽ liên lạc với bạn để hoàn thành các thủ tục còn lại
    <asp:ValidationSummary
        ID="ValidationSummary1" runat="server" />
    <br />
    <asp:Label ID="LabelThongBao" runat="server" ForeColor="Blue"></asp:Label><br />
    <br />
    <table width="100%" border="1">
    <tr>
    <td colspan="2" align="center" style="background-color: #cccc66">
        <asp:Label ID="Label1" runat="server" Text="ĐĂNG KÝ THẺ" Font-Bold="True" ForeColor="Blue"></asp:Label></td>
    </tr>
        <tr>
            <td align="right" style="width: 180px; background-color: #66ffff">
            Họ và tên(*):
            </td>
            <td>
                <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidatorHoTen" runat="server" ErrorMessage="Bạn chưa nhập họ và tên." ControlToValidate="txtHoTen">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 180px; background-color: #66ffff">
                Số CMND (*):
            </td>
            <td>
                <asp:TextBox ID="txtCMND" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCMND" runat="server" ErrorMessage="Bạn chưa nhập số CMND" ControlToValidate="txtCMND">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorCMND" runat="server" ErrorMessage="Số CMND phải 9 số" ControlToValidate="txtCMND" ValidationExpression="\d{9}" Display="Dynamic">*</asp:RegularExpressionValidator>
            </td>
           
        </tr>
        <tr>
            <td align="right" style="width: 180px; background-color: #66ffff">
                Ngày sinh(*):
            </td>
            <td>
                <asp:TextBox ID="txtNgaySinh" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorNgaySinh" runat="server" ErrorMessage="Bạn chưa nhập ngày sinh." ControlToValidate="txtNgaySinh">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorNgaySinh" runat="server" ErrorMessage="Ngày sinh phải là:mm/dd/yyyy" ControlToValidate="txtNgaySinh" Display="Dynamic" ValidationExpression="(0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\d\d">*</asp:RegularExpressionValidator>
            </td>
            
        </tr>
        <tr>
            <td align="right" style="width: 180px; background-color: #66ffff">Địa chỉ (*):</td>
            <td>
                <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidatorDiaChi" runat="server" ErrorMessage="Bạn chưa nhập địa chỉ." ControlToValidate="txtDiaChi">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 180px; background-color: #66ffff">Số điện thoại:</td>
            <td>
                <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorSDT" runat="server" ErrorMessage="Số điện thoại không hợp lệ" ControlToValidate="txtSDT" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        
        <tr>
            <td align="right" style="width: 180px; background-color: #66ffff"> Email: </td>
            <td>  
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Email không hợp lệ" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
           </td>
        </tr>
        <tr>
            <td style="width: 180px"></td>
            <td>
                <asp:Button ID="btnGui" runat="server" Text="Gửi" OnClick="btnGui_Click" Width="88px" /></td>
        </tr>
    </table>
    </div>
    <div id="ThanhCong" runat="server" visible="false"> 
        Đăng ký thành công
    </div>

</asp:Content>
