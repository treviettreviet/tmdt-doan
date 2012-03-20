<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	DoiMatKhau
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

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
   <form action="/Public/XuLyDoiPass" onsubmit="return check_personal_name()" id="form" name="form_register_personal" accept-charset="utf-8" method="post"> 
    <table class="form-content-table" cellspacing="10px" id="register_account_personal">
        <tr>
            <th>Mật khẩu cũ:<span class="mandatory">*</span></th>
            <td class="style1">
                <input type="password" name="pass"  value="" class="text qtip" autocomplete="off"
                    title="Bạn sẽ dùng mail để đăng nhập vào Bảo Kim" size="50" id="txtPass">&nbsp;
                <br>                            
            </td>
        </tr>         
        <tr>
            <th>Mật khẩu mới:<span class="mandatory">*</span></th>
            <td class="style1">
                <input type="password" name="passnew" value="" class="text qtip" autocomplete="off" title="Mật Khẩu mới !" size="50">                              
                <br><span class="error" id="Span1"></span>
            </td>
        </tr>  
        <tr>
            <th>Nhập lại MK mới:<span class="mandatory">*</span></th>
            <td class="style1">
                <input type="password" name="confirmpass" value="" class="text qtip" autocomplete="off" title="Nhập lại MK mới!" size="50">                              
                <br><span class="error" id="error_name_personal"></span>
            </td>
        </tr>  
         <tr>
                   
        <tr>
            <th></th>
            <td class="style1">                     
                <input type="submit" name="submit" value="Accept" id="id_submit" class="button"></td>
        </tr>
    </table>
</form>

</asp:Content>
