<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel ID="pnDangNhap" runat="server">
        <asp:Label ID="lbError" runat="server" Text="" ForeColor="Red"></asp:Label>
        <br />
        <table border="0" width="500" cellspacing="3" style="border: solid thin black;">
            <tr>
                <td align="center" style="background-color: black" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Đăng nhập" Font-Bold="True" Font-Size="16px"
                        ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td width="150" align="right">
                    Tên đăng nhập:
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ErrorMessage="Nhập tên đăng nhập"
                        ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Mật khẩu:
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorpassword" runat="server" ErrorMessage="Nhập mật khẩu"
                        ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    &nbsp;<asp:CheckBox ID="rdoremember" runat="server" Style="position: relative" Text="Nhớ tôi trên máy tính này" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" OnClick="btnDangNhap_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User/LayLaiMatKhau.aspx"
                        ForeColor="blue">Quên mật khẩu</asp:HyperLink>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="pnDaDangNhap" runat="server" Visible="false">
        Bạn đã đăng nhập
        <br />
        <asp:Button ID="btnDangNhapLai" runat="server" Text="Đăng nhập dưới quyền khác" BackColor="#80FFFF" BorderColor="#00C0C0" OnClick="btnDangNhapLai_Click" />
    </asp:Panel>

</asp:Content>
