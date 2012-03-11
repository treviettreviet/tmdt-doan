<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	TaoUser
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    


    <%--<div class="<%=Html.Encode(ViewData["div"]) %>"><%=Html.Encode(ViewData["error"]) %></div>--%>

    <div class="notification attention png_bg">
							
							<div>
								<div class='<%=Html.Encode(ViewData["div"]) %>'>
                                      <%=Html.Encode(ViewData["error"]) %>
                               </div>
							</div>
						</div>
    
      <script type="text/javascript">
					    		    			    //initiate validator on load
					    		    			    j(document).ready(function () {
					    		    			        // validate contact form on keyup and submit
					    		    			        j("#form").validate({
					    		    			            //set the rules for the field names
					    		    			            rules: {
					    		    			                email: {
					    		    			                    required: true,
					    		    			                    email: true
					    		    			                },
					    		    			               CMND: {
					    		    			                    required: true,
					    		    			                    number: true,
					    		    			                    minlength: 9
					    		    			                    
					    		    			                },
					    		    			                password: {
					    		    			                    required: true,
					    		    			                    minlength: 8,
					    		    			                    maxlength: 20
					    		    			                },

					    		    			                passwordConfirm: {
					    		    			                    required: true,
					    		    			                    minlength: 8,
					    		    			                    maxlength: 20
                                                                   
					    		    			                },
					    		    			                acceptLicense: {
					    		    			                    required: true
					    		    			                },
                                                                date:{
                                                                    required: true,
                                                                    min: 1,
                                                                    max: 31
                                                                }
					    		    			            },
					    		    			            //set messages to appear inline
					    		    			            messages: {
					    		    			                email: {
					    		    			                    required: "Hãy nhập Email",
					    		    			                    email: "Email phải nhập địa chỉ email hợp lệ"
					    		    			                },
					    		    			                CMND: {
					    		    			                    required: "Hãy nhập CMND hoac hộ chiếu",
					    		    			                    number: "Số CMND chỉ được phép nhập số.",
					    		    			                    minlength: "Số CMND phải có ít nhất 9 ký tự."
					    		    			                    
					    		    			                },
					    		    			                password: {
					    		    			                    required: "Hãy nhập Mật khẩu",
					    		    			                    minlength: "Mật khẩu phải có ít nhất 8 ký tự.",
					    		    			                    maxlength: "Mật khẩu có thể nhập tối đa 20 ký tự."
					    		    			                },
					    		    			                passwordConfirm: {
					    		    			                    required: "Hãy nhập Xác nhận mật khẩu",
					    		    			                    minlength: "Xác nhận mật khẩu phải có ít nhất 8 ký tự.",
					    		    			                    maxlength: "Xác nhận mật khẩu có thể nhập tối đa 20 ký tự."
					    		    			                },
					    		    			                acceptLicense: {
					    		    			                    required: "Bạn phải đồng ý với các điều khoản sử dụng hệ thống của chúng tôi"
					    		    			                },                                                                
					    		    			            }
					    		    			        });
					    		    			        j("#form_company").validate({
					    		    			            //set the rules for the field names
					    		    			            rules: {
					    		    			                email_company: {
					    		    			                    required: true,
					    		    			                    email: true
					    		    			                },
					    		    			                phoneNo_company: {
					    		    			                    required: true,
					    		    			                    number: true,
					    		    			                    minlength: 9,
					    		    			                    maxlength: 20
					    		    			                },
					    		    			                password_company: {
					    		    			                    required: true,
					    		    			                    minlength: 8,
					    		    			                    maxlength: 20
					    		    			                },
					    		    			                passwordConfirm_company: {
					    		    			                    required: true,
					    		    			                    minlength: 8,
					    		    			                    maxlength: 20
					    		    			                },
					    		    			                acceptLicense_company: {
					    		    			                    required: true
					    		    			                },
					    		    			                name: {
					    		    			                    required: true
					    		    			                },
					    		    			                companySocialId: {
					    		    			                    required: true
					    		    			                },
					    		    			                companyName: {
					    		    			                    required: true
					    		    			                },
					    		    			                siteUrl: {
					    		    			                    url: true
					    		    			                },
					    		    			                companyPhoneNo: {
					    		    			                    number: true
					    		    			                }
					    		    			            },
					    		    			            //set messages to appear inline
					    		    			            messages: {
					    		    			                email_company: {
					    		    			                    required: "Hãy nhập Email",
					    		    			                    email: "Email phải nhập địa chỉ email hợp lệ"
					    		    			                },
					    		    			                phoneNo_company: {
					    		    			                    required: "Hãy nhập Số điện thoại di động",
					    		    			                    number: "Số điện thoại di động chỉ được phép nhập số.",
					    		    			                    minlength: "Số điện thoại di động phải có ít nhất 9 ký tự.",
					    		    			                    maxlength: "Số điện thoại di động có thể nhập tối đa 20 ký tự."
					    		    			                },
					    		    			                password_company: {
					    		    			                    required: "Hãy nhập Mật khẩu",
					    		    			                    minlength: "Mật khẩu phải có ít nhất 8 ký tự.",
					    		    			                    maxlength: "Mật khẩu có thể nhập tối đa 20 ký tự."
					    		    			                },
					    		    			                passwordConfirm_company: {
					    		    			                    required: "Hãy nhập Xác nhận mật khẩu",
					    		    			                    minlength: "Xác nhận mật khẩu phải có ít nhất 8 ký tự.",
					    		    			                    maxlength: "Xác nhận mật khẩu có thể nhập tối đa 20 ký tự."
					    		    			                },
					    		    			                acceptLicense_company: {
					    		    			                    required: "Bạn phải đồng ý với các điều khoản sử dụng hệ thống của chúng tôi"
					    		    			                },
					    		    			                name: {
					    		    			                    required: 'Điền tên người đại diện'
					    		    			                },
					    		    			                companySocialId: {
					    		    			                    required: 'Điền mã số thuế /số đăng ký kinh doanh'
					    		    			                },
					    		    			                companyName: {
					    		    			                    required: 'Điền tên tổ chức Doanh Nghiệp'
					    		    			                },
					    		    			                siteUrl: {
					    		    			                    url: "Nhập URL hợp lệ"
					    		    			                },
					    		    			                companyPhoneNo: {
					    		    			                    number: 'Số điện thoại là số nguyên'
					    		    			                }
					    		    			            }
					    		    			        });
					    		    			        j('.qtip[title]').each(function () {
					    		    			            j(this).qtip({
					    		    			                position: {
					    		    			                    corner: {
					    		    			                        tooltip: 'leftTop',
					    		    			                        target: 'rightTop'
					    		    			                    }
					    		    			                },
					    		    			                show: { when: { event: 'focus' }, solo: true },
					    		    			                hide: false,
					    		    			                style: {
					    		    			                    padding: 10,
					    		    			                    textAlign: 'left',
					    		    			                    tip: true,
					    		    			                    width: 300,
					    		    			                    name: 'baokim'
					    		    			                }
					    		    			            });
					    		    			        });
					    		    			        j('input[name=email]').focus();
					    		    			        j('#form').submit(function () {
					    		    			            if (j('[name="type_register"]').val() == 1) {
					    		    			                j("#form").validate({
					    		    			                    //set the rules for the field names
					    		    			                    rules: {
					    		    			                        name: {
					    		    			                            required: true
					    		    			                        }
					    		    			                    },
					    		    			                    messages: {
					    		    			                        name: {
					    		    			                            required: "Bạn chưa nhập họ tên"
					    		    			                        }
					    		    			                    }
					    		    			                });
					    		    			            }
					    		    			        });
					    		    			    });
      </script>
