<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <div id="Main">
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
					    		    			                    maxlength: 20,
                                                                   
					    		    			                },
					    		    			                acceptLicense: {
					    		    			                    required: true
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
					    		    			                    minlength: "Số CMND phải có ít nhất 9 ký tự.",
					    		    			                    
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
					    		    			                }
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
<div id="dhtmltooltip"></div>
<script type="text/javascript" src="../../Scripts/js/small000.js"></script>
<style>
#register_wrap .main_reg .instruction{font-size:0.95em;width:250px}
    .style1
    {
        width: 529px;
    }
</style>

<div class="form-container" style="padding-bottom:20px;">
                    <div class="text_header">
                        <div class="left">
                            <h2 class="title">Đăng ký tài khoản</h2>
                        </div>
                        <img title="Đăng ký tài khoản cá nhân" atl="Đăng ký tài khoản" src="../../Content/images/icon_dan.gif">
                    </div>
                    <div class="clear"></div>
                    
                    <div class="banner_login" onmouseover="ddrivetip('Tiếp tục chuyển qua bước 2 để khám phá bí mật','#3291c6','#fff','#004d83',300)" ; onmouseout="hideddrivetip()"></div>
                       
                       <div class="form">
                        <div class="form-tab">
	<ul>
		    <li class="selected">
	        <div class="number left">
	        01    
	        </div>
	        <div class="tab-label">
	       Nhập thông tin	        </div>
	    </li>
		    <li class>
	        <div class="number left">
	        02    
	        </div>
	        <div class="tab-label">
	       Nhập mã <br>kich hoạt tài khoản	        </div>
	    </li>
		    <li class>
	        <div class="number left">
	        03    
	        </div>
	        <div class="tab-label">
	       Hoàn thành	        </div>
	    </li>
		</ul>	
	<div class="clear"></div>	
</div>
<div class="form-content">
<table class="form_tab_padding_top" cellspacing="10px">
	<tr style="height:0px;"><td></td></tr>
</table>
</div>                      </div>
                       <div class="form-content clear">                 
	                     	<p style="margin-left:80px;"><input type="radio" name="account[]" value checked="checked" onclick="j('#register_account_personal').show();j('#register_account_business').hide(); j('#type_register').val(1);" id="id_account_per"><label for="id_account_per"><span class="font-acc">Tài khoản cá nhân</span><span class="font-acc-command">(Sử dụng thông tin cá nhân để thực hiện giao dịch)</span></label></p>
                       		<p style="margin-left:80px;"><input type="radio" name="account[]" value  onclick="j('#register_account_personal').hide();j('#register_account_business').show(); j('#type_register').val(2);" id="id_account_merchant"><label for="id_account_merchant"><span class="font-acc">Tài khoản doanh nghiệp</span><span class="font-acc-command">(Sử dụng thông tin pháp nhân /Doanh nghiệp để thực hiện giao dịch)</span></label></p>

                           <form action="XuLyDangKyCaNhan" onsubmit="return check_personal_name()" id="form1" name="form_register_personal" accept-charset="utf-8" method="post">

                           

                            <%--<input type="hidden" name="_form_action" value="../../Controllers/PublicController.cs">
