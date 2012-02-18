<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <div id="menu-nav-content">
	<div id="menu-nav-content-l"></div>
	<div id="menu-nav-content-r"></div>
	<div id="menu-nav-content-c">
		<div id="menu-nav-content-main">
			<ul>
			
				<li class="active " style="display:block"><a href="#"><span>GIAO DỊCH</span></a></li>
				<li class=" " style="display:block"><a href="#"><span>KHIẾU NẠI</span></a></li>
				<li class=" " style="display:block"><a href="#"><span>TÀI KHOẢN</span></a></li>
				<li class=" end" style="display:block"><a href="#"><span>TÍCH HỢP THANH TOÁN</span></a></li>
			</ul>
		</div>
		<div id="menu-nav-content-sub">
			<ul>
			    <li class=" active" style="display:block"><a href="/Public/LichSuGiaoDich"><span>Tổng hợp</span></a></li>
				<li class=" " style="display:block"><a href="/Public/LichSuGiaoDich"><span>Lịch sử giao dịch</span></a></li>				
				<li class=" " style="display:block"><a href="/Public/NapTien"><span>Nạp tiền</span></a></li>
                <li class="" style="display:block"><a href="/Public/RutTien"><span>Rút tiền</span></a></li>	
				<li class=" " style="display:block"><a href="/Public/ChuyenTien"><span>Chuyển tiền</span></a></li>
                <li class=" " style="display:block"><a href="/Public/ChuyenTienCungMoigioi"><span>Chuyển tiền cùng môi giới</span></a></li>
                <li class=" " style="display:block"><a href="/Public/ChuyenTienKhacMoigioi"><span>Chuyển tiền khác môi giới</span></a></li>					
				<li class=" end" style="display:block"><a href="#"><span>Nhận tiền hoàn lại</span></a></li>
			</ul>
		</div>
	</div>
</div>
		<style>
	#th-r .install-account{
		border:1px solid #ccc;
		float:right;
	}
	#th-r {
		width:220px;		
	}
	#th-r h3 {
		background:url(webskins/skins/nganluong/../../Content/images/bg-box-title.gif) repeat-x scroll 0 0 transparent;
		border:1px solid #FFFFFF;
		color:#555555;
		font-size:12px;
		height:26px;
		line-height:26px;
		text-transform:uppercase;
		padding:0;
		display:block;		
	}
	#th-r h3 span{
		margin-left:5px;
		display:block;
	}
	#th-l .thongtintk{
		border:1px solid #D2D2D2;
		margin:0px 0 10px 0;
		background:#fff;
		height:45px;
		line-height:45px;
		padding:1px;
		width:698px;
		overflow:hidden;
		}
	#th-l .thongtintk table{
		background:#e8f1fa;
		}
	#th-l .thongtintk th, #th-l .thongtintk td{
		padding:0 2px;
		width:16%;
		}
	#th-l .thongtintk th{
		text-align:right;
		font-weight:normal;
		}
	#th-r .install-account{
		border:1px solid #ccc;
		width:220px;
		margin-bottom:10px;
		}
	#th-r .install-account h3{
		background:url(webskins/skins/nganluong/../../Content/images/bg-box-title.gif) repeat-x 0 0;
		height:26px;
		line-height:26px;
		color:#555;
		border:1px solid #fff;
		text-transform:uppercase;
		font-size:12px;
		}
	.install-account h3 span{
		margin:0 5px;
		}
	.install-account li{
		margin:5px 5px;
		list-style:none;
		padding-left:12px;
		background:url(webskins/skins/nganluong/../../Content/images/bulit-.gif) no-repeat 0 6px;
		}
	.install-account li a{
		/*color:#084482;*/
		}
	.myaccount-adv{
			margin-top:10px;
		}
	.account_info {
		border:1px solid #ccc;
		margin-bottom:10px;
		width:700px;
	}
	.account_info th{
		font-weight:normal;
		font-size:11px;
		text-align:right;
		vertical-align:top;
		padding-right:10px;
		width:70px;
	}
	.account_info td{
		font-weight:bold;
		font-size:11px;
		text-align:left;
		color:#333;
		vertical-align:top;
	}
	
	#transaction-history-title{
	line-height:30px;
	height:30px;
	background:url(webskins/skins/nganluong/../../Content/images/bg-tab-content-transaction-top.gif) repeat-x 0 100%;
	padding-left:5px;
	vertical-align:middle;
	}

#transaction-history-title .icon-ex{
	background:url(webskins/skins/nganluong/../../Content/images/icon-exel.gif) no-repeat 0 0;
	padding-left:20px;
	margin-right:10px;
	margin-left:10px;
	}
	/*--------màu sắc các dòng trong bảng ----*/
table .cls-white td{
	background:#fff;
	border-bottom:1px solid #f0f0f0;
	vertical-align:top;
	}
table .cls-white-last td{
	background:#fff;
	border-bottom:0;
}

table .cls-blue td{
	/*background:#f7fbfe;*/
	background:#5A965B; 
	border-bottom:1px solid #fcfcfc;
	vertical-align:top;
	color:#fff;	
	}
