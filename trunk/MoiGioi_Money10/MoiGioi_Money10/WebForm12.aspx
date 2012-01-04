<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm12.aspx.cs" Inherits="MoiGioi_Money10.WebForm12" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" SYSTEM "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<head>

<meta name="revisit-after" content="1 days">
<meta name="verify-v1" content="5aMXCOH9gNNFj+gs9RUKoOCWGV9t35FxOxCaokfoiWs=">
<!--<base href="https://www.nganluong.vn/">-->

<title>Tổng hợp giao dịch | NgânLượng.vn</title>
<meta name="keywords" content="Ví điện tử, Cổng thanh toán trực tuyến, Giao dịch an toàn, Bảo vệ người mua, bảo hiểm giao dịch, Thanh toán Tạm giữ, Thanh toán Ngay,  Thanh toán Nhanh chóng - Tiện lợi, Tích hợp thanh toán, Thanh toán, Nạp tiền, Rút tiền, Chuyển tiền, Yêu cầu thanh toán, Mua sắm trực tuyến">	
<meta name="description" content="NgânLượng.vn là Ví điện tử và Cổng Thanh toán Trực tuyến (TTTT) chuyên dùng cho Thương mại Điện tử (TMĐT) tiên phong và hàng đầu tại Việt Nam, cả về sản phẩm dịch vụ, độ phủ thị trường và lưu lượng thanh toán">

