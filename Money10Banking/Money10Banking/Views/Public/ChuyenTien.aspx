﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master"
    Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Main">
        <%--<script type="text/javascript">
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
        </script>--%>

        <%--<script language="javascript" type="text/javascript">
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
        </script>--%>
        <div id="dhtmltooltip"></div>
        <%--<script type="text/javascript" src="../../Scripts/js/small000.js"></script>--%>
        <style type="text/css">
            #register_wrap .main_reg .instruction
            {
                font-size: 0.95em;
                width: 250px;
            }
        </style>
        <div class="form-container" style="padding-bottom: 20px;">
            <div class="text_header">
                <div class="left">
                    <h2 class="title">
                        Chuyển khoản
                    </h2>
                </div>
                <img title="Đăng ký tài khoản cá nhân" alt="Đăng ký tài khoản" src="../../Content/images/icon_dan.gif" />
            </div>
            <div class="clear">
            </div>
            <div class="form">
                <div class="form-content">
                </div>
            </div>
            <div class="form-content clear">
                <script language="javascript" type="text/javascript">
                    function checkVL() {
                        var card_receive = document.forms.frmTrans.CardRec.value;
                        var amountX = document.forms.frmTrans.amount.value;
                        if (card_receive == "") {
                            alert("Chưa nhập số thẻ người nhận. Vui lòng nhập số thẻ người nhận.");
                            return false;
                        }
                        if (amountX == "") {
                            alert("Chưa nhập số tiền cần chuyển. Vui lòng nhập số tiền cần chuyển.");
                            return false;
                        }
                        return true;
                    }
                
                </script>
                <%
                    string div = Request.QueryString["div"];
                    string error = Request.QueryString["error"];
                    if (div != null && error != null)
                    {
                %>
                        <div class="<%=Html.Encode(div) %>"><%=Html.Encode(error) %></div>
                <%                    
                    }
                %>

                <form action="/Public/TransferMoneyBank" onsubmit="return checkVL();" name="frmTrans" method="post">
                <table class="form-content-table" cellspacing="10px" id="TransferMoneyBank">
                    <p style="margin-left: 80px;">
                        <input type="radio" name="id" value="1" checked="checked" onclick="" id="TransferMoneySameBank" /><label
                            for="id_account_per"><span class="font-acc">Chuyển tiền cùng ngân hàng</span><span
                                class="font-acc-command">(Chuyển tiền trong cũng một ngân hàng)</span></label></p>
                    <p style="margin-left: 80px;">
                        <input type="radio" name="id" value="2" onclick="" id="TransferMoneyDiffBank" /><label
                            for="id_account_merchant"><span class="font-acc">Chuyển tiền liên ngân hàng</span><span
                                class="font-acc-command">(Chuyển tiền giữa hai ngân hàng khác nhau)</span></label></p>
                    <tr>
                        <th>
                            Số thẻ người gửi<span style="color: red;">*</span>:
                        </th>
                        <td>
                            <input type="text" name="Cardsend" value="<% =Session["cardno"] %>" size="42" readonly="readonly" />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Số thẻ người nhận<span style="color: red;">*</span>:
                        </th>
                        <td>
                            <input type="text" name="CardRec" value="" size="42" />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Số tiền chuyển<span style="color: red;">*</span>:
                        </th>
                        <td>
                            <input style="text-align: right; width: 125px;" size="10" autocomplete="off" onkeypress="return numbersonly(this, event)"
                                id="amount" type="text" value="" name="amount" /><b>₫</b>
                            <div style="font-weight: bold; padding-right: 3px;" id="detail_amount">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <input type="submit" name="btn_next" value="Chuyển tiền" class="button" />
                            <%--<input type="submit" value="Chuyển tiền"/>--%>
                        </td>
                    </tr>
                </table>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