table .cls-blue a{
	color:#fff;
}
table .cls-blue-last a{
	color:#fff;
}
table .cls-blue-last td{
	background:#5A965B;
	border-bottom:0;	
	vertical-align:top;
	color:#fff;	
}

table .cls-yellow td{
	background:#FFFF99;
	border-bottom:1px solid #f0f0f0;
	vertical-align:top;
	}
table .cls-yellow-last td{
	background:#FFFF99;
	border-bottom:0;
}

table .cls-red td{
	background:#F00001;
	border-bottom:1px solid #f0f0f0;
	vertical-align:top;
	}
table .cls-red-last td{
	background:#F00001;
	border-bottom:0;
}
/*--------hết sắc các dòng trong bảng ----*/

.button-box-buttom a{
	text-decoration:underline;
}
	
</style>
<div id="title">
	<span class="yel">Thông tin tổng hợp </span>
</div>
<div id="th-r" style="float:right;width:222px;">
	<div class="install-account" style="margin-top:0px;">
		<h3><span>CẤU HÌNH TÀI KHOẢN </span></h3>
		<ul>
			<li><a href="https://www.nganluong.vn/?portal=nganluong&page=user_info">Thay đổi thông tin cá nhân</a></li>
			<li><a href="https://www.nganluong.vn/?portal=nganluong&page=change_pay_password">Thay đổi mật khẩu</a></li>
			<li><a href="https://www.nganluong.vn/?portal=nganluong&page=user_email">Đổi email chính</a></li>
			<li><a href="https://www.nganluong.vn/?portal=nganluong&page=user_mobile">Đổi điện thoại chính</a></li>
			<li><a href="https://www.nganluong.vn/?portal=nganluong&page=user_bank">Tài khoản ngân hàng</a></li>
			<li><a href="https://www.nganluong.vn/?portal=nganluong&page=user_otp_config">Hình thức xác minh OTP</a></li>
			<li><a href="https://www.nganluong.vn/?portal=nganluong&page=user_contact">Danh bạ đối tác giao dịch</a></li>
			<li><a href="https://www.nganluong.vn/?portal=nganluong&page=user_fee_shipping">Phí vận chuyển</a></li>						
		</ul>
	</div>
	<!--
	<div class="clear"></div>
	<div class="myaccount-adv" style="border: 1px solid #eee;margin-top:5px;">
		<a href="http://event.nganluong.vn/tientrieu/?utm_source=banner_onsite&utm_medium=news&utm_campaign=Vietcombank" target="_blank"><img src="https://www.nganluong.vn/data/../../Content/images/nganluong/vietcombank.gif" style="width:220px;"/></a>
	</div>
	-->