<script type="text/javascript" src="js1/jquery_m.js"></script>
<script type="text/javascript" src="js1/heart_me.js"></script>
<script type="text/javascript" src="js1/set_inpu.js"></script>
<script type="text/javascript" src="js1/datepick.js"></script>
<script type="text/javascript" src="js1/date0000.js"></script>
<script type="text/javascript" src="js1/jquery00.js"></script>
<link rel="stylesheet" href="css1/styles00.css" type="text/css">
<link rel="stylesheet" href="css1/include0.css" type="text/css">
<link rel="stylesheet" href="css1/taskbar0.css" type="text/css">
<link rel="stylesheet" href="css1/hotnews0.css" type="text/css">
<link rel="stylesheet" href="css1/jquery00.css" type="text/css">
</head>
<link rel="shortcut icon" href="../images/nl000000.gif">
<div id="taskbar">
	<div class="taskbar">
    	<div class="taskbar-sort">
        	<ul>
            
				<li><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=home" class="active" target><span class="icon-tasbar-nl"></span><span>NgânLượng.vn</span></a></li>
				<li><a href="https://www.nganluong.vn/?portal=paypal&amp;page=home" class target><span class="icon-tasbar-pp"></span><span>PayPal</span></a></li>
				<li><a href="http://dg.nganluong.vn/" class="" target=""><span>Nội dung số</span></a></li>
				<li><a href="http://shopping.nganluong.vn/" class="" target=""><span>Mua sắm</span></a></li>
				<li><a href="http://news.nganluong.vn/" class="" target=""><span>Tin tức</span></a></li>
				<li><a href="http://help.nganluong.vn/" class="" target=""><span>Trợ giúp &amp; Tích hợp</span></a></li>    
            </ul>
        </div>
        <div class="taskbar-support">
        	<a href class="bt-support"></a>
            <div class="support-content" style="display:none;">
				<h3>Hỗ trợ trực tuyến</h3>
				<p><span style="color:#006699"><strong>Thời gian làm việc: </strong></span></p>
				<p>- <b>Thứ 2 đến thứ 6</b>: từ 08h30 đến 12h, 13h đến 17h30</p>
				<p>- <b>Thứ 7</b>:  từ 08h30 - 12h</p>
				<p>- <b>Ngoài giờ hành chính</b>: gọi tới số hotline <span style="color:#ff5a00;font-weight:bold;">0984-863-761</span> hoặc email tới support@nganluong.vn</p>				
				<h4><span>Hỗ trợ chung</span></h4>
				<ul>
					<li>
						<label>» Hà Nội:</label>
						<span class="sp-phone"><img src="../images/icon-mob.gif"><strong>1900-5858-99</strong> (máy lẻ 111)</span>
						<span class="sp-ym"><a href="ymsgr:sendim?nganluongdotvn" title="Chat với dịch vụ hỗ trợ khách hàng của NgânLượng.vn bằng Yahoo! Messenger"><img src="../images/icon-ym0.gif" title="Chat với dịch vụ hỗ trợ khách hàng của NgânLượng.vn bằng Yahoo! Messenger">Hỗ trợ dịch vụ 1</a></span>
						<span class="sp-skype end"><a href="callto:nganluongdotvn" title="Chat với dịch vụ hỗ trợ khách hàng của NgânLượng.vn bằng Skype"><img src="../images/icon-sky.gif" title="Chat với dịch vụ hỗ trợ khách hàng của NgânLượng.vn bằng Skype">Hỗ trợ dịch vụ 1</a></span>
					</li>
					<li>
						<label>» TP.HCM:</label>
						<span class="sp-phone"><img src="../images/icon-mob.gif"><strong>1900-5858-99</strong> (máy lẻ 101)</span>
						<span class="sp-ym"><a href="ymsgr:sendim?nganluongdotvn_hcm" title="Chat với dịch vụ hỗ trợ khách hàng của NgânLượng.vn bằng Yahoo! Messenger"><img src="../images/icon-ym0.gif" title="Chat với dịch vụ hỗ trợ khách hàng của NgânLượng.vn bằng Yahoo! Messenger">Hỗ trợ dịch vụ 2</a></span>
						<span class="sp-skype end"><a href="callto:nganluongdotvn_hcm" title="Chat với dịch vụ hỗ trợ khách hàng của NgânLượng.vn bằng Skype"><img src="../images/icon-sky.gif" title="Chat với dịch vụ hỗ trợ khách hàng của NgânLượng.vn bằng Skype">Hỗ trợ dịch vụ 2</a></span>
					</li>
				</ul>
				<h4><span>Hỗ trợ tích hợp</span></h4>
				<ul>
					<li>
						<label>Hỗ trợ:</label>
						<span class="sp-phone"><img src="../images/icon-mob.gif"><strong>1900-5858-99</strong> (ext 102)</span>
						<span class="sp-ym"><a href="ymsgr:sendim?nganluong_sup_tech" title="Chat với dịch vụ hỗ trợ khách hàng của NgânLượng.vn bằng Yahoo! Messenger"><img src="../images/icon-ym0.gif" title="Chat với dịch vụ hỗ trợ khách hàng của NgânLượng.vn bằng Yahoo! Messenger">Hỗ trợ tích hợp 1</a></span>
						<span class="sp-skype end"><a href="callto:nganluong_sup_tech" title="Chat với dịch vụ hỗ trợ khách hàng của NgânLượng.vn bằng Skype"><img src="../images/icon-sky.gif" title="Chat với dịch vụ hỗ trợ khách hàng của NgânLượng.vn bằng Skype">Hỗ trợ tích hợp 1</a></span>
					</li>					
				</ul>
				<p>- <strong>Hỏi đáp</strong>: <a href="http://vizum.vn/" target="_blank" rel="nofollow">Trao đổi trên diễn đàn vizum.vn</a></p>
				<p>- Đường dây nóng lãnh đạo tiếp nhận ý kiến khách hàng: <span style="color:#ff5a00;font-weight:bold;">093.665.1441</span></p>
            </div>
        </div>
    </div>
</div>
<div style="height:35px;"></div>
<script language="javascript">
    $('.bt-support').click(function (event) {
        if ($(this).hasClass('active')) {
            $('.support-content').slideUp();
            $(this).removeClass('active');
        } else {
            $('.support-content').slideDown();
            $(this).addClass('active');
        }
        return false;
    });
    $('.support-content').click(function (event) {
        event.stopPropagation();
    });
    $(document).click(function () {
        $('.support-content').slideUp();
        $('.bt-support').removeClass('active');
    });
</script>
<div id="wrapper">
	<style type="text/css">