<input type="hidden" name="_form_token" value="../../Controllers/PublicController.cs">--%>
                            <table class="form-content-table" cellspacing="10px" id="register_account_personal">
                                <tr>
                                    <th>Email<span class="mandatory">*</span></th>
                                    <td class="style1">
                                       <input type="text" name="email"  value class="text qtip" autocomplete="off"
                                            title="Bạn sẽ dùng mail để đăng nhập vào Bảo Kim" size="50" id="txtUserName">&nbsp;
                                        <br>                            
                                    </td>
                                </tr>
                              
                                <tr>
                                    <th>Mật khẩu<span class="mandatory">*</span></th>
                                    <td class="style1">
                                        <input type="password" name="password" value class="text qtip" title="- Mật khẩu có tối thiểu 8 kí tự<br/>- Không liên quan đến email và số điện thoại<br/>- Phải bao gồm chữ số hoặc ký tự in hoa hoặc ký tự đặc biệt (!,@,#,$,%,^,&amp;...)">                                    </td>
                                </tr>
                                <tr>
                                    <th>Xác nhận mật khẩu<span class="mandatory">*</span></th>
                                    <td class="style1">
                                    <input type="password" name="passwordConfirm" value class="text qtip" title="Xác nhận lại mật khẩu giống mật khẩu vừa nhập">                                    </td>
                                </tr>                                          
                                <tr>
                                    <th>Họ và tên<span class="mandatory">*</span></th>
                                    <td class="style1">
                                     <input type="text" name="name" value class="text qtip" autocomplete="off" title="Họ tên phải giống như trên CMT hoặc Hộ chiếu và viết bằng tiếng Việt có dấu 
                                     <br>Bạn sẽ KHÔNG ĐƯỢC RÚT TIỀN nếu điền sai họ tên !" size="50">                              
                                     <br><span class="error" id="error_name_personal"></span>
                                    </td>
                                </tr>  
                                  <tr>
                                    <th>Ngày Sinh<span class="mandatory">*</span></th>
                                    <td class="style1">
                                      <input type="text" name="birthDay" value class="text qtip" autocomplete="off" title="-Ngày Sinh">                                
                                    </td>
                                </tr>  
                                  <tr>
                                    <th>CMND/Hộ Chiếu<span class="mandatory">*</span></th>
                                    <td class="style1">
                                      <input type="text" name="CMND" value class="text qtip" autocomplete="off" title="- CMND hoặc Hộ Chiếu( 9 số)">                                
                                    </td>
                                </tr>
                                  <tr>
                                    <th>Giới Tính<span class="mandatory">*</span></th>
                                    <td class="style1">
                                                                     
                                        
                                     <input type="radio" name="rdNam"  /><span class="font-acc">Nam</span>
                                        <input type="radio" name="rdNu"  /><span class="font-acc">Nữ</span>
                                                                     
                                    </td>
                                </tr>
                                <tr>
                                    <th>Địa Chỉ<span class="mandatory"></span></th>
                                    <td class="style1">
                                      <input type="text" name="SoNha" value class="text qtip" autocomplete="off" title="- Số Nhà thường trú">                                
                                    </td>
                                </tr>
                                <tr>
                                    <th>Đường<span class="mandatory"></span></th>
                                    <td class="style1">
                                      <input type="text" name="Duong" value class="text qtip" autocomplete="off" title="- Địa chỉ thường trú">                                
                                    </td>
                                </tr>
                                <tr>
                                    <th>Phường/xã<span class="mandatory"></span></th>
                                    <td class="style1">
                                      <input type="text" name="PhuongXa" value class="text qtip" autocomplete="off" title="- Địa chỉ thường trú">                                
                                    </td>
                                </tr>
                                <tr>
                                    <th>Quận/Huyện<span class="mandatory"></span></th>
                                    <td class="style1">
                                      <input type="text" name="QuanHuyen" value class="text qtip" autocomplete="off" title="- Địa chỉ thường trú" >                                
                                    </td>
                                </tr>
                                <tr>
                                    <th>Tỉnh/Thành Phố<span class="mandatory"></span></th>
                                    <td class="style1">
                                      <input type="text" name="ThanhPho" value class="text qtip" autocomplete="off" title="- Địa chỉ thường trú" >                               
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
                                  	  <input type="submit" name="submit" value="Khởi tạo tài khoản" id="id_submit" class="button">                                    </td>
                                </tr>
                                 </table>  
                                </form>
                             <form action="Public/XuLyDangKyMoiGioi" onsubmit="return check_company_name()" id="form_company" name="form_register_company" accept-charset="utf-8" method="post">
