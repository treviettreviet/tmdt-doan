<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="content">
	<div id="body">
	<div id="line-yell"></div>
    <div id="login-box">		
        <div id="login-box-left">			
           <div id="login-box-left-content">
                <div id="login-title">Đăng nhập tài khoản ví điện tử NgânLượng.vn</div>
                <div id="login-box-content">
                    <form method="post"><input type="hidden" name="form_module_id" value="1646"><input type="hidden" name="_token_form" value="1debc3f0be12fcf3b463750bb6b42ff8">    
					<div class="message-box" id="message-box-login">Tài khoản đăng nhập không đúng yêu cầu</div>	               
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <th style="width:80px;text-align:right;"><span class="required">*</span>Tài khoản:</th>
                        <td><input name="email" type="text" value="" onfocus="if(this.value == 'Email hoặc tên đăng nhập'){this.value='';};" onblur="if(this.value == ''){this.value='Email hoặc tên đăng nhập';};"></td>
                      </tr>
                      <tr>
                        <th style="width:80px;text-align:right;"><span class="required">*</span>Mật khẩu:</th>
                        <td><input name="password" type="password" autocomplete="off" value="" style="width:150px;" class="password keyboardInput"></td>
                      </tr>
                      
                    <%--<tr>
                        <th style="width:80px;text-align:right;"><span class="required">*</span>Mã xác nhận:</th>
                        <td><input name="verify_image" type="text" value maxlength="5" autocomplete="off" style="width:70px; float:left; margin-right:5px;"><img src="../../Content/images/captcha0.gif"></td>
                      </tr>--%>
                      <tr>
                        <th>&nbsp;</th>
                        <td style="line-height:28px;">
                            <input type="submit" class="button-content" value="Đăng nhập" style="float:left; margin-right:5px;">
                            <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=forgot_login_password">Quên mật khẩu?</a>
                        </td>
                      </tr>
                    </table>
					</form>
                </div>
                <div id="login-rigister">
                    <p>Bạn chưa có tài khoản ví điện tử NgânLượng.vn?</p>
                    <p><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_register"><img src="../../Content/images/button-r.gif"></a></p>
                	<p style="font-weight:normal;margin-top:10px;"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=fast_access">Hãy click để đăng ký và sở hữu thẻ F@stAccess ngay tại nhà</a></p>
                </div>
            </div>
        </div>
        <div id="login-box-right">
            <img src="../../Content/images/login-ba.png">
        </div>
    </div>
</div>
	</div>

</asp:Content>
