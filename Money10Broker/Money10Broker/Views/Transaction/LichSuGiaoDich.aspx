<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <div id="menu-nav-content">
	<div id="menu-nav-content-l"></div>
	<div id="menu-nav-content-r"></div>
	<div id="menu-nav-content-c">
		<div id="menu-nav-content-main">
			<ul>
				<li class="active" style="display:block"><a href="/Public/TongHop"><span>GIAO DỊCH</span></a></li>
				<li class=" " style="display:block"><a href="/Account/ThongTinTaiKhoan"><span>TÀI KHOẢN</span></a></li>
			</ul>
		</div>
		<div id="menu-nav-content-sub">
			<ul>
		    	<li class="" style="display:block"><a href="/Public/TongHop"><span>Tổng hợp</span></a></li>
				<li class="active" style="display:block"><a href="/Transaction/LichSuGiaoDich"><span>Lịch sử giao dịch</span></a></li>			
                <li class="" style="display:block"><a href="/Transaction/RutTien"><span>Rút tiền</span></a></li>	
				<li class=" " style="display:block"><a href="/Transaction/ChuyenTien"><span>Chuyển tiền</span></a></li>
                <li class=" " style="display:block"><a href="/Transaction/ChuyenTienCungMoigioi"><span>Chuyển tiền cùng môi giới</span></a></li>
                <li class=" " style="display:block"><a href="/Transaction/ChuyenTienKhacMoigioi"><span>Chuyển tiền khác môi giới</span></a></li>
			</ul>
		</div>
	</div>