<script>
    /**
    * Kiểm tra họ tên , có ít nhất 2 từ , mỗi từ trên 2 ký tự
    */
    function check_personal_name() {
        var y = document.form_register_personal.name.value;
        //var y=w.value;
        var r = 0;
        a = y.replace(/\s/g, ' ');
        a = a.split(' ');
        var cnt = 0;
        for (z = 0; z < a.length; z++) {
            if (a[z].length > 0)
                r++;
            if (a[z].length > 0 && a[z].length < 2)
                cnt++;
        }
        //x.value=r;
        if (cnt >= 2 && r < 2) {
            document.getElementById("error_name_personal").innerHTML = "Bạn vui lòng viết họ tên thật !";
            return false;
        } else if (r < 2) {
            document.getElementById("error_name_personal").innerHTML = "Bạn vui lòng viết họ tên thật !";
            return false;
        } else if (cnt >= 2) {
            document.getElementById("error_name_personal").innerHTML = "Bạn vui lòng viết họ tên thật !";
            return false;
        }
    }

    /**
    * Kiểm tra họ tên , có ít nhất 2 từ , mỗi từ trên 2 ký tự
    */
    function check_company_name() {
        var y = document.form_register_company.name.value;
        //var y=w.value;
        var r = 0;
        a = y.replace(/\s/g, ' ');
        a = a.split(' ');
        var cnt = 0;
        for (z = 0; z < a.length; z++) {
            if (a[z].length > 0)
                r++;
            if (a[z].length > 0 && a[z].length < 2)
                cnt++;
        }
        //x.value=r;
        if (cnt >= 2 && r < 2) {
            document.getElementById("error_name_company").innerHTML = "Bạn vui lòng viết họ tên thật !";
            return false;
        } else if (r < 2) {
            document.getElementById("error_name_company").innerHTML = "Bạn vui lòng viết họ tên thật !";
            return false;
        } else if (cnt >= 2) {
            document.getElementById("error_name_company").innerHTML = "Bạn vui lòng viết họ tên thật !";
            return false;
        }
    }
