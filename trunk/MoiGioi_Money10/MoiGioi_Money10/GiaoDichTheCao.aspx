<%@ Page Title="" Language="C#" MasterPageFile="~/Site_TTTaiKhoan.Master" AutoEventWireup="true" CodeBehind="GiaoDichTheCao.aspx.cs" Inherits="MoiGioi_Money10.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
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
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=transaction_history"><span>Lịch sử giao dịch</span></a></li>
				<li class="active " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=card_transaction"><span>Giao dịch thẻ cào</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=deposit"><span>Nạp tiền</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=transfer"><span>Chuyển tiền</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=withdraw"><span>Rút tiền</span></a></li>
				<li class=" " style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=payment_request"><span>Đề nghị thanh toán</span></a></li>
				<li class=" end" style="display:block"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=receiving_refund"><span>Nhận tiền hoàn lại</span></a></li>
			</ul>
		</div>
	</div>
</div>
		<h2>Lịch sử giao dịch nạp tiền từ thẻ cào
	<span class="simple-right-menu"><a href="https://www.nganluong.vn/?portal=nganluong&amp;page=card_transaction&amp;cmd=request_payment">Yêu cầu thanh toán</a> | <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=card_payment">Lịch sử thanh toán</a></span>
</h2>
<div class="box-content-square" id="transaction-history-sell-filter" style="width:928px;">
<form method="get">
	<input type="hidden" name="portal" value="nganluong">
	<input type="hidden" name="page" value="card_transaction">
	<table><tr>
		<td style="padding:0;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td>Từ:</td>
				<td><input name="date_begin" type="text" style="width:80px; float:left;" class="date-picker"></td>
				<td>Đến:</td>
				<td><input name="date_end" type="text" style="width:80px; float:left;" class="date-picker"></td>
				<td>Loại thẻ:</td>
				<td><select name="card_type" id="card_type" style="width: 130px;"><option value selected>Tất cả</option><option value="beeline">Beeline</option><option value="evn">EVN</option><option value="mobifone">MobiFone</option><option value="sfone">SFone</option><option value="vietnammobile">VietnamMobile</option><option value="viettel">Viettel</option><option value="vinaphone">VinaPhone</option></select></td>
				<td>Tình trạng</td>
				<td><select name="status" id="status" style="width: 130px;"><option value="0" selected>Tất cả</option><option value="1">Chưa nhận tiền</option><option value="2">Đang yêu cầu</option><option value="3">Đã nhận tiền</option></select></td>
				<td><input type="submit" value="Lọc »" class="button-content"></td>
				<td></td>
			  </tr>
			</table>
		</td>
		<td style="padding:0;">
		</td>
	</tr></table>
	
</form>
</div>
<script language="javascript">
    $('.date-picker').datePicker({ clickInput: false, startDate: '01/01/2009' });
</script><div class="box-content-square" id="transaction-history">
	<div id="label-table">
		<span>Có <span class="yel">0</span> giao dịch;</span> &nbsp;&nbsp;&nbsp; 
		<span>Tổng mệnh giá: <span class="yel">0</span> VNĐ;</span> &nbsp;&nbsp;&nbsp; 
		<span>Số tiền nhận được: <span class="yel">0</span> VNĐ;</span>
	</div>	
	<div class="box-content-square-content">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#fff">
		  <tr>
			<td class="title-box-table">Thời gian</td>
			<td class="title-box-table">Loại thẻ</td>
			<td class="title-box-table">Mã thẻ</td>
			<td class="title-box-table">Mệnh giá</td>
			<td class="title-box-table">Phí giao dịch</td>
			<td class="title-box-table">Số tiền nhận được</td>
			<td class="title-box-table">Mã GD nhận tiền</td>
			<td class="title-box-table end">Tình trạng</td>
		  </tr>
		
		<!-- BEGIN BlockEmpty -->
		   <tr style="background:#fff;height:50px;" class="cls-white-last">
			<td colspan="7" align="center" style="font-weight:bold;">KHÔNG TÌM THẤY GIAO DỊCH NÀO THỎA MÃN ĐIỀU KIỆN TÌM KIẾM</td>
		  </tr>
		<!-- END BlockEmpty -->
		</table>
	</div>
	    
   	
</div>
</asp:Content>
