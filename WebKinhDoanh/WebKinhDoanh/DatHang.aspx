<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DatHang.aspx.cs" Inherits="WebKinhDoanh.DatHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="right_content" class="grid_18 omega">    
        <div id="search_toolbar" class="ui-widget-header ui-corner-all">
        <form action="http://chino.com.vn/?p=tim-kiem" method="post">
            Tìm kiếm sản phẩm <input type="text" id="txt_keyword" name="txt_keyword" value> 
            <select name="sel_product">
                <option value>--Tất cả danh mục--</option>
                                      
                    <option value="11">
                        Đầm dạo phố                    </option>
                                          
                    <option value="12">
                        Đầm công sở                    </option>
                                          
                    <option value="13">
                        Đầm dạ hội                    </option>
                                          
                    <option value="14">
                        Áo cưới                    </option>
                                          
                    <option value="15">
                        Áo dài thời trang                    </option>
                                          
                    <option value="24">
                        Hàng Độc                    </option>
                                          
                    <option value="10">
                        Phụ kiện thời trang                    </option>
                                                <option value="17">
                                --Bóp - Ví                            </option>
                                                <option value="19">
                                --Nước hoa                            </option>
                                                <option value="20">
                                --Trang sức                            </option>
                                                <option value="21">
                                --Dây nịt                            </option>
                                                <option value="23">
                                --Giầy                            </option>
                                                <option value="22">
                                --Phụ kiện chuyên dùng                            </option>
                                </select>&nbsp;
            <button type="submit" class="search_button">Tìm</button>
        </form>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#product_chk_all').click(function () {
                    var checked_status = this.checked;
                    $("input[@name=chk_delete\\[\\]]").each(function () {
                        this.checked = checked_status;
                    });
                });

                $('#show_detail_size').click(function () {
                    if ($('#size').is(':hidden')) {
                        $('#size').slideDown();
                    } else {
                        $('#size').slideUp();
                    }
                });
            });

            function update_cart() {
                $('#form_cart').submit();
            };