<%--<input type="hidden" name="_form_action" value="baokim.vn/accounts/register">
<input type="hidden" name="_form_token" value="e3870bcd3afe8a59ce8d74e2554cfb17b6416cc9">--%>
                            <table class="form-content-table" cellspacing="10px" id="register_account_business" style="display:none">
                                <tr>
                                    <th>Email<span class="mandatory">*</span></th>
                                    <td>
                                       <input type="text" name="email_company" value="huynhtalen@gmail.com" class="text qtip" autocomplete="off" title="Bạn sẽ dùng mail để đăng nhập vào Bảo Kim" size="50"><br>                            
                                    </td>
                                </tr>
                               
                                <tr>
                                    <th>Mật khẩu<span class="mandatory">*</span></th>
                                    <td>
                                        <input type="password" name="password_company" value="12345678" class="text qtip" title="- Mật khẩu có tối thiểu 8 kí tự<br/>- Không liên quan đến email và số điện thoại<br/>- Phải bao gồm chữ số hoặc ký tự in hoa hoặc ký tự đặc biệt (!,@,#,$,%,^,&amp;...)">                                    </td>
                                </tr>
                                <tr>
                                    <th>Xác nhận mật khẩu<span class="mandatory">*</span></th>
                                    <td>
                                    <input type="password" name="passwordConfirm_company" value="12345678" class="text qtip" title="Xác nhận lại mật khẩu giống mật khẩu vừa nhập">                                    </td>
                                </tr>  
                                <tr>
       
        <td colspan="2" style="background-repeat: no-repeat; font-weight: bold; font-style: italic; text-transform: capitalize; color: #FF0000; vertical-align: middle; text-align: center;" >Thông Tin Người Đại Điện</td>
    
    </tr>     
     <tr>
                                    <th>Họ tên người đại diện<span class="mandatory">*</span></th>
                                    <td>
                                    <input type="text" name="name" value="Huynh Tan Len" class="text qtip" title="Điền họ tên người đại diện chính cho doanh nghiệp. Họ tên phải giống như trên CMT hoặc Hộ chiếu và viết bằng tiếng Việt có dấu <br>Bạn sẽ KHÔNG ĐƯỢC RÚT TIỀN nếu điền sai họ tên !">                                   	<br><span class="error" id="error_name_company"></span>
                                    </td>
                                </tr>                          
                                      <tr>
                                    <th>Ngày Sinh<span class="mandatory">*</span></th>
                                    <td class="style1">
                                      <input type="text" name="birthDay" value="30/03/1989" class="text qtip" autocomplete="off" title="-Ngày Sinh">                                
                                    </td>
                                </tr>  
                                  <tr>
                                    <th>CMND/Hộ Chiếu<span class="mandatory">*</span></th>
                                    <td class="style1">
                                      <input type="text" name="CMND" value="123456789" class="text qtip" autocomplete="off" title="- CMND hoặc Hộ Chiếu( 9 số)">                                
                                    </td>
                                </tr>
                                  <tr>
                                    <th>Giới Tính<span class="mandatory">*</span></th>
                                    <td class="style1">
                                                                     
                                        
                                     <input type="radio" name="rdNam" checked="checked"  /><span class="font-acc">Nam</span>
                                        <input type="radio" name="rdNu"  /><span class="font-acc">Nữ</span>
                                                                     
                                    </td>
                                </tr>
                                 <tr>
       
        <td colspan="2" style="background-repeat: no-repeat; font-weight: bold; font-style: italic; text-transform: capitalize; color: #FF0000; vertical-align: middle; text-align: center;">Thông Tin Công Ty&nbsp;
            
         </td>
    
    </tr>                                                                      
                               	 <tr>
                                    <th>Tên tổ chức doanh nghiệp <span class="mandatory">*</span></th>
                                    <td>
                                     <input type="text" name="companyName" value="HTL" class="text qtip" autocomplete="off" title="Tên tổ chức doanh nghiệp phải giống với giấy phép kinh doanh/mã số thuế." size="50">                      
                                    </td>
                                </tr>
                                <tr>
                                    <th>Số đăng ký KD/MST<span class="mandatory">*</span></th>
                                    <td>
                                    <input type="text" name="companySocialId" value="ABC" class="text qtip" title="Số đăng ký /Mã số thuế">                                    </td>
                                </tr>
                                 <tr>
                                    <th>Số điện thoại cơ quan<span class="mandatory">*</span></th>
                                    <td>
                                      <input type="text" name="phoneNo_company" value="084321456" class="text qtip" autocomplete="off" title="-số điện thoại hoặc số fax">                                
                                    </td>
                                </tr>
                               
                               
                                 <tr>
                                    <th>Địa Chỉ<span class="mandatory"></span></th>
                                    <td class="style1">
                                      <input type="text" name="SoNha" value class="text qtip" autocomplete="off" title="- Số Nhà thường trú">                                
                                    </td>
                                </tr>
                                <tr>
                                    <th>Đường<span class="mandatory"></span></th>
                                    <td class="style1">
                                      <input type="text" name="Duong" value class="text qtip" autocomplete="off" title="- Địa chỉ thường trú">                                
                                    </td>
                                </tr>
                                <tr>
                                    <th>Phường/xã<span class="mandatory"></span></th>
                                    <td class="style1">
                                      <input type="text" name="PhuongXa" value class="text qtip" autocomplete="off" title="- Địa chỉ thường trú">                                
                                    </td>
                                </tr>
                                <tr>
                                    <th>Quận/Huyện<span class="mandatory"></span></th>
                                    <td class="style1">
                                      <input type="text" name="QuanHuyen" value class="text qtip" autocomplete="off" title="- Địa chỉ thường trú" >                                
                                    </td>
                                </tr>
                                <tr>
                                    <th>Tỉnh/Thành Phố<span class="mandatory"></span></th>
                                    <td class="style1">
                                      <input type="text" name="ThanhPho" value class="text qtip" autocomplete="off" title="- Địa chỉ thường trú" >                               
                                    </td>
                                </tr>
                              <%--  <tr>
								<th></th>
								<td>
									<script type="text/javascript">
									    function new_captcha2() {
									        var now = new Date();
									        document.images.captcha2.src = "/application/captcha/visual-captcha.php?" + now.getTime() + "&id=2";
									    }
		</script><img style="border: solid 1px lightgray;" id="captcha2" name="captcha2" src="../../Content/images/visual-d.jpg" height="48" alt="Visual CAPTCHA"><a href="javascript: new_captcha2();" tabindex="100"><img src="../../Content/images/Refresh_.png"></img></a>								</td>
							</tr>
                                <tr>
                                    <th>Nhập mã an toàn<span style="color: red;">*</span><span class="mandatory"></span></th>
                                    <td>
								   <input type="text" name="captcha_company" value class="text" size="10" autocomplete="off" title="Nhập mã an toàn giống như trong ảnh trên.<br/>Trong trường hợp không nhìn rõ chữ, bạn có thể thay đổi mã an toàn bằng cách nhấn vào nút <img src='/application/captcha/Refresh_48.png' style='vertical-align:top;height:24px' alt='refresh'/> bên phải">                                    </td>
                                </tr>
                                <tr>
                                    <th></th>
                                    <td>
                                       	<div id="user_agreement" style="width:100%;padding-top:5px;">
                                       	<input type="checkbox" name="acceptLicense_company" value id="id_agreement_company"><label for="id_agreement_company">Tôi đã đọc và xác nhận tuân thủ <a href="https://www.baokim.vn/user_agreement" style="margin-left:0px">Cam kết sử dụng dịch vụ</a> của Baokim.vn!</label></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="width: 100%;padding-left: 100px;color:#1C70A3;"><b>Thông Tin Thêm  .........................................................................................   </b> </td>
                                </tr>
                                <tr>
                                    <th>Bạn đăng kí Bảo Kim để :</th>
                                    <td>
                                    	                                      	  <input type="checkbox" name="purpose[]" value="1" id="purpose_buy_c"><label for="purpose_buy_c"><span class="font-acc-command">Mua Hàng</span></label>
                                    	  <input type="checkbox" name="purpose[]" value="2" id="purpose_sale_c"><label for="purpose_sale_c"><span class="font-acc-command">Bán Hàng</span></label>  
                                    	  <input type="checkbox" name="purpose[]" value="3" id="purpose_other_c"><label for="purpose_other_c"><span class="font-acc-command">Chưa xác định</span></label>   
                                     </td>
                                </tr>--%>
                                <tr>
                                    <th></th>
                                    <td>
                                    <input type="hidden" name="type_register" id="type_register" value="1"></input>                             
                                   <input type="submit" name="submit" value="Khởi tạo tài khoản" id="id_submit" class="button">                                    </td>
                                </tr>
                                
                              </table>  
                          </form> 
                        </div>
                        <div class="form-bottom"></div>
                        <div class="clear"></div>
                    </div>
                    
    <div>
        <center><img onmouseover="ddrivetip('Tiếp tục chuyển qua bước 2 để khám phá bí mật','#e7e7e7','#669933','#cccccc',300)" onmouseout="hideddrivetip()" src="../../Content/images/banner_r.jpg"></center>
    </div>
                    
 </div>

</asp:Content>
