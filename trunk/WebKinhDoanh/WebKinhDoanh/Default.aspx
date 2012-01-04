<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebKinhDoanh.Default" %>
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
        <div class="ui-widget-header ui-corner-all panel_header" style="padding: 5px; margin: 5px 0;">Áo cưới<br />
        <a href="DatHang.aspx">Đến trang đặt hàng >></a>
        </div>
<div class="ui-widget-content ui-corner-all" style="float: left; width: 99.8%;">
    <div class="list_product" style="width:100%;padding: 15px 18px;">
            <div class="box_product_col1 ui-widget-content ui-corner-all">
            <a href="http://chino.com.vn/?p=san-pham&amp;id=74">
                <img src="index_files/ac-04a00.jpg">
            </a>
            <div class="product_info">
                <div class="product_name">
                        <a href="http://localhost:7513/dathang.html?p=san-pham&amp;id=74">
                            AC.04                        </a>
                    </div>
                <div class="product_price">Giá bán : 2.700.000 VND<br>Giá thuê : 1.900.000 VND</div>
                                    <button class="buy_button" idata="74" onclick="reuturn header('dathang.html')">Đặt mua</button>
                            </div>
        </div>
            <div class="box_product_col2 ui-widget-content ui-corner-all">
            <a href="http://chino.com.vn/?p=san-pham&amp;id=72">
                <img src="index_files/ac-09000.jpg">
            </a>
            <div class="product_info">
                <div class="product_name">
                        <a href="http://chino.com.vn/?p=san-pham&amp;id=72">
                            AC.09                        </a>
                    </div>
                <div class="product_price">Giá bán : 2.200.000 VND<br>Giá thuê : 1.700.000 VND</div>
                                    <button class="buy_button" idata="72">Đặt mua</button>
                            </div>
        </div>
            <div class="box_product_col0 ui-widget-content ui-corner-all">
            <a href="http://chino.com.vn/?p=san-pham&amp;id=71">
                <img src="index_files/ac-08000.jpg">
            </a>
            <div class="product_info">
                <div class="product_name">
                        <a href="http://chino.com.vn/?p=san-pham&amp;id=71">
                            AC.08                        </a>
                    </div>
                <div class="product_price">Giá bán : 2.000.000 VND<br>Giá thuê : 1.500.000 VND</div>
                                    <button class="buy_button" idata="71">Đặt mua</button>
                            </div>
        </div>
            <div class="box_product_col1 ui-widget-content ui-corner-all">
            <a href="http://chino.com.vn/?p=san-pham&amp;id=70">
                <img src="index_files/ac-07000.jpg">
            </a>
            <div class="product_info">
                <div class="product_name">
                        <a href="http://chino.com.vn/?p=san-pham&amp;id=70">
                            AC.07                        </a>
                    </div>
                <div class="product_price">Giá bán : 3.200.000 VND<br>Giá thuê : 2.500.000 VND</div>
                                    <button class="buy_button" idata="70">Đặt mua</button>
                            </div>
        </div>
            <div class="box_product_col2 ui-widget-content ui-corner-all">
            <a href="http://chino.com.vn/?p=san-pham&amp;id=69">
                <img src="index_files/ac-06000.jpg">
            </a>
            <div class="product_info">
                <div class="product_name">
                        <a href="http://chino.com.vn/?p=san-pham&amp;id=69">
                            AC.06                        </a>
                    </div>
                <div class="product_price">Giá bán : 3.200.000 VND<br>Giá thuê : 2.500.000 VND</div>
                                    <button class="buy_button" idata="69">Đặt mua</button>
                            </div>
        </div>
            <div class="box_product_col0 ui-widget-content ui-corner-all">
            <a href="http://chino.com.vn/?p=san-pham&amp;id=68">
                <img src="index_files/ac-05000.jpg">
            </a>
            <div class="product_info">
                <div class="product_name">
                        <a href="http://chino.com.vn/?p=san-pham&amp;id=68">
                            AC.05                        </a>
                    </div>
                <div class="product_price">Giá bán : 2.900.000 VND<br>Giá thuê : 2.100.000 VND</div>
                                    <button class="buy_button" idata="68">Đặt mua</button>
                            </div>
        </div>
            
            <div class="cate_pagination"><div class="pagination"></div>
</div>
    </div>
</div>
    </div>
</asp:Content>