</script>
<div id="html_content" class="ui-widget-content ui-corner-all">
    <div id="cart_content" class="ui_panel_uncollapsible">
        <h3>Giỏ Hàng</h3>
        <div>
                    <form method="post" id="form_cart">
        	
                <table width="100%" class="client_list ui-widget" cellspacing="0" cellpadding="5">
                <thead class="ui-widget-header">
                <tr align="center">
                    <th><input type="checkbox" id="product_chk_all"></th>
                    <th>Hình</th>
                    <th>Tên</th>
                    <th>Mã</th>
                    <th>Size</th>
                    <th>Đơn Giá</th>
                    <th>Số lượng</th>
                    <th align="right">Thành tiền</th>                    
                </tr>
                </thead>
				                <tbody class="ui-widget-content">
                <tr id="tr_74">        	
                    <td width="9%" align="center">
                        <input type="checkbox" name="chk_delete[]" value="74">
                        <input type="hidden" name="hd_id[]" value="74">              
                    </td>
                    <td width="10%" height="46" align="center">
                        <a href="http://chino.com.vn/upload/product/ac-04a.jpg">
                           <img width="40" src="dathang_files/ac-04a00.jpg"></a>                    
                    </td>    
                    <td width="13%" align="center">
                        <a href="http://chino.com.vn/?p=san-pham&amp;id=74">AC.04</a>
                    </td>
                    <td width="9%" align="center"></td>
                    <td width="12%" align="center">
                        <input size="5" name="txt_size[]" value style="text-align:center;">
                    </td>
                    <td width="13%" align="right">2.700.000</td>
                    <td width="15%" align="right">
                        <input size="5" type="text" name="txt_number[]" value="1" style="text-align:center;">
                    </td>                  
                    <td width="19%" align="right">
                        <span class="product_price">2.700.000</span>                   
                    </td>                  
                </tr>
                </tbody>                			
                            
                </table> 
            </form>           
        </div>
        <div style="padding:5px;">
            <p style="float:right; line-height:35px;">
                <b>Tổng</b> : <span class="product_price">2.700.000 VND</span>
            </p>
            <button type="submit" class="ui_button" onclick="update_cart()">Xóa</button>
            <button type="submit" class="ui_button" onclick="update_cart()">Cập Nhật</button>
            <button type="button" class="ui_button" onclick="location.href='http://chino.com.vn/'">Tiếp Tục Mua Hàng</button>           
        </div>
        <div style="padding: 5px;">
            <b class="error">Quý khách có thể đặt may theo số đo riêng. <a href="javascript:;" style="color: blue;" id="show_detail_size">Xem chi tiết</a></b>
            <div style="text-align: center; display: none;" id="size"><img src="dathang_files/aochino0.jpg"></div>
        </div>       
        <div>      		
            <form method="post">
            <p></p>
            <p>
                <span class="note">Những mục có dấu (*) là bắt buộc phải nhập</span><br>
                <strong>Thông Tin Người Đặt Hàng</strong>
            </p>
            <table width="100%">
            <tr>
                <td width="25%">Họ Tên <span class="note">(*)</span></td>
                <td width="75%">
                    <input type="text" name="txt_order_name" value>
                    &nbsp;<b class="error"></b>
                </td>
            </tr>
            <tr>
                <td>Email <span class="note">(*)</span></td>
                <td>
                    <input type="text" name="txt_order_email" value>                    
                    &nbsp;<b class="error"></b>
                </td>
            </tr>
            <tr>
                <td>Địa Chỉ </td>
                <td>
                    <textarea name="txta_order_address" cols="45" rows="5"></textarea>
                </td>
            </tr>
            <tr>
                <td>Điện Thoại <span class="note">(*)</span></td>
                <td>
                    <input type="text" name="txt_order_phone" value>
                    &nbsp;<b class="error"></b>
                </td>
            </tr>
            </table>
            <p></p>
            <p>
                <strong>Thông Tin Người Nhận Hàng</strong><br>
                <span class="note">Nếu bỏ trống thông tin người nhận hàng thì hệ thống xem như người đặt hàng và nhận hàng là cùng 1 người!</span>
            </p>
            <table width="100%">
            <tr>
                <td width="25%">Họ Tên </span></td>
                <td width="75%">
                    <input type="text" name="txt_ship_name" value>
                </td>
            </tr>
            <tr>
                <td>Ngày Giao <span class="note">(*)</span></td>
                <td>
                    <input type="text" name="txt_ship_date" class="ui_datepicker" value>
                    &nbsp;<b class="error"></b>
                </td>
            </tr>
            <tr>
                <td>Địa Chỉ </td>
                <td>
                    <textarea name="txta_ship_address" cols="45" rows="5"></textarea>
                </td>
            </tr>
            <tr>
                <td>Lời nhắn </td>
                <td>
                    <textarea name="txta_message" cols="45" rows="5"></textarea>
                </td>
            </tr>
            <tr>
                <td>Hình thức thanh toán </td>
                <td>
                    <select name="sel_type">
                        <option value="direct">Thanh toán trực tiếp sau khi nhận hàng</option>
                        <option value="account_bank">Thanh toán bằng cách chuyển khoản (Bank Deposit)</option>
                        <option value="nganluong">Thanh toán an toàn qua nganluong.vn</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td valign="top">Mã xác thực <span class="note">(*)</span></span></td>
                <td>
                    <img src="dathang_files/00000000.png"><br>
                    <input type="text" name="txt_captcha">
                    &nbsp;<b class="error"></b>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button class="ui_button" type="submit">Thanh Toán</button>
                    <asp:Button ID="btnSend" runat="server" onclick="btnSend_Click" Text="Gửi" />
                <a href="#">&nbsp;Đến trang giao thanh toán Ngân Lượng &gt;&gt;</a></td>
            </tr>
            </table>
            <input type="hidden" name="template_function" value="saveCheckOut">     
            </form>      
        </div>
        </div>
</div></div>
</asp:Content>