</div><div id="th-l">
	<div class="box-content-square" id="transaction-history" style="width:698px;">
		<div id="transaction-history-title">
			<form method="post" name="frm_excel">			
				<span style="float:right;">Trích xuất kết quả thành: 
					<a onclick="excel();" class="icon-ex" style="cursor:pointer;">File Excel</a>           
				</span>
				<strong>Danh sách 5 giao dịch gần đây</strong> <span style="margin-left:10px;">[ <a href="https://www.nganluong.vn/?portal=nganluong&page=transaction_history">Xem tất cả</a> ]</span>
			
			<div id="popup-applicant" style="display:none;position:absolute;width:220px; z-index:100">
			<p style="color:#FF7007; font-size:13px"><span style="float:left;font-weight:bold;">CÁC TRƯỜNG TRÍCH XUẤT</span><span style="float:right"><a href="javascript:;" onclick="close_popup();"><img src="../../../Content/images/close-message.gif" style="padding-top:0px;"></a></span></p>
			<br>
				 <input type="checkbox" name="checkall" value="0" id="checkall" checked="checked"> <strong>Chọn / Bỏ chọn</strong><br>
				
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="1" checked="checked"> Mã GD<br>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="2" checked="checked"> Thời gian phát sinh<br>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="3" checked="checked"> Thời gian thanh toán<br>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="5" checked="checked"> Hình thức<br>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="6" checked="checked"> Số tiền<br>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="7" checked="checked"> Tình trạng<br>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="9" checked="checked"> Email<br>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="10" checked="checked"> Điện thoại<br>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="11" checked="checked"> Địa chỉ nhận hàng<br>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="12" checked="checked"> Mã đơn hàng<br>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="13" checked="checked"> Website bán hàng<br>

				<input type="submit" name="export" value="Trích xuất" class="button-content">
			
			<div style="clear:both; height:5px; line-height:5px; overflow:hidden;"></div>
			</div>
			</form>
		</div>
		<div id="label-table" style="border-top:0;">		
			<div id="bottom-transaction-detail" style="margin:0;float:left;">
				<span class="icon-title" style="padding-left:5px;">Biểu tượng: </span>
				<span class="pay_direct"> NGAY</span>
				<span class="pay_escrow" style="margin-right:0;"> TẠM GIỮ</span>
				 
			</div>
			<div style=" float:right;height:16px;">
				<span style="color:#555;font-weight:bold;">Màu sắc:&nbsp;&nbsp;</span>	
				<img src="../../Content/../../Content/images/icon_tra.gif" align="absmiddle">
				<span>Chưa thực hiện</span>			 
				<img src="../../Content/images/icon_trb.gif" align="absmiddle">
				<span>Đang tạm giữ</span>
				<img src="../../Content/images/icon_trc.gif" align="absmiddle">
				<span>Ðã hoàn thành</span>
				<img src="../../Content/images/icon_trd.gif" align="absmiddle">
				<span>Bị từ chối</span>		 
			</div>       		
		</div>
		<div id="data-grid" class="box-content-square-content">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<thead>
				<tr>
				 <td class="title-box-table" width="60">Mã GD</td>
				  <td class="title-box-table data-grid-header" width="95"><div class="transaction-select"><span>&nbsp;</span><div class="menu-order-box"><div><a href="https://www.nganluong.vn/?portal=nganluong&page=user_transaction_info#" class="order-asc">Sắp xếp tăng dần</a><a href="https://www.nganluong.vn/?portal=nganluong&page=user_transaction_info#" class="order-desc end">Sắp xếp giảm dần</a></div></div></div><span class="title-box-table-content">Thời gian</span></td>
				  <td class="title-box-table data-grid-header" width="70"><div class="transaction-select" style="display: none; "><span>&nbsp;</span><div class="menu-order-box"><div><a href="https://www.nganluong.vn/?portal=nganluong&page=user_transaction_info#" class="order-asc">Sắp xếp tăng dần</a><a href="https://www.nganluong.vn/?portal=nganluong&page=user_transaction_info#" class="order-desc end">Sắp xếp giảm dần</a></div></div></div><span class="title-box-table-content">Loại</span></td>			 
				  <td class="title-box-table data-grid-header"><div class="transaction-select"><span>&nbsp;</span><div class="menu-order-box"><div><a href="https://www.nganluong.vn/?portal=nganluong&page=user_transaction_info#" class="order-asc">Sắp xếp tăng dần</a><a href="https://www.nganluong.vn/?portal=nganluong&page=user_transaction_info#" class="order-desc end">Sắp xếp giảm dần</a></div></div></div><span class="title-box-table-content">Ðối tác </span></td>	
				  <td class="title-box-table data-grid-header sort-numeric" width="85"><div class="transaction-select"><span>&nbsp;</span><div class="menu-order-box"><div><a href="https://www.nganluong.vn/?portal=nganluong&page=user_transaction_info#" class="order-asc">Sắp xếp tăng dần</a><a href="https://www.nganluong.vn/?portal=nganluong&page=user_transaction_info#" class="order-desc end">Sắp xếp giảm dần</a></div></div></div><span class="title-box-table-content">Số tiền</span></td>  
				  <td class="title-box-table data-grid-header" width="115"><div class="transaction-select"><span>&nbsp;</span><div class="menu-order-box"><div><a href="https://www.nganluong.vn/?portal=nganluong&page=user_transaction_info#" class="order-asc">Sắp xếp tăng dần</a><a href="https://www.nganluong.vn/?portal=nganluong&page=user_transaction_info#" class="order-desc end">Sắp xếp giảm dần</a></div></div></div><span class="title-box-table-content">Trạng thái</span></td>       
				  <td class="title-box-table" style="border-right:0;" width="130">Thao tác</td>
				</tr>
				</thead>
				
		<tbody><tr class="data-empty">
		  <td colspan="9" align="center">Không tồn tại giao dịch nào!</td>
		</tr>
			
				</tbody>			
			  </table>
		</div>
		  
		<!-- BEGIN BlockPaging -->
		<div class="button-box-buttom">
			<span style="color:#555;font-weight:bold;">Xem theo loại giao dịch: </span>
			<a href="https://www.nganluong.vn/?portal=nganluong&page=transaction_history">Tất cả</a>&nbsp;
			|&nbsp;
			<a href="https://www.nganluong.vn/?portal=nganluong&page=transaction_history&type=deposit">Nạp tiền</a>&nbsp;
			|&nbsp;
			<a href="https://www.nganluong.vn/?portal=nganluong&page=transaction_history&type=withdraw">Rút tiền</a>	&nbsp;
			|&nbsp;
			<a href="https://www.nganluong.vn/?portal=nganluong&page=transaction_history&type=transfer">Chuyển tiền</a>&nbsp;
			|&nbsp;
			<a href="https://www.nganluong.vn/?portal=nganluong&page=transaction_history&type=receiving">Nhận tiền</a>&nbsp;
			|&nbsp;
			<a class="end" href="https://www.nganluong.vn/?portal=nganluong&page=transaction_history&type=refund">Hoàn lại</a>											
			<div class="clear"></div>
		</div>
		<!-- END BlockPaging -->
		
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
            'top': $(window).scrollTop() + 200
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
