<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	TaoUser
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <table class="form-content-table" cellspacing="10px" id="register_account_personal">
                                <tr>
                                    <th>Email<span class="mandatory">*</span></th>
                                    <td class="style1">
                                       <input type="text" name="email"  value="quangkhai@hotmail.com" class="text qtip" autocomplete="off"
                                            title="Bạn sẽ dùng mail để đăng nhập vào Bảo Kim" size="50" id="txtUserName">&nbsp;
                                        <br>                            
                                    </td>
                                </tr>
                              
                                <tr>
                                    <th>Password<span class="mandatory">*</span></th>
                                    <td class="style1">
                                        <input type="password" name="password" value="12345678" class="text qtip" title="- Mật khẩu có tối thiểu 8 kí tự<br/>- Không liên quan đến email và số điện thoại<br/>- Phải bao gồm chữ số hoặc ký tự in hoa hoặc ký tự đặc biệt (!,@,#,$,%,^,&amp;...)">                                    </td>
                                </tr>
                                <tr>
                                    <th>Confirm Password<span class="mandatory">*</span></th>
                                    <td class="style1">
                                    <input type="password" name="passwordConfirm" value="12345678" class="text qtip" title="Xác nhận lại mật khẩu giống mật khẩu vừa nhập">                                    </td>
                                </tr>                                          
                                <tr>
                                    <th>Name<span class="mandatory">*</span></th>
                                    <td class="style1">
                                     <input type="text" name="name" value="Phan Quang Khải" class="text qtip" autocomplete="off" title="Họ tên phải giống như trên CMT hoặc Hộ chiếu và viết bằng tiếng Việt có dấu 
                                     <br>Bạn sẽ KHÔNG ĐƯỢC RÚT TIỀN nếu điền sai họ tên !" size="50">                              
                                     <br><span class="error" id="error_name_personal"></span>
                                    </td>
                                </tr>  
                                 <%-- <tr>
                                    <th>Ngày Sinh<span class="mandatory">*</span></th>
                                    <td class="style1">
                                        <select class="text" name="date" id="provinceId">                                        
                                            <%for (int i = 1; i < 32; i++)
                                              { %>                                            
                                            <option value="<%=i %>"><%=i %></option>
                                            <%} %>
                                        </select>/
                                       <select class="text" name="month" id="Select1">                                        
                                            <%for (int i = 1; i < 13; i++)
                                              { %>                                            
                                            <option value="<%=i %>"><%=i %></option>
                                            <%} %>
                                        </select>/
                                        <select class="text" name="year" id="Select2">                                        
                                            <%for (int i = 1999; i > 1959; i--)
                                              { %>                                            
                                            <option value="<%=i %>"><%=i %></option>
                                            <%} %>
                                        </select>
                                    </td>
                                </tr>  
                                  <tr>
                                    <th>CMND/Hộ Chiếu<span class="mandatory">*</span></th>
                                    <td class="style1">
                                      <input type="text" name="CMND" value="123123123" class="text qtip" autocomplete="off" title="- CMND hoặc Hộ Chiếu( 9 số)">                                
                                    </td>
                                </tr>
                                  <tr>
                                    <th>Giới Tính<span class="mandatory">*</span></th>
                                    <td class="style1">

                                     <input type="radio" name="rdGioiTinh" value="Nam" checked="true"/><span class="font-acc">Nam</span>
                                        <input type="radio" name="rdGioiTinh" value="Nu"/><span class="font-acc">Nữ</span>                                                                   
                                    </td>
                                </tr>
                                <tr>
                                    <th>Địa Chỉ<span class="mandatory"></span></th>
                                    <td class="style1">
                                      <input type="text" name="SoNha" value="123" class="text qtip" autocomplete="off" title="- Số Nhà thường trú">                                
                                    </td>
                                </tr>
                                <tr>
                                    <th>Đường<span class="mandatory"></span></th>
                                    <td class="style1">
                                      <input type="text" name="Duong" value="Ly Thai To" class="text qtip" autocomplete="off" title="- Địa chỉ thường trú">                                
                                    </td>
                                </tr>
                                <tr>
                                    <th>Phường/xã<span class="mandatory"></span></th>
                                    <td class="style1">
                                      <input type="text" name="PhuongXa" value="Phuong 1" class="text qtip" autocomplete="off" title="- Địa chỉ thường trú">                                
                                    </td>
                                </tr>
                                <tr>
                                    <th>Quận/Huyện<span class="mandatory"></span></th>
                                    <td class="style1">
                                      <input type="text" name="QuanHuyen" value="Quan 3" class="text qtip" autocomplete="off" title="- Địa chỉ thường trú" >                                
                                    </td>
                                </tr>--%>

                                <tr>
                                    <th>Group<span class="mandatory"></span></th>
                                    <td class="style1">
                                    <% Money10BankingAdmin.Models.Admin ad = (Money10BankingAdmin.Models.Admin)Session["User"]; %>
                                     <% if (ad.GroupID == 1)
                                        {
                                            Money10BankingAdmin.Models.DB_NganHangEntities db = new Money10BankingAdmin.Models.DB_NganHangEntities();
                                            //Money10BankingAdmin.Models.Admin adm = (from add in db.Admins select add).FirstOrDefault<Money10BankingAdmin.Models.Admin>;
                                        }
                                             %>
                                       <select class="text" name="group" id="provinceId">  
                                        <option value="">---Group---</option>                                      
                                            <%for (int i = 1; i < 32; i++)
                                              { %>                                            
                                            <option value="<%=i %>"><%=i %></option>
                                            <%} %>
                                        </select>                          
                                    </td>
                                </tr>
                                <%--             <tr>                                               	 
								<th></th>
								<td class="style1">
									<script type="text/javascript">
									    function new_captcha1() {
									        var now = new Date();
									        document.images.captcha1.src = "/application/captcha/visual-captcha.php?" + now.getTime() + "&id=1";
									    }
		</script><img style="border: solid 1px lightgray;" id="captcha1" name="captcha1" src="../../Content/images/visual-c.jpg" height="48" alt="Visual CAPTCHA"><a href="javascript: new_captcha1();" tabindex="100"><img src="../../Content/images/Refresh_.png"></img></a>								</td>
							</tr>
                                <tr>
                                    <th>Nhập mã an toàn<span style="color: red;">*</span><span class="mandatory"></span></th>
                                    <td class="style1">
								   <input type="text" name="captcha_personal" value class="text qtip" size="10" autocomplete="off">                                    </td>
                                </tr>
                                <tr>
                                    <th></th>
                                    <td class="style1">
                                       	<div id="user_agreement" style="width:100%;padding-top:5px;">
                                       	<input type="checkbox" name="acceptLicense" value id="id_agreement_per"><label for="id_agreement_per">Tôi đã đọc và xác nhận tuân thủ <a href="https://www.baokim.vn/user_agreement" style="margin-left:0px">Cam kết sử dụng dịch vụ</a> của Baokim.vn!</label></div>
                                    </td>
                                </tr>
                              --%>
                                
                                <tr>
                                    <th></th>
                                    <td class="style1">                     
                                  	  <input type="submit" name="submit" value="Accept" id="id_submit" class="button">                                    </td>
                                </tr>
                                 </table>

</asp:Content>