.news-view {
	position:relative;
	height:25px;
	overflow:hidden; 
}
.news-view li {
	position:absolute;
	top:25px;
	left:0px;
	display:block; height:25px; line-height:25px;
	background-color:#FFFFFF;
}
.news-view li.active {
	top:0px;
}
</style>
<script language="javascript">
    var hotnews_timeout = null;
    var hide_timeout = null;
    var hotnews_index = 0;
    function viewHotNews(index) {
        if (hotnews_timeout != null) {
            clearTimeout(hotnews_timeout);
        }
        //alert($('#news_view').length);
        var $row = $('#news_view li');
        var $row_list = $('#news_view_list a');
        //alert($row.length);
        if ($row.length > 1) {
            hotnews_index = (index + 1) >= $row.length ? 0 : index + 1;
            $row.eq(index).animate({ top: '-25px' }, 500, function () {
                $row.eq(index).css({ top: '25px' });
                $row_list.eq(index).removeClass('active');
                $row.eq(hotnews_index).animate({ top: '0px' }, 500, function () {
                    $row_list.eq(hotnews_index).addClass('active');
                    hotnews_timeout = setTimeout('viewHotNews(' + hotnews_index + ')', 2000);
                });
            });
        }
    }


    $(function () {
        var flag = false;
        hotnews_timeout = setTimeout('viewHotNews(0)', 2000);
        $('#news-hot-box').hover(function () {
            $('.news-hot-sub').slideDown();
            if (hotnews_timeout != null) {
                clearTimeout(hotnews_timeout);
            }

            if (hide_timeout != null) {
                clearTimeout(hide_timeout);
            }

        }, function () {
            hotnews_timeout = setTimeout('viewHotNews(' + hotnews_index + ')', 2000);
            hide_timeout = setTimeout('hideBox()', 5000);
        })
    });

    function hideBox() {
        $('.news-hot-sub').slideUp();
    }