</div>
    <div id="title">
        <span class="yel">Lịch sử giao dịch trên hệ thống</span>
    </div>
    <div id="balance-activities">
        <div id="balance-activities-content">
            <p id="balance-activities-content-title">
                Số dư khả dụng</p>
            <p id="balance-activities-content-view">
                <span id="balance-content" class="yel">0</span><br />
                <span class="span-grey">(VND)</span></p>
        </div>
    </div>
    <form method="get" name="frm_search">
    <input name="portal" type="hidden" value="nganluong" />
    <input id="page" name="page" type="hidden" value="transaction_history" />
    <input id="filter_type" name="filter_type" type="hidden" value="1" />
    <input id="s_status" name="s_status" type="hidden" value="0" />
    <div id="transaction-history-sell-filter" class="box-content-square">
        <div id="ssearch" class="sall-filter" style="padding-bottom:10px">
            <div class="row-sall-filter" style=" margin:0">
                <table style=" margin-bottom:0">
                    <tr>
                        <td>
                            <div class="check-time-filter">
                                <label>
                                Chọn thời gian:</label>
                                <p>
                                    <select id="option_time" name="option_time" onchange="set_filter(this.value)" 
                                        style="width: 180px; height:22px;">
                                        <option value="1">Hôm nay</option>
                                        <option value="2">Hôm qua</option>
                                        <option value="3">Tuần này</option>
                                        <option value="4">Tuần trước</option>
                                        <option value="5">7 ngày gần đây</option>
                                        <option value="6">Tháng này</option>
                                        <option value="7">Tháng trước</option>
                                        <option selected="" value="8">3 Tháng gần đây</option>
                                        <option value="9">Tất cả</option>
                                    </select></p>
                            </div>
                        </td>
                        <td>
                            <div class="check-other-filter">
                                <label style="padding-right:140px;">
                                Xem theo loại giao dịch:</label>
                                <p>
                                    <select id="cbo_type" name="cbo_type" 
                                        onchange="document.location.href='?portal=nganluong&amp;page=transaction_history&amp;type='+this.value;" 
                                        style="width: 130px; height:22px;">
                                        <option selected="" value="">Tất cả</option>
                                        <option value="deposit">Nạp tiền</option>
                                        <option value="withdraw">Rút tiền</option>
                                        <option value="transfer">Chuyển tiền</option>
                                        <option value="receiving">Nhận tiền</option>
                                        <option value="refund">Hoàn lại</option>
                                    </select></p>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="clear">
            </div>
            <div class="row-sall-filter">
                <a class="btn-search-advance" onclick="set_advance();">Tìm kiếm nâng cao</a></div>
        </div>
        <div id="sall-filter-advance" class="sall-filter" 
            style="display:none;padding-bottom:10px">
            <div class="row-sall-filter" style=" margin:0">
                <table style="margin-bottom:0">
                    <tr>
                        <td>
                            <label>
                            Từ ngày</label>
                            <input id="date_from" class="date-picker date-time" name="date_from" 
                                style=" width:65px" type="text" value="01/11/2011" />
                        </td>
                        <td>
                            <label>
                            Đến ngày</label>
                            <input id="date_to" class="date-picker date-time" name="date_to" 
                                style=" width:65px" type="text" value="01/01/2012" />
                        </td>
                        <td>
                            <label>
                            Từ khóa</label><br />
                            <input name="keyword" style="width:100px" type="text" value="" />
                        </td>
                        <td>
                            <label>
                            Trong trường</label><br />
                            <select name="com_field" style="width:130px; height:22px;">
                                <option value="0">Tất cả</option>
                                <option value="1">Mã giao dịch</option>
                                <option value="2">Hóa đơn/Sản phẩm</option>
                                <option value="3">Email đối tác</option>
                                <option value="4">Tên đối tác</option>
                                <option value="5">Điện thoại</option>
                            </select>
                        </td>
                        <td>
                            <label>
                            Loại giao dịch</label><br />
                            <select id="ser_type" name="ser_type" onchange="set_status(this.value)" 
                                style="width: 130px; height:22px;">
                                <option selected="" value="0">Tất cả</option>
                                <option value="1">Nạp tiền</option>
                                <option value="2">Rút tiền</option>
                                <option value="3">Chuyển tiền/Thanh toán</option>
                                <option value="4">Nhận tiền/Bán hàng</option>
                                <option value="5">Hoàn lại</option>
                                <option value="6">Được hoàn lại</option>
                                <option value="7">Quyên góp</option>
                                <option value="8">Tặng tiền</option>
                            </select>
                        </td>
                        <td>
                            <label>
                            Trạng thái</label><br />
                            <select id="sta" name="ser_status" style="width:130px; height:22px">
                                <option value="0">Tất cả</option>
                            </select>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="clear">
            </div>
            <div class="row-sall-filter" style="margin:0 10px">
                <input class="button-content" type="submit" value="Tìm kiếm" />
                <a class="btn-compact" onclick="set_advance();">Tìm kiếm rút gọn</a>
            </div>
        </div>
    </div>
    </form>
    <div class="clear">
    </div>
<script language="javascript" type="text/javascript">
    set_status(0);
    $(function () {
        if ($('#filter_type').val() == 2) {
            $('#ssearch').hide();
            $('#sall-filter-advance').show();
        }
        else {
            $('#sall-filter-advance').hide();
            $('#ssearch').show();
        }
        $('.date-picker').datePicker({ clickInput: false, startDate: '01/01/2009' });
        $('.date-picker').each(function (index) {
            if ($(this).attr('disabled') == true) {
                $('.dp-choose-date').eq(index).hide();
            }
        });
        $('#filter_type_1').bind('click', function () {
            $('.date-time').attr('disabled', true);
            $('.dp-choose-date').hide();
            $('#option_time').attr('disabled', false);
        });
        $('#filter_type_2').bind('click', function () {
            $('.date-time').attr('disabled', false);
            $('.dp-choose-date').show();
            $('#option_time').attr('disabled', true);
        });
        //$('.date-pick').attr('disabled', ($('#option').val() != 9));
        //_setCheckboxFilterTransaction();
    });
    function set_advance() {
        var ssearch = document.getElementById('ssearch');
        if (ssearch.style.display == 'none') {
            $('#ssearch').show();
            $('#sall-filter-advance').hide();
            $('#filter_type').val(1);
        }
        else {
            $('#ssearch').hide();
            $('#sall-filter-advance').show();
            $('#filter_type').val(2);
        }
    }

    function set_filter(x) {
        //alert(x);
        document.location.href = "?portal=nganluong&page=" + $('#page').val() + "&filter_type=1&option_time=" + x;
    }
    function set_status(x) {

        $.ajax({
            type: "POST",
            url: "ajax.php",
            data: {
                fnc: "SetStatusTransaction",
                path: "transaction_history",
                id: x,
                status: $('#s_status').val()
            },
            beforeSend: function (xhr) {
                // $("#login_text_add").append("<span id='loging_add'>&nbsp;&nbsp; <strong>Đang load dữ liệu...</strong></span>");
            },
            timeout: 5000,
            success: function (response, status) {
                $('#sta').html(response);
            }
        });

    }
