<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master"
    Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Main">
        <div class="<%=Html.Encode(ViewData["div"]) %>">
            <%=Html.Encode(ViewData["error"]) %></div>
        <div class="tab-acount">
            <div id="account_info">
                <div id="account_info_inner">
                    <div class="tran-tab-bg">
                         <table width="100%" cellspacing="0">
                            <tr>
                                <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top: 15px;">
                                    Mã TK : 
                                    <% Money10Banking.Models.TaiKhoan tk = (Money10Banking.Models.TaiKhoan)Session["User"]; %><%=tk.SoTaiKhoan%>
                                    <div style="margin-top: 5px; width: 100%;">
                                        <img src="../../Content/images/mail_ico.png" style="float: left;" ><div style="margin-bottom: 0px;
                                            float: left; padding-left: 10px;">
                                           <%=tk.Email%></div>
                                    </div>
                                    </br>
                                   
                                </td>
                                
                                <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top: 15px;">
                                    <div class="font1">
                                        Thông tin thẻ </div>
                                    <div>
                                        <%Money10Banking.Models.The the = (Money10Banking.Models.The)Session["The"];
                                          if (the == null || the.TinhTrang == 0)
                                          {
                                                %>
                                        <ul>
                                        <li>Số Thẻ: 0<br /></li>
                                        <li>Số dư: 0 đ</li>
                                        </ul>
                                          <%  }
                                          else
                                          { %>
                                                <ul>
                                        <li>Số Thẻ: <%=the.SoThe %><br /></li>
                                        <li>Số dư: <%=the.SoDu %> đ</li>
                                        </ul>
                                        <%  }
                                              %>
                                       
                                </td>
                                <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top: 15px;">
                                    <div class="font1">
                                        Thông tin thẻ </div>
                                    <div class="font2">
                                        0</div>
                                </td>
                                <td width="25%" class="tran-first">
                                    <div class="font1">
                                        Thông tin khác
                                    </div>
                                    <div class="font2">
                                   <%-- <% 
                                       if (Session["SoTienThe"] == null)
                                       {
                                       %>
                                           <%=stk %>
                                       }
                                        
                                        <%=stk %>--%>
                                        </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <script language="javascript" type="text/javascript">
            j(document).ready(function () {
                j('input[name=amount]').focus();
                j('[name=amount]').bind('keyup', changeData);
                j('[name=receive]').bind('keyup', changeReceive);

                j('#form_nap_tien').click(function () {
                    changeData();
                    changeReceive();
                });


                j('[name=amount]').change(function () {
                    changeData();
                });
                j('[name=receive]').change(function () {
                    changeReceive();
                });

                changeData();
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
                            name: 'baokim'
                        }
                    });
                });
                function changeData() {
                    var bankFixFee = 0.000;
                    var bankPercentFee = 0.000;

                    var bkFixFee = 0.00;
                    var bkPercentFee = 0;
                    var amount = j('input[name=amount]').val();
                    if (amount > bkFixFee + bankFixFee) {
                        var bankFee = Math.round(amount * bankPercentFee / 100 + bankFixFee);
                        var bkFee = Math.round(amount * bkPercentFee / 100 + bkFixFee);
                        j('span#bankFee').text(bankFee);
                        j('span#bankFee').format();
                        j('span#bkFee').text(bkFee);
                        j('span#bkFee').format();
                        j('#receive').val(amount - bankFee - bkFee);
                        j("#detail_receive").text(amount - bankFee - bkFee);
                        j('#detail_receive').format();
                        j('#realReceive').text(amount - bankFee - bkFee);
                        j('#realReceive').format();
                        j('#realAmount').text(amount);
                        j('#realAmount').format();
                    } else {
                        j('#receive').val('0');
                        j('span#bkFee').text('0');
                        j('span#bankFee').text('0');
                        j('span#realAmount').text('0');
                        j('span#realReceive').text('0');
                    }
                }

                function changeReceive() {
                    var bankFixFee = 0.000;
                    var bankPercentFee = 0.000;

                    var bkFixFee = 0.00;
                    var bkPercentFee = 0;

                    var receive = parseInt(j('input[name=receive]').val());
                    var amount = Math.round((receive + bkFixFee + bankFixFee) / (1 - bankPercentFee / 100 - bkPercentFee / 100));
                    if (amount > (bankFixFee + bkFixFee)) {
                        var bankFee = Math.round(amount * bankPercentFee / 100 + bankFixFee);
                        var bkFee = Math.round(amount * bkPercentFee / 100 + bkFixFee);
                        j('span#bankFee').text(bankFee);
                        j('span#bankFee').format();
                        j('span#bkFee').text(bkFee);
                        j('span#bkFee').format();
                        j('#amount').val(amount);
                        j("#detail_amount").text(amount);
                        j('#detail_amount').format();
                        j('#realReceive').text(receive);
                        j('#realReceive').format();
                        j('#realAmount').text(amount);
                        j('#realAmount').format();
                    } else {
                        j('#receive').val('0');
                        j('span#bkFee').text('0');
                        j('span#bankFee').text('0');
                        j('span#realAmount').text('0');
                        j('span#realReceive').text('0');
                    }
                }
            });

            function review() {
                changeData();
                changeReceive();
            }
</script>
        <div class="form-container" id="form_nap_tien">
            <div class="text_header">
                <span class="title">Add Card</span> </div>
           <%-- <div class="form">
               
                <div class="form-content">
                    <table class="form_tab_padding_top" cellspacing="10px">
                        <tr style="height: 0px;">
                            <td>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>--%>
            <form action="/Public/XuLyAddCard" method="post" accept-charset="utf-8">
            <div class="form-content">
                <table class="form-content-table">
                    <tbody>
                       <%-- <tr>
                            <td colspan="2" style="padding: 0px 20px 20px 20px;">
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                        </tr>--%>
                       
                       
                        <tr>
                            <th>
                                Số tài khoản<span style="color: red;"><strong> *<br />
                                </strong></span>
                            </th>
                            <td>

                                <input type="text" name="SoTaiKhoan" value="" class="text qtip" autocomplete="off"
                                    onkeypress="return numbersonly(this, event)" title="- Số Tài Khoản ( 16 số)">
                            </td>
                        </tr>
                
                        <tr>
                            <th>
                            </th>
                            <td>
                                <input type="submit" name="submit" value="Add Card" class="button">
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
           <%-- <div class="form-bottom">
            </div>
            <div class="clear">
            </div>--%>
            <input type="hidden" name="bankPaymentMethodId" value="91">
            </form>
        </div>
        </div>
</asp:Content>