</script>
<div id="body-top">
	<div id="logo"><h1 style="padding:0;height:65px;margin:0;"><a href="https://www.nganluong.vn/">NgânLượng.vn - Ví điện tử, Cổng thanh toán trực tuyến - Bảo vệ người mua</a></h1></div>
		
	<div id="account-top">
		<div id="use-login">
			<span id="link-use-login">&nbsp;&nbsp;[ <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_info">Xem tài khoản</a> ]&nbsp;&nbsp;[ <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_logout">Đăng xuất</a> ]</span>			
			<span id="name-use-login">Phan Quang Khải</span>
			<span id="icon-man-login" style="margin-right:5px;"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=transaction_history#"><img src="../images/icon-man.gif" border="0"></a></span>
		</div>
		<div id="acc-type-payment">
			<a href="https://www.nganluong.vn/?portal=nganluong&amp;page=transaction_history#" class="icon-question">
				<img src="../images/icon-que.gif">
				<div id="acc-type-payment-tooltip">
					<div class="acc-type-payment-tooltip">
						<span><img src="../images/acc-stat.gif"></span>
						<div class="acc-type-payment-tooltip-ct">
							<p>Cài đặt này chỉ dùng cho các tài khoản tích hợp thanh toán NgânLượng.vn vào website bán hàng. Nó tác động đến hầu hết các mặt của giao dịch: cách tích hợp, giới hạn giao dịch, phí và hình thức giao dịch (ngay hay tạm giữ), OTP, xử lý quy trình xử lý khiếu nại.</p>
							<p><strong>Ghi chú:</strong> nếu bạn chỉ dùng NgânLượng.vn để mua hàng thì không cần quan tâm đến cài đặt này.</p>
						</div>
					</div>
				</div>
			</a>
			<span>Hình thức bán hàng:</span>
			<span class="acc-type-payment">Hàng hóa vật chất</span>
			[ <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_setup">Thay đổi</a> ]
		</div>
	</div>
	
	
	<div class="news-hot" id="news_hot">  	
		   <ul class="news-view" id="news_view">
                
	<li class="active"><a href="http://help.nganluong.vn/chi-tiet-49/2/4369/Vi-sao-nen-su-dung-NganLuong.vn:-24-diem-khac-biet.html" class="active">NgânLượng.vn TỰ HÀO LÀ SỐ MỘT với 24 điểm khác biệt<!--<span class="news-hot-date">(24/11/2011)</span>--></a></li>
            </ul>
            <div class="news-hot-box">
                <span class="btn-news-hot"><a href="javascript:;" id="hot-new"></a></span>
                <ul class="news-hot-sub" id="news_view_list">
					
	<li class="active"><a href="http://help.nganluong.vn/chi-tiet-49/2/4369/Vi-sao-nen-su-dung-NganLuong.vn:-24-diem-khac-biet.html" class="active">NgânLượng.vn TỰ HÀO LÀ SỐ MỘT với 24 điểm khác biệt<!--<span class="news-hot-date">(24/11/2011)</span>--></a></li>
                </ul>
            </div>
        </div>	
</div>
<div class="clear"></div>

<div id="shortcut-use-login" style="display:none; position:absolute;">
	<div id="name-use-login-shortcut"><a href>Phan Quang Khải</a></div>
	<div id="tag-use-login-shortcut">
		<ul>
			<li><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_info">Xem thông tin tài khoản</a></li>
			<li><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=transaction_overview">Lịch sử giao dịch</a></li>
			<li><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=payment_request">Thực hiện giao dịch</a></li>
			<li><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=complaint">Quản trị khiếu nại</a></li>
            <li><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=payment_integrate_homepage">Tích hợp thanh toán</a></li>
		</ul>
	</div>
	<div id="button-use-login-shortcut"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_logout"><input name type="button" class="button-content" value="Đăng xuất" onclick="document.location.href='?portal=nganluong&amp;page=user_logout';"></a></div>
</div>
	<div id="body">
		<div id="content">	
		<div id="menu-nav-content">
	<div id="menu-nav-content-l"></div>
	<div id="menu-nav-content-r"></div>
	<div id="menu-nav-content-c">
		<div id="menu-nav-content-main">
			<ul>
			
				<li class="active " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_transaction_info"><span>GIAO DỊCH</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=complaint&amp;type=all"><span>KHIẾU NẠI</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_info"><span>TÀI KHOẢN</span></a></li>
				<li class=" end" style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=payment_integrate_homepage"><span>TÍCH HỢP THANH TOÁN</span></a></li>
			</ul>
		</div>
		<div id="menu-nav-content-sub">
			<ul>
			
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_transaction_info"><span>Tổng hợp</span></a></li>
				<li class="active " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=transaction_history"><span>Lịch sử giao dịch</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=card_transaction"><span>Giao dịch thẻ cào</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=deposit"><span>Nạp tiền</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=transfer"><span>Chuyển tiền</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=withdraw"><span>Rút tiền</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=payment_request"><span>Đề nghị thanh toán</span></a></li>
				<li class=" end" style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=receiving_refund"><span>Nhận tiền hoàn lại</span></a></li>
			</ul>
		</div>
	</div>
</div>
		<div id="title">
	<span class="yel">Lịch sử giao dịch trên hệ thống NgânLượng.vn</span>	
</div>

<div id="balance-activities">
	<div id="balance-activities-content">
		<p id="balance-activities-content-title">Số dư khả dụng</p>
		<p id="balance-activities-content-view"><span class="yel" id="balance-content">0</span><br><span class="span-grey">(VND)</span></p>
	</div>
</div>
<form method="get" name="frm_search">
	<input type="hidden" value="nganluong" name="portal">
	<input type="hidden" value="transaction_history" name="page" id="page">
	<input type="hidden" value="1" id="filter_type" name="filter_type">
	<input type="hidden" value="0" id="s_status" name="s_status">
 <div class="box-content-square" id="transaction-history-sell-filter">
                <div class="sall-filter" id="ssearch" style="padding-bottom:10px">
                	<div class="row-sall-filter" style=" margin:0">
					<table style=" margin-bottom:0">
						<tr>
						<td>
                    	<div class="check-time-filter">
                        	<label>Chọn thời gian:</label>
                           <p><select name="option_time" id="option_time" style="width: 180px; height:22px;" onchange="set_filter(this.value)"><option value="1">Hôm nay</option><option value="2">Hôm qua</option><option value="3">Tuần này</option><option value="4">Tuần trước</option><option value="5">7 ngày gần đây</option><option value="6">Tháng này</option><option value="7">Tháng trước</option><option value="8" selected>3 Tháng gần đây</option><option value="9">Tất cả</option></select></p>
                        </div>
						</td>
						<td>
                        <div class="check-other-filter">
                        	<label style="padding-right:140px;">Xem theo loại giao dịch:</label>
                            <p><select name="cbo_type" id="cbo_type" style="width: 130px; height:22px;" onchange="document.location.href='?portal=nganluong&amp;page=transaction_history&amp;type='+this.value;"><option value selected>Tất cả</option><option value="deposit">Nạp tiền</option><option value="withdraw">Rút tiền</option><option value="transfer">Chuyển tiền</option><option value="receiving">Nhận tiền</option><option value="refund">Hoàn lại</option></select></p>
                        </div>
						</td>
						</tr>
						</table>
                    </div>
                    <div class="clear"></div>
                    <div class="row-sall-filter"><a onclick="set_advance();" class="btn-search-advance">Tìm kiếm nâng cao</a></div>
                </div>
                <div class="sall-filter" id="sall-filter-advance" style="display:none;padding-bottom:10px">
                	<div class="row-sall-filter" style=" margin:0">
                    	<table style="margin-bottom:0">
							<tr>
								<td>
                            	<label>Từ ngày</label>
                                <input type="text" name="date_from" id="date_from" value="01/11/2011" class="date-picker date-time" style=" width:65px">
                           		</td>
								<td>
                            	<label>Đến ngày</label>
                               <input type="text" class="date-picker date-time" value="01/01/2012" id="date_to" name="date_to" style=" width:65px">
                           		</td>
								<td>
                            	<label>Từ khóa</label><br>
                                <input name="keyword" value type="text" style="width:100px">
                           		</td>
								<td>
                            	<label>Trong trường</label><br>
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
                          
                            	<label>Loại giao dịch</label><br>
                                <select name="ser_type" id="ser_type" style="width: 130px; height:22px;" onchange="set_status(this.value)"><option value="0" selected>Tất cả</option><option value="1">Nạp tiền</option><option value="2">Rút tiền</option><option value="3">Chuyển tiền/Thanh toán</option><option value="4">Nhận tiền/Bán hàng</option><option value="5">Hoàn lại</option><option value="6">Được hoàn lại</option><option value="7">Quyên góp</option><option value="8">Tặng tiền</option></select>
                           		</td>
								<td>
                            	<label>Trạng thái</label><br>
                                <select name="ser_status" style="width:130px; height:22px" id="sta">
									<option value="0">Tất cả</option>
								</select>
                           		</td>
							</tr>
						</table>
                    </div>
                    <div class="clear"></div>
                    <div class="row-sall-filter" style="margin:0 10px">
                    	<input type="submit" class="button-content" value="Tìm kiếm">
                        <a onclick="set_advance();" class="btn-compact">Tìm kiếm rút gọn</a>
                    </div>
                </div>
            </div>
</form>

<div class="clear"></div>
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
</script><div class="box-content-square" id="transaction-history">
	<div id="transaction-history-title">
		<form method="post" name="frm_excel">  
		
			<span style="float:right;">Trích xuất kết quả thành: 
				<a onclick="excel();" class="icon-ex">File Excel</a>           
			</span>
			Có <span class="yel"> <b><u>0</u></b></span> giao dịch trong 3 Tháng gần đây (từ 01/11/2011 đến 01/01/2012)
		
		<div id="popup-applicant" style="display:none;position:absolute;width:220px; z-index:100">
		<p style="color:#FF7007; font-size:13px"><strong>CÁC TRƯỜNG CẦN TRÍCH XUẤT</strong><span style="float:right"><a href="javascript:;" onclick="close_popup();"><img src="../images/close-me.gif"></a></span></p>
		<br>
			 <input type="checkbox" name="checkall" value="0" id="checkall" checked="checked"> Tất cả<br>
			
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="1" checked="checked"> Mã GD<br>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="2" checked="checked"> Thời gian phát sinh<br>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="3" checked="checked"> Thời gian thanh toán<br>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="4" checked="checked"> Loại giao dịch<br>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="5" checked="checked"> Hình thức<br>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="6" checked="checked"> Số tiền<br>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="7" checked="checked"> Tình trạng<br>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="8" checked="checked"> Đối tác<br>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="9" checked="checked"> Email<br>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="10" checked="checked"> Điện thoại<br>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="11" checked="checked"> Địa chỉ nhận hàng<br>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="12" checked="checked"> Mã đơn hàng<br>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="arr_ex[]" value="13" checked="checked"> Website bán hàng<br>

			<input type="submit" name="export" value="Trích xuất" class="button-content">
		<!--<div align="right"><input type="button" class="button-content" value="Thoát" onclick="hideFormRequestActive();" /></div>-->
		<div style="clear:both; height:5px; line-height:5px; overflow:hidden;"></div>
		</div>
		</form>
	</div>
	<div id="label-table" style="border-top:0;background-color:#fff;">
		<div id="bottom-transaction-detail" style="margin:0;float:left;">
			<span style="font-weight:bold;color:#555;">Trạng thái giao dịch: </span>
			&nbsp;&nbsp;<a href="http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=82&amp;id=321&amp;news_name=Quy-dinh-ve-tinh-trang-giao-dich-nhu-the-nao-&amp;cat=2" target="_blank" style="text-decoration:underline;">Xem giải thích</a></span>
		</div>
       <div id="bottom-transaction-detail" style="margin:0;float:left; padding-left:25px">
			<span class="icon-title" style="padding-left:5px;">Biểu tượng: </span>
			<span class="pay_direct"> NGAY</span>
			<span class="pay_escrow"> TẠM GIỮ</span>
			 
		</div>		
		<div style=" float:right;height:16px;">
			<span style="color:#555;font-weight:bold;">Màu sắc:&nbsp;&nbsp;</span>	
			<img src="../images/icon_tra.gif" align="absmiddle">
			<span>Chưa thực hiện</span>			 
			<img src="../images/icon_trb.gif" align="absmiddle">
			<span>Đang tạm giữ</span>
			<img src="../images/icon_trc.gif" align="absmiddle">
			<span>Ðã hoàn thành</span>
			<img src="../images/icon_trd.gif" align="absmiddle">
			<span>Bị từ chối</span>
		</div>
    </div>
    <div id="data-grid" class="box-content-square-content">
         <table width="100%" border="0" cellspacing="0" cellpadding="0">
			<thead>
            <tr>
			 <td class="title-box-table data-grid-header sort-numeric" width="70"><span class="title-box-table-content">Mã GD</span></td>
			  <td class="title-box-table data-grid-header sort-date transaction-order-desc" width="90"><span class="title-box-table-content">Thời gian</span></td>
			  <td class="title-box-table data-grid-header" width="120"><span class="title-box-table-content">Loại giao dịch</span></td>			 
			  <td class="title-box-table data-grid-header"><span class="title-box-table-content">Đối tác </span></td>	
			  <td class="title-box-table data-grid-header sort-numeric" width="80"><span class="title-box-table-content">Số tiền</span></td>
			  <td class="title-box-table data-grid-header sort-numeric" width="100"><span class="title-box-table-content">Hoá đơn</span></td>			  
			  <td class="title-box-table data-grid-header" width="120"><span class="title-box-table-content">Trạng thái</span></td>       
			  <td class="title-box-table" style="border-right:0;" width="130"><strong>Thao tác</strong></td>
			</tr>
            </thead>
			
	<tr class="data-empty">
	  <td colspan="9" align="center">Không tồn tại giao dịch nào thoả mãn điều kiện tìm kiếm!</td>
	</tr>
			
            </tbody>			
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
		</div>
    </div>
	<div id="footer">
	<div id="menu-footer">

	<a href="http://help.nganluong.vn/chi-tiet-49/2/419/Gioi-thieu-ve-NganLuong.vn.html" target="_blank" rel="nofollow">Về NgânLượng.vn</a>
	|<a href="http://help.nganluong.vn/chi-tiet-4/27/373/Chinh-sach-su-dung-NganLuong.vn.html" target="_blank" rel="nofollow">Thoả thuận người dùng</a>
	|<a href="http://help.nganluong.vn/chi-tiet-17/27/372/Chinh-sach-quyen-rieng-tu-(Privacy-Policy).html" target="_blank" rel="nofollow">Quyền riêng tư</a>
	|<a href="http://help.nganluong.vn/danh-muc-27/27/1/Quy-dinh---Chinh-sach.html" target="_blank" rel="nofollow">Quy định - Chính sách</a>
	|<a href="http://help.nganluong.vn/danh-muc-2/2/1/Tro-giup---Huong-dan.html" target="_blank" rel="nofollow">Trợ giúp - Hướng dẫn</a>
	|<a href="http://vizum.vn/" target="_blank" rel="nofollow">Hỏi đáp - Thảo luận</a>
</div>
<div id="footer-add">
    <div id="footer-add-right">
        <address style="margin-bottom:5px;">
            <strong>Hà Nội:</strong> Tầng 12A, tòa nhà 18 Tam Trinh, quận Hai Bà Trưng; Hotline: 0984-863-761; Điện thoại: 1900-5858-99 (ext 111).
        </address>
        <address style="margin-bottom:5px;">
            <strong>TP.HCM:</strong> Lầu 1-4, tòa nhà Blue Berry, số 9-11 đường D52 Cộng Hòa, phường 12,
       <br>
        quận Tân Bình; Điện thoại: 1900-5858-99 (ext 101).
        </address>
    </div><div id="footer-add-left" style="width:490px;">
        <p style="margin-bottom:5px;">Bản quyền © 2009-2011 NgânLượng.vn: Hệ thống thanh toán trực tuyến trung gian bên thứ ba kết hợp bảo vệ người mua hàng đầu Việt Nam, một sản phẩm của<a href="http://www.peacesoft.net/" target="_blank" rel="nofollow">PeaceSoft Solutions Corporation</a></p>
        <p style="margin-bottom:5px;">Sản phẩm đã được Ngân hàng Nhà Nước cấp giấy phép hoạt động số 2608/QĐ-NHNN.</p>
        <p style="margin-bottom:5px;">Các liên kết khác:
			<a href="http://chodientu.vn/" target="_blank" rel="nofollow">www.chodientu.vn</a> | 
			<a href="http://chodientu.vn/ebay" target="_blank" rel="nofollow">www.ebay.vn</a> | 
			<a href="http://adnet.vn/" target="_blank" rel="nofollow">www.adnet.vn</a> | 
			<a href="http://vizum.vn/" target="_blank" rel="nofollow">www.vizum.vn</a></p>                
    </div>
</div>

	<!-- Start of Zopim Live Chat Script -->
	<script type="text/javascript">
	    window.$zopim || (function (d, s) {
	        var z = $zopim = function (c) { z._.push(c) }, $ =
	z.s = d.createElement(s), e = d.getElementsByTagName(s)[0]; z.set = function (o
	) { z.set._.push(o) }; $.setAttribute('charset', 'utf-8'); $.async = !0; z.set.
	_ = []; $.src = ('https:' == d.location.protocol ? 'https://ssl' : 'http://cdn') +
	'.zopim.com/?XI9LPK7GrETMZmdXBpuvXYrDwBu6x9wa'; $.type = 'text/java' + s; z.
	t = +new Date; z._ = []; e.parentNode.insertBefore($, e)
	    })(document, 'script')
	</script>
	<script type="text/javascript">
	    $zopim(function () {
	        $zopim.livechat.setLanguage('vi');

	        $zopim.livechat.bubble.setTitle('Bạn cần giúp đỡ?');
	        $zopim.livechat.bubble.setText('Nhấn vào để được hỗ trợ trực tuyến');
	        $zopim.livechat.setGreetings({
	            'online': ['Click để gửi câu hỏi', 'Cảm ơn bạn đã ghé thăm. Bạn có thắc mắc hay góp ý gì về dịch của chúng tôi, hãy nhập một câu hỏi, nhân viên CSKH sẽ chat với bạn để giải đáp.'],
	            'offline': ['Click để gửi lời nhắn', 'Cảm ơn bạn đã ghé thăm. Hiện đang ngoài giờ hành chính hoặc nhân viên CSKH đi vắng, bạn vui lòng để lại câu hỏi hoặc lời nhắn, chúng tôi sẽ trả lời qua email cho bạn trong thời gian sớm nhất.'],
	            'away': ['Click để gửi lời nhắn', 'Cảm ơn bạn đã ghé thăm. Hiện nhân viên CSKH đi vắng, bạn vui lòng để lại câu hỏi hoặc lời nhắn, chúng tôi sẽ trả lời qua email cho bạn trong thời gian sớm nhất.']
	        });
	    });
	</script>
	
	<!-- End of Zopim Live Chat Script -->
		
	<script type="text/javascript">
	    var _gaq = _gaq || [];
	    _gaq.push(['_setAccount', 'UA-3140255-7']);
	    _gaq.push(['_setDomainName', '.nganluong.vn']);
	    _gaq.push(['_trackPageview']);
	    (function () {
	        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	    })();
	</script>

	</div>
</div>
<script type="text/javascript" src="../images/jquery01.js" "=""></script>
</body>
</html>
<!-- This document saved from https://www.nganluong.vn/?portal=nganluong&page=transaction_history -->