</script>
<form action="/Admin/XuLyTaoUser" onsubmit="return check_personal_name()" id="form" name="form_register_personal" accept-charset="utf-8" method="post"> 
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
                                           List<Money10BankingAdmin.Models.Group> adm = (from add in db.Groups select add  ).ToList();
                                           // List<Money10BankingAdmin.Models.GroupModels> Listgr= new List<Money10BankingAdmin.Models.GroupModels>();
                                            %>
                                        <select class="text" name="group" id="provinceId">  
                                        <option value="">---Group---</option> 
                                        <%
                                            for (int j = 0; j < adm.Count; j++)
                                            {
                                                //Money10BankingAdmin.Models.Groups gr = new Money10BankingAdmin.Models.Groups();
                                                //gr.GroupID = adm[j].GroupID.ToString();
                                                //Listgr.Add(gr);
                                                %>
                                                <option value="<%= adm[j].GroupID.ToString() %>"> <%= adm[j].GroupName.ToString() %> </option>
                                           <% }%>
                                            </select>
                                       <% }
                                             %>


                                       <% if (ad.GroupID == 2)
                                        {
                                            Money10BankingAdmin.Models.DB_NganHangEntities db = new Money10BankingAdmin.Models.DB_NganHangEntities();
                                           List<Money10BankingAdmin.Models.Group> adm = (from add in db.Groups select add  ).ToList();
                                           // List<Money10BankingAdmin.Models.GroupModels> Listgr= new List<Money10BankingAdmin.Models.GroupModels>();
                                            %>
                                        <select class="text" name="group" id="Select1">  
                                        <option value="">---Group---</option> 
                                        <%
                                            for (int j = 1; j < adm.Count; j++)
                                            {
                                                //Money10BankingAdmin.Models.Groups gr = new Money10BankingAdmin.Models.Groups();
                                                //gr.GroupID = adm[j].GroupID.ToString();
                                                //Listgr.Add(gr);
                                                %>
                                                <option value="<%= adm[j].GroupID.ToString() %>"> <%= adm[j].GroupName.ToString() %> </option>
                                           <% }%>
                                            </select>
                                       <% }
                                             %>
                                                               
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
