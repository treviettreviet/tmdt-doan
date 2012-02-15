﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master"
    Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    LichSuGiaoDich
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Main">
    <div class="<%=Html.Encode(ViewData["div"]) %>"><%=Html.Encode(ViewData["error"]) %></div>
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
                                    <%--<div style="margin-top: 5px; width: 100%;">
                                        <img src="../../Content/images/Box-Supp.png" style="float: left;"><div style="margin-bottom: 0px;
                                            float: left; padding-left: 10px;" >
                                           </div>
                                    </div>--%>
                                </td>
                                
                                <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top: 15px;">
                                    <div class="font1">
                                        Thông tin thẻ Master Card</div>
                                    <div>
                                        <%Money10Banking.Models.The the = (Money10Banking.Models.The)Session["The"]; %>
                                        <ul>
                                        <li>Số Thẻ: <%=the.SoThe %><br /></li>
                                        <li>Số dư: <%=the.SoDu %> đ</li>
                                        </ul>
                                        </div>
                                </td>
                                <td width="25%" class="tran-tab-menu-myacount" valign="top" style="padding-top: 15px;">
                                    <div class="font1">
                                        Thông tin thẻ Visa Card</div>
                                    <div class="font2">
                                        0</div>
                                </td>
                                <td width="25%" class="tran-first">
                                    <div class="font1">
                                        Thông tin khác
                                    </div>
                                    <div class="font2">
                                        <%=Session["SoTienThe"] %></div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="account-content">
            <div class="word-line">
                Lần cập nhật cuối : <% =DateTime.Now.ToString("hh:mm:ss - dd/MM/yyyy")%> </div>
            <div class="dot">
            </div>
            <div style="width: 630px; float: left">
                <div class="box">
                    <div class="box-title">
                        <div class="title-content">
                            <div class="left-title">
                                5 giao dịch gần nhất
                            </div>
                            <div class="right-title">
                                <a href="https://www.baokim.vn/transactions/pre_reg_log" class="white-color">Xem các
                                    giao dịch </a>&nbsp;| <a href="https://www.baokim.vn/transactions/log"
                                        class="white-color">Xem toàn bộ giao dịch</a>
                            </div>
                        </div>
                    </div>
                    <table class="table" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th width="25%" class="left-boder">
                                    Thời gian
                                </th>
                                <th width="20%" class="left-boder">
                                    Loại giao dịch
                                </th>
                                <th width="25%" class="left-boder">
                                    Tên/Email
                                </th>
                                <th width="15%" class="left-boder">
                                    Trạng thái
                                </th>
                                <th width="15%">
                                    Trạng thái
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <td colspan="6">
                            </td>
                        </tbody>
                    </table>
                </div>
                <p>
                    &nbsp;</p>
                <div class="box">
                    <div class="box-title">
                        <div class="title-content">
                            <div class="left-title">
                                5 đăng nhập gần nhất</div>
                            <div class="right-title">
                                &nbsp;</div>
                        </div>
                    </div>
                    <table width="100%" class="table" cellspacing="0">
                        <thead>
                            <tr>
                                <th width="30%" class="left-boder">
                                    Thời gian
                                </th>
                                <th width="30%" class="left-boder">
                                    IP 
                                </th>
                                <th width="40%" class="left-boder">
                                    Email/Điện thoại
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="row_even" onmouseover="this.className='row_over'" onmouseout="this.className='row_even'">
                                <td class="color-date">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="color-email">
                                    Dang nhap lenhuynh3003@gmail.com
                                </td>
                            </tr>
                            <tr class="row_odd" onmouseover="this.className='row_over'" onmouseout="this.className='row_odd'">
                                <td class="color-date">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="color-email">
                                    Dang nhap lenhuynh3003@gmail.com
                                </td>
                            </tr>
                            <tr class="row_even" onmouseover="this.className='row_over'" onmouseout="this.className='row_even'">
                                <td class="color-date">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="color-email">
                                    Dang nhap lenhuynh3003@gmail.com
                                </td>
                            </tr>
                            <tr class="row_odd" onmouseover="this.className='row_over'" onmouseout="this.className='row_odd'">
                                <td class="color-date">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="color-email">
                                    Dang nhap lenhuynh3003@gmail.com
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div style="width: 225px; float: right">
                <script type="text/javascript">
                    // wait for the DOM to be loaded 
                    j(document).ready(function () {
                        j('#page1').addClass('selected');
                        var notification_count = 0;
                        if (notification_count > 0) {
                            j('#notifications_wapper').show();
                        }

                        j('#notifications_form').ajaxForm(function () {
                            j('#notification_' + j('#notificationId').val()).hide();
                            notification_count--;
                            if (notification_count == 0) {
                                j('#notifications_wapper').hide();
                            }
                        });

                        j('#notifications_pane').hide();
                        j('#notifications_pane_title').click(function () {
                            j('#notifications_pane').toggle(0);
                        });
                    });
                    function getNotification(id, object) {
                        var id_old = id;
                        var total = parseInt(0);
                        var number_page = parseInt(0);
                        if (id == 0) {
                            id = parseInt(j("#page_current_id").val()) + 1;
                            //alert(id); 
                            if (id > number_page) {
                                id = number_page;
                            }
                        }

                        //alert(id);
                        if (id == -1) {
                            id = parseInt(j('#page_current_id').val()) - 1;
                            if (parseInt(j('#page_current_id').val()) > 1) {
                                id = parseInt(j('#page_current_id').val()) - 1;
                            } else {
                                id = parseInt(j('#page_current_id').val());
                            }
                        }
                        var show_page = 4;
                        var page = parseInt(j('#page_current_id').val());
                        if (id_old == 0 || id_old == -1) {
                            j.post('/services/accounts/getNotification/' + id, function (result) {
                                //j('#page1').removeClass('selected');
                                j('#page' + page).removeClass('selected');
                                j('#page' + id).addClass('selected');
                                j('#page_current_id').val(id);
                                j('#list_notification').html(result);
                            });
                            page_current = id;
                            var b1 = parseInt(0);
                            var b = Math.ceil(page_current / show_page);
                            if (b) {
                                end = b * show_page;
                                start = end - show_page + 1;
                            } else {
                                end = show_page;
                                start = 1;
                            }
                            if (end > number_page) {
                                start = start - (end - number_page);
                                end = number_page;

                            }
                            for (var i = start, j1 = 1; i <= end, j1 <= show_page; i++, j1++) {
                                j('#page_' + j1).text(i);
                            }
                            if (id > show_page && page >= show_page) {
                                var sub = id % show_page;
                                var sub1 = page % show_page;
                                if (sub == 0) {
                                    sub = show_page;
                                }
                                if (sub1 == 0) {
                                    sub1 = show_page;
                                }
                                if (sub != sub1) {
                                    j('#page' + sub1).removeClass('selected');
                                    j('#page' + sub).addClass('selected');
                                } else {
                                    j('#page' + sub).addClass('selected');
                                }
                                //alert(sub+':'+sub1);
                            } else {
                                j('#page' + id).addClass('selected');
                                j('#page' + page).removeClass('selected');
                            }
                        } else {
                            if (id_old != 0 && id_old != -1) {
                                var id_new = parseInt(j.trim(object.innerHTML));
                                var id_select = j.trim(object.id);
                                id_select = id_select.replace('_', '');
                                if (id_new != 0) {
                                    j.post('/services/accounts/getNotification/' + id_new, function (result) {
                                        j('#page1').removeClass('selected');
                                        if (page > show_page) {
                                            page = page % show_page;
                                            if (page == 0)
                                                page = show_page;
                                        }
                                        if (id_new > show_page) {
                                            id_new1 = id_new % show_page;
                                            if (id_new1 == 0)
                                                id_new1 = show_page;
                                        } else {
                                            id_new1 = id_new;
                                        }
                                        //alert(id_new+':'+id_new1+'||'+page);
                                        j('#page' + page).removeClass('selected');
                                        j('#' + id_select).addClass('selected');
                                        j('#page_current_id').val(id_new);
                                        j('#list_notification').html(result);
                                    });
                                }

                            }
                        }
                    }
</script>
                <style type="text/css">
                    .main-news .paging ul li a:hover
                    {
                        cursor: pointer;
                    }
                </style>
                <!-- code new -->
                <div class="wrap-notification">
                    <div class="right-notification">
                        <div class="notification">
                            <div class="notification-title">
                                Bạn có 0 thông báo từ hệ thống :
                            </div>
                        </div>
                        <div class="notification-content">
                            <ul class="color-notification" id="list_notification">
                                <!-- <input type="hidden" name="notificationId" id="notificationId"></input>  -->
                            </ul>
                        </div>
                        <!--  code new -->
                        <div class="main-news" style="clear: both; margin-left: 25px; margin-bottom: 15px;
                            width: 225px;" align="center">
                        </div>
                        <input type="hidden" name="page_current_name" id="page_current_id" value="1"></input>
                        <!--  code new -->
                    </div>
                </div>
            </div>
        </div>
        <div class="clear">
        </div>
    </div>
</asp:Content>