</script>
    <div id="transaction-history" class="box-content-square">
        <div id="transaction-history-title">
            <form method="post" name="frm_excel">
            <span style="float:right;">Trích xuất kết quả thành: <a class="icon-ex" 
                onclick="excel();">File Excel</a> </span>Có <span class="yel"><b><u>0</u></b></span> 
            giao dịch trong 3 Tháng gần đây (từ 01/11/2011 đến 01/01/2012)
            <div id="popup-applicant" 
                style="display:none;position:absolute;width:220px; z-index:100">
                <p style="color:#FF7007; font-size:13px">
                    <strong>CÁC TRƯỜNG CẦN TRÍCH XUẤT</strong><span style="float:right"><a 
                        href="javascript:;" onclick="close_popup();"><img 
                        src="../../Content/images/close-me.gif" /></a></span></p>
                <br />
                <input id="checkall" checked="checked" name="checkall" type="checkbox" 
                    value="0" /> Tất cả<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input checked="checked" name="arr_ex[]1" type="checkbox" value="1" /> Mã 
                GD<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input checked="checked" name="arr_ex[]2" type="checkbox" value="2" /> 
                Thời gian phát sinh<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input checked="checked" name="arr_ex[]3" type="checkbox" value="3" /> 
                Thời gian thanh toán<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input checked="checked" name="arr_ex[]4" type="checkbox" value="4" /> 
                Loại giao dịch<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input checked="checked" name="arr_ex[]5" type="checkbox" value="5" /> 
                Hình thức<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input checked="checked" name="arr_ex[]6" type="checkbox" value="6" /> Số 
                tiền<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input checked="checked" name="arr_ex[]7" type="checkbox" value="7" /> 
                Tình trạng<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input checked="checked" name="arr_ex[]8" type="checkbox" value="8" /> 
                Đối tác<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input checked="checked" name="arr_ex[]9" type="checkbox" value="9" /> 
                Email<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input checked="checked" name="arr_ex[]10" type="checkbox" value="10" /> 
                Điện thoại<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input checked="checked" name="arr_ex[]11" type="checkbox" value="11" /> 
                Địa chỉ nhận hàng<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input checked="checked" name="arr_ex[]12" type="checkbox" value="12" /> 
                Mã đơn hàng<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input checked="checked" name="arr_ex[]" type="checkbox" value="13" /> 
                Website bán hàng<br />
                <input class="button-content" name="export" type="submit" value="Trích xuất" />
		<!--<div align="right"><input type="button" class="button-content" value="Thoát" onclick="hideFormRequestActive();" /></div>-->
		        <div style="clear:both; height:5px; line-height:5px; overflow:hidden;">
                </div>
            </div>
            </form>
        </div>
        <div id="label-table" style="border-top:0;background-color:#fff;">
            <div id="bottom-transaction-detail" style="margin:0;float:left;">
                <span style="font-weight:bold;color:#555;">Trạng thái giao dịch: </span>&nbsp;&nbsp;<a 
                    href="http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=82&amp;id=321&amp;news_name=Quy-dinh-ve-tinh-trang-giao-dich-nhu-the-nao-&amp;cat=2" 
                    style="text-decoration:underline;" target="_blank">Xem giải thích</a>
            </div>
            <div id="bottom-transaction-detail0" 
                style="margin:0;float:left; padding-left:25px">
                <span class="icon-title" style="padding-left:5px;">Biểu tượng: </span>
                <span class="pay_direct">NGAY</span> <span class="pay_escrow">TẠM GIỮ</span>
            </div>
            <div style=" float:right;height:16px;">
                <span style="color:#555;font-weight:bold;">Màu sắc:&nbsp;&nbsp;</span>
                <img align="absmiddle" src="../../Content/images/icon_tra.gif" /> <span>Chưa thực hiện</span>
                <img align="absmiddle" src="../../Content/images/icon_trb.gif" /> <span>Đang tạm giữ</span>
                <img align="absmiddle" src="../../Content/images/icon_trc.gif" /> <span>Ðã hoàn thành</span>
                <img align="absmiddle" src="../../Content/images/icon_trd.gif" /> <span>Bị từ chối</span>
            </div>
        </div>
        <div id="data-grid" class="box-content-square-content">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <td class="title-box-table data-grid-header sort-numeric" width="70">
                            <span class="title-box-table-content">Mã GD</span></td>
                        <td class="title-box-table data-grid-header sort-date transaction-order-desc" 
                            width="90">
                            <span class="title-box-table-content">Thời gian</span></td>
                        <td class="title-box-table data-grid-header" width="120">
                            <span class="title-box-table-content">Loại giao dịch</span></td>
                        <td class="title-box-table data-grid-header">
                            <span class="title-box-table-content">Đối tác </span>
                        </td>
                        <td class="title-box-table data-grid-header sort-numeric" width="80">
                            <span class="title-box-table-content">Số tiền</span></td>
                        <td class="title-box-table data-grid-header sort-numeric" width="100">
                            <span class="title-box-table-content">Hoá đơn</span></td>
                        <td class="title-box-table data-grid-header" width="120">
                            <span class="title-box-table-content">Trạng thái</span></td>
                        <td class="title-box-table" style="border-right:0;" width="130">
                            <strong>Thao tác</strong></td>
                    </tr>
                </thead>
                <tr class="data-empty">
                    <td align="center" colspan="9">
                        Không tồn tại giao dịch nào thoả mãn điều kiện tìm kiếm!</td>
                </tr>
            </table>
        </div>
    </div>
            


