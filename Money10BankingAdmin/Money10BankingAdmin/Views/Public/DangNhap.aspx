<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>DangNhap</title>
</head>
<body>
    <div>
     <div class='<%=Html.Encode(ViewData["div"]) %>'>
            <%=Html.Encode(ViewData["error"]) %>
        </div>
    <form action="/Public/XuLyDangNhap" method="post">
        <table align="center" style="width:20%" border="1">
            <tr>
                <td colspan="2">
                    <strong>Login to System</strong></td>
            </tr>
            <tr>
                <td>
                    Email</td>
                <td>
                    <input name="email" type="text" value="len@gmail.com" /></td>
                            </tr>
            <tr>
                <td>
                    Password</td>
                <td>
                    <input name="password" type="password" value="12345678" /></td>
                
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <input id="Submit" type="submit" value="Login" /></td>
                            </tr>
            
        </table>
    </form>
    </div>
</body>
</html>
