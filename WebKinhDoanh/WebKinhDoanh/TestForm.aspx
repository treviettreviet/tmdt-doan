<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestForm.aspx.cs" Inherits="WebKinhDoanh.TestForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" action="http://localhost:2283/ThanhToanTrucTuyen.aspx">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button"/>
        <asp:HiddenField ID="tendoanhnghiep"  Value="Cửa hàng áo cưới" />
        <asp:HiddenField ID="email"  Value="abc@gmail.com"
    </div>
    </form>
</body>
</html>