<script language="javascript">
    $('#data-grid').dataGrid({
        menuOrderAscClick: function (th, table) {
            $('.menu-order-box', th).hide();
            $('td.data-grid-header', table).removeClass('transaction-order-desc transaction-order-asc');
            th.addClass('transaction-order-asc').order();
        },
        menuOrderDescClick: function (th, table) {
            $('.menu-order-box', th).hide();
            $('td.data-grid-header', table).removeClass('transaction-order-desc transaction-order-asc');
            th.addClass('transaction-order-desc').order({ order: 'desc' });
        }
    });

    $(function () {
        $(".att-pro").cluetip({
            splitTitle: '|',
            arrows: true,
            sticky: true,
            clickThrough: true,
            mouseOutClose: true,
            closePosition: 'title',
            closeText: 'Close'
        });
    });

</script>
<script type="text/javascript">
    function close_popup() {
        $("#layout-back").fadeOut("slow").remove();
        $("#popup-applicant").fadeOut("slow");
    }
    function excel() {
        var width = $('body').width();
        var height = $('body').height();
        var $layout = $('<div id="layout-back">&nbsp;</div>');



        $layout.css({ 'width': '100%', 'height': height + 'px', 'top': '0px' });
        $layout.appendTo('body');
        $('#popup-applicant').css({
            'zIndex': 100,
            'left': parseInt((width - 300) / 2),
            'top': $(window).scrollTop() + 80
        });
        $('#popup-applicant').fadeIn("slow");

        centerPopup();
        return false;
    }
    $(function () {
        $('#checkall').change(function () {
            if ($('#checkall').attr('checked') == true) {
                $("input[name='arr_ex[]']").attr('checked', 'checked');
            } else {
                $("input[name='arr_ex[]']").attr('checked', '');
            }
        });
        $("input[name='arr_ex[]']").change(function () {
            $('#checkall').attr('checked', '');
        });
    });


</script>

</asp:Content>
