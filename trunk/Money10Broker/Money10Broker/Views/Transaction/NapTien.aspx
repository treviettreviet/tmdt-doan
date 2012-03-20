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
			<%--<li class=" " style="display:block"><a href="/Transaction/LichSuGiaoDich"><span>Tổng hợp</span></a></li>--%>
				<li class=" " style="display:block"><a href="/Transaction/LichSuGiaoDich"><span>Lịch sử giao dịch</span></a></li>				
				<li class=" active" style="display:block"><a href="/Transaction/NapTien"><span>Nạp tiền</span></a></li>
                <li class="" style="display:block"><a href="/Transaction/RutTien"><span>Rút tiền</span></a></li>	
				<li class=" " style="display:block"><a href="/Transaction/ChuyenTien"><span>Chuyển tiền</span></a></li>
                <li class=" " style="display:block"><a href="/Transaction/ChuyenTienCungMoigioi"><span>Chuyển tiền cùng môi giới</span></a></li>
                <li class=" " style="display:block"><a href="/Transaction/ChuyenTienKhacMoigioi"><span>Chuyển tiền khác môi giới</span></a></li>					
				<li class=" end" style="display:block"><a href="#"><span>Nhận tiền hoàn lại</span></a></li>
			</ul>
		</div>
	</div>
</div>
		
		<div id="title"><span class="yel">Nạp tiền vào tài khoản NgânLượng.vn</span>&nbsp;&nbsp;&nbsp;&nbsp;[ <a href="#">Xem lịch sử nạp tiền</a> ]</div>

<div class="note-deposit-info">
	<p>Xin vui lòng chọn một hình thức dưới đây để nạp tiền. Khuyên bạn nên dùng các hình thức Online để nhận được tiền ngay trong tài khoản NgânLượng.vn.</p>	
</div>
<div class="deposit-list" style="border:1px solid #ccc;padding:10px;">
	<div class="deposit-list-row active">
		<a href="#" class="active">
			<span class="deposit-step"></span>
			<span class="deposit-name">Dùng thẻ Tín dụng và Ghi nợ quốc tế</span>
			<!--<span class="deposit-charge">(Phí 3.600đ + 2,75%)</span>-->
		</a>
		<ul>
			<li><a href="#"><img src="../../Content/images/visacard.gif" border="0" height="30" alt="Thanh toán bằng Visa Card"></a></li>								
			<li><a href="#"><img src="../../Content/images/masterca.gif" border="0" height="30" alt="Thanh toán bằng Master Card"></a></li>
			<li><a href="#"><img src="../../Content/images/americia.gif" height="30" border="0" alt="Thanh toán bằng thẻ American Express"></a></li>
			<li><a href="#"><img src="../../Content/images/jcbcard0.gif" border="0" height="30" alt="Thanh toán bằng thẻ JCB"></a></li>
		</ul>
	</div>				
	
	<div class="deposit-list-row active">
		<a href="#" class="active">
			<span class="deposit-step"></span>
			<span class="deposit-name">Online dùng thẻ ATM</span>
			<!--<span class="deposit-charge">(Miễn phí)</span>-->
		</a>
		<ul>
	<li><a href="" target="" onclick="document.location.href = '?portal=nganluong&amp;page=deposit&amp;cmd=process&amp;option=sml_atm_vcb_ck_on';"><img src="../../Content/images/vcb_1299.gif" alt="Ngân hàng TMCP Ngoại Thương Việt Nam" border="0" height="30"></a></li>
	<li><a href="" target="" onclick="document.location.href = '?portal=nganluong&amp;page=deposit&amp;cmd=process&amp;option=sml_atm_tcb_ck_on';"><img src="../../Content/images/tcb_1299.gif" alt="Ngân hàng Kỹ Thương" border="0" height="30"></a></li>
	<li><a href="" target="" onclick="document.location.href = '?portal=nganluong&amp;page=deposit&amp;cmd=process&amp;option=sml_atm_mb_ck_on';"><img src="../../Content/images/mb_12990.gif" alt="Ngân hàng Quân Đội" border="0" height="30"></a></li>
	<li><a href="" target="" onclick="document.location.href = '?portal=nganluong&amp;page=deposit&amp;cmd=process&amp;option=sml_atm_vib_ck_on';"><img src="../../Content/images/vib_1299.gif" alt="Ngân hàng Quốc tế" border="0" height="30"></a></li>
	<li><a href="" target="" onclick="document.location.href = '?portal=nganluong&amp;page=deposit&amp;cmd=process&amp;option=sml_atm_vtb_ck_on';"><img src="../../Content/images/icb_1299.gif" alt="Ngân hàng Công Thương Việt Nam" border="0" height="30"></a></li>
	<li><a href="" target="" onclick="document.location.href = '?portal=nganluong&amp;page=deposit&amp;cmd=process&amp;option=sml_atm_exb_ck_on';"><img src="../../Content/images/exb_1299.gif" alt="Ngân hàng Xuất Nhập Khẩu" border="0" height="30"></a></li>
	<li><a href="" target="" onclick="document.location.href = '?portal=nganluong&amp;page=deposit&amp;cmd=process&amp;option=sml_atm_acb_ck_on';"><img src="../../Content/images/acb_1299.gif" alt="Ngân hàng Á Châu" border="0" height="30"></a></li>
	<li><a href="" target="" onclick="document.location.href = '?portal=nganluong&amp;page=deposit&amp;cmd=process&amp;option=sml_atm_hdb_ck_on';"><img src="../../Content/images/hdb_1307.png" alt="Ngân hàng Phát triển Nhà TPHCM" border="0" height="30"></a></li>
	<li><a href="" target="" onclick="document.location.href = '?portal=nganluong&amp;page=deposit&amp;cmd=process&amp;option=sml_atm_msb_ck_on';"><img src="../../Content/images/msb_1299.gif" alt="Ngân hàng Hàng Hải" border="0" height="30"></a></li>
	<li><a href="" target="" onclick="document.location.href = '?portal=nganluong&amp;page=deposit&amp;cmd=process&amp;option=sml_atm_nvb_ck_on';"><img src="../../Content/images/nvb_1324.jpg" alt="Ngân hàng Nam Việt" border="0" height="30"></a></li></ul>
	</div>
	<div class="deposit-list-row active">
		<a href="#" class="active">
			<span class="deposit-step"></span>
			<span class="deposit-name">Online bằng Internet-Banking</span>
			<!--<span class="deposit-charge">(Miễn phí)</span>-->
		</a>
		<ul>
	<li><a href="" target="" onclick="document.location.href = '?portal=nganluong&amp;page=deposit&amp;cmd=process&amp;option=vcb_ck_on';"><img src="../../Content/images/vcb_1299.gif" alt="Ngân hàng TMCP Ngoại Thương Việt Nam" border="0" height="30"></a></li>
	<li><a href="" target="" onclick="document.location.href = '?portal=nganluong&amp;page=deposit&amp;cmd=process&amp;option=vnbc_ck_on';"><img src="../../Content/images/dab_1299.gif" alt="Ngân hàng Đông Á" border="0" height="30"></a></li>
	<li><a href="" target="" onclick="document.location.href = '?portal=nganluong&amp;page=deposit&amp;cmd=process&amp;option=tcb_ck_on';"><img src="../../Content/images/tcb_1299.gif" alt="Ngân hàng Kỹ Thương" border="0" height="30"></a></li>
	<li><a href="" target="" onclick="document.location.href = '?portal=nganluong&amp;page=deposit&amp;cmd=process&amp;option=shb_ck_on';"><img src="../../Content/images/shb_1299.gif" alt="Ngân hàng Sài Gòn - Hà Nội" border="0" height="30"></a></li></ul>
	</div>
	<div class="deposit-list-row active">
		<a href="https://www.nganluong.vn/?portal=nganluong&amp;page=deposit#" class="active">
			<span class="deposit-step"></span>
			<span class="deposit-name">Chuyển khoản Offline bằng Internet-Banking</span>
			<!--<span class="deposit-charge">(Miễn phí)</span>-->
		</a>
		<ul>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=107&amp;id=386&amp;news_name=Chuyen-khoan-tai-nha-thong-qua-Internet--Mobile-Banking&amp;cat=2" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=107&amp;id=386&amp;news_name=Chuyen-khoan-tai-nha-thong-qua-Internet--Mobile-Banking&amp;cat=2', '_blank');newWindow.focus();return false;"><img src="../../Content/images/vcb_1299.gif" alt="Ngân hàng TMCP Ngoại Thương Việt Nam" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=111&amp;category_name=&amp;cat=2&amp;id=387&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=111&amp;category_name=&amp;cat=2&amp;id=387&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/dab_1299.gif" alt="Ngân hàng Đông Á" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=110&amp;id=388&amp;news_name=Chuyen-khoan-tai-nha-thong-qua-Internet--Mobile-Banking&amp;cat=2" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=110&amp;id=388&amp;news_name=Chuyen-khoan-tai-nha-thong-qua-Internet--Mobile-Banking&amp;cat=2', '_blank');newWindow.focus();return false;"><img src="../../Content/images/tcb_1299.gif" alt="Ngân hàng Kỹ Thương" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/chi-tiet-121/2/437/MB---Chuyen-khoan-tai-nha-thong-qua-Internet-Banking.html" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/chi-tiet-121/2/437/MB---Chuyen-khoan-tai-nha-thong-qua-Internet-Banking.html', '_blank');newWindow.focus();return false;"><img src="../../Content/images/mb_12990.gif" alt="Ngân hàng Quân Đội" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=114&amp;id=393&amp;news_name=Chuyen-khoan-tai-nha-thong-qua-Internet--Mobile-Banking&amp;cat=2" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=114&amp;id=393&amp;news_name=Chuyen-khoan-tai-nha-thong-qua-Internet--Mobile-Banking&amp;cat=2', '_blank');newWindow.focus();return false;"><img src="../../Content/images/shb_1299.gif" alt="Ngân hàng Sài Gòn - Hà Nội" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=116&amp;category_name=&amp;cat=2&amp;id=389&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=116&amp;category_name=&amp;cat=2&amp;id=389&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/vib_1299.gif" alt="Ngân hàng Quốc tế" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=112&amp;id=295&amp;news_name=Chuyen-khoan-tai-nha-thong-qua-Internet--Mobile-Banking&amp;cat=2" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=112&amp;id=295&amp;news_name=Chuyen-khoan-tai-nha-thong-qua-Internet--Mobile-Banking&amp;cat=2', '_blank');newWindow.focus();return false;"><img src="../../Content/images/acb_1299.gif" alt="Ngân hàng Á Châu" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=115&amp;category_name=&amp;cat=2&amp;id=391&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=115&amp;category_name=&amp;cat=2&amp;id=391&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/sb_12785.gif" alt="Ngân hàng Đông Nam Á" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=113&amp;category_name=&amp;cat=2&amp;id=392&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=113&amp;category_name=&amp;cat=2&amp;id=392&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/tpb_1291.gif" alt="Ngân hàng Tiên Phong" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=124&amp;id=438&amp;news_name=PG-Bank---Chuyen-khoan-tai-nha-thong-qua-Internet-Banking&amp;cat=2" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=124&amp;id=438&amp;news_name=PG-Bank---Chuyen-khoan-tai-nha-thong-qua-Internet-Banking&amp;cat=2', '_blank');newWindow.focus();return false;"><img src="../../Content/images/pgb_1299.gif" alt="Ngân hàng Xăng dầu Petrolimex" border="0" height="30"></a></li></ul>
	</div>
	<div class="deposit-list-row ">
		<a href="https://www.nganluong.vn/?portal=nganluong&amp;page=deposit#" class="">
			<span class="deposit-step"></span>
			<span class="deposit-name">Chuyển khoản Offline tại cây ATM</span>
			<!--<span class="deposit-charge">(Miễn phí)</span>-->
		</a>
		<ul>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=107&amp;category_name=&amp;cat=2&amp;id=402&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=107&amp;category_name=&amp;cat=2&amp;id=402&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/vcb_1299.gif" alt="Ngân hàng TMCP Ngoại Thương Việt Nam" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=111&amp;category_name=&amp;cat=2&amp;id=377&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=111&amp;category_name=&amp;cat=2&amp;id=377&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/dab_1299.gif" alt="Ngân hàng Đông Á" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=110&amp;category_name=&amp;cat=2&amp;id=405&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=110&amp;category_name=&amp;cat=2&amp;id=405&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/tcb_1299.gif" alt="Ngân hàng Kỹ Thương" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/chi-tiet-121/2/434/MB---Chuyen-khoan-qua-cay-ATM.html" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/chi-tiet-121/2/434/MB---Chuyen-khoan-qua-cay-ATM.html', '_blank');newWindow.focus();return false;"><img src="../../Content/images/mb_12990.gif" alt="Ngân hàng Quân Đội" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=114&amp;category_name=&amp;cat=2&amp;id=417&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=114&amp;category_name=&amp;cat=2&amp;id=417&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/shb_1299.gif" alt="Ngân hàng Sài Gòn - Hà Nội" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=117&amp;category_name=&amp;cat=2&amp;id=408&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=117&amp;category_name=&amp;cat=2&amp;id=408&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/icb_1299.gif" alt="Ngân hàng Công Thương Việt Nam" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=112&amp;category_name=&amp;cat=2&amp;id=412&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=112&amp;category_name=&amp;cat=2&amp;id=412&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/acb_1299.gif" alt="Ngân hàng Á Châu" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=120&amp;category_name=&amp;cat=2&amp;id=410&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=120&amp;category_name=&amp;cat=2&amp;id=410&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/bidv_127.gif" alt="Ngân hàng Đầu tư &amp; Phát triển Việt Nam" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/danh-muc-129/2/1/Nap-tien-qua-NH-Agribank.html" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/danh-muc-129/2/1/Nap-tien-qua-NH-Agribank.html', '_blank');newWindow.focus();return false;"><img src="../../Content/images/agb_1299.gif" alt="Ngân hàng Nông nghiệp &amp; Phát triển nông thôn" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/chi-tiet-123/2/427/MaritimeBank---Chuyen-khoan-qua-cay-ATM.html" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/chi-tiet-123/2/427/MaritimeBank---Chuyen-khoan-qua-cay-ATM.html', '_blank');newWindow.focus();return false;"><img src="../../Content/images/msb_1299.gif" alt="Ngân hàng Hàng Hải" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=125&amp;id=431&amp;news_name=Sacombank---Chuyen-khoan-qua-cay-ATM&amp;cat=2" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=125&amp;id=431&amp;news_name=Sacombank---Chuyen-khoan-qua-cay-ATM&amp;cat=2', '_blank');newWindow.focus();return false;"><img src="../../Content/images/scb_1299.gif" alt="Ngân hàng Sài Gòn Thương tín" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/chi-tiet-124/2/429/PG-Bank---Chuyen-khoan-qua-cay-ATM.html" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/chi-tiet-124/2/429/PG-Bank---Chuyen-khoan-qua-cay-ATM.html', '_blank');newWindow.focus();return false;"><img src="../../Content/images/pgb_1299.gif" alt="Ngân hàng Xăng dầu Petrolimex" border="0" height="30"></a></li></ul>
	</div>
	<div class="deposit-list-row ">
		<a href="https://www.nganluong.vn/?portal=nganluong&amp;page=deposit#" class="">
			<span class="deposit-step"></span>
			<span class="deposit-name">Chuyển khoản Offline tại quầy giao dịch Ngân hàng</span>
			<!--<span class="deposit-charge">(Miễn phí)</span>-->
		</a>
		<ul>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=107&amp;category_name=&amp;cat=2&amp;id=401&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=107&amp;category_name=&amp;cat=2&amp;id=401&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/vcb_1299.gif" alt="Ngân hàng TMCP Ngoại Thương Việt Nam" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=111&amp;category_name=&amp;cat=2&amp;id=403&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=111&amp;category_name=&amp;cat=2&amp;id=403&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/dab_1299.gif" alt="Ngân hàng Đông Á" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=110&amp;category_name=&amp;cat=2&amp;id=404&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=110&amp;category_name=&amp;cat=2&amp;id=404&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/tcb_1299.gif" alt="Ngân hàng Kỹ Thương" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/chi-tiet-121/2/413/MB---Chuyen-khoan-hoac-nop-tien-mat-tai-quay-giao-dich.html" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/chi-tiet-121/2/413/MB---Chuyen-khoan-hoac-nop-tien-mat-tai-quay-giao-dich.html', '_blank');newWindow.focus();return false;"><img src="../../Content/images/mb_12990.gif" alt="Ngân hàng Quân Đội" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=114&amp;category_name=&amp;cat=2&amp;id=416&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=114&amp;category_name=&amp;cat=2&amp;id=416&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/shb_1299.gif" alt="Ngân hàng Sài Gòn - Hà Nội" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=116&amp;category_name=&amp;cat=2&amp;id=406&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=116&amp;category_name=&amp;cat=2&amp;id=406&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/vib_1299.gif" alt="Ngân hàng Quốc tế" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=117&amp;category_name=&amp;cat=2&amp;id=407&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=117&amp;category_name=&amp;cat=2&amp;id=407&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/icb_1299.gif" alt="Ngân hàng Công Thương Việt Nam" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=112&amp;category_name=&amp;cat=2&amp;id=411&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=112&amp;category_name=&amp;cat=2&amp;id=411&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/acb_1299.gif" alt="Ngân hàng Á Châu" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=120&amp;category_name=&amp;cat=2&amp;id=409&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=120&amp;category_name=&amp;cat=2&amp;id=409&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/bidv_127.gif" alt="Ngân hàng Đầu tư &amp; Phát triển Việt Nam" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/danh-muc-129/2/1/Nap-tien-qua-NH-Agribank.html" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/danh-muc-129/2/1/Nap-tien-qua-NH-Agribank.html', '_blank');newWindow.focus();return false;"><img src="../../Content/images/agb_1299.gif" alt="Ngân hàng Nông nghiệp &amp; Phát triển nông thôn" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/chi-tiet-123/2/426/Maritime-Bank---Chuyen-khoan-hoac-nop-tien-mat-tai-quay-giao-dich.html" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/chi-tiet-123/2/426/Maritime-Bank---Chuyen-khoan-hoac-nop-tien-mat-tai-quay-giao-dich.html', '_blank');newWindow.focus();return false;"><img src="../../Content/images/msb_1299.gif" alt="Ngân hàng Hàng Hải" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=115&amp;category_name=&amp;cat=2&amp;id=414&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=115&amp;category_name=&amp;cat=2&amp;id=414&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/sb_12785.gif" alt="Ngân hàng Đông Nam Á" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=125&amp;id=430&amp;news_name=Sacombank---Chuyen-khoan-hoac-nop-tien-mat-tai-quay-giao-dich&amp;cat=2" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=125&amp;id=430&amp;news_name=Sacombank---Chuyen-khoan-hoac-nop-tien-mat-tai-quay-giao-dich&amp;cat=2', '_blank');newWindow.focus();return false;"><img src="../../Content/images/scb_1299.gif" alt="Ngân hàng Sài Gòn Thương tín" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=113&amp;category_name=&amp;cat=2&amp;id=415&amp;page_no=1" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=113&amp;category_name=&amp;cat=2&amp;id=415&amp;page_no=1', '_blank');newWindow.focus();return false;"><img src="../../Content/images/tpb_1291.gif" alt="Ngân hàng Tiên Phong" border="0" height="30"></a></li>
	<li><a href="http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=124&amp;id=428&amp;news_name=PG-Bank---Chuyen-khoan-hoac-nop-tien-mat-tai-quay-giao-dich&amp;cat=2" target="_blank" onclick="var newWindow = window.open('http://help.nganluong.vn/?portal=help&amp;page=detail&amp;category_id=124&amp;id=428&amp;news_name=PG-Bank---Chuyen-khoan-hoac-nop-tien-mat-tai-quay-giao-dich&amp;cat=2', '_blank');newWindow.focus();return false;"><img src="../../Content/images/pgb_1299.gif" alt="Ngân hàng Xăng dầu Petrolimex" border="0" height="30"></a></li>
	<li><a href target="_blank" onclick="var newWindow = window.open('', '_blank');newWindow.focus();return false;"><img src="../../Content/images/nl_cash_.gif" alt="Tiền mặt tại văn phòng NgânLượng.vn" border="0" height="30"></a></li></ul>
	</div>
	<div class="deposit-list-row">
		<a href="https://www.nganluong.vn/?portal=nganluong&amp;page=deposit#" class="">
			<span class="deposit-step"></span>
			<span class="deposit-name">Nộp tiền mặt tại văn phòng NgânLượng.vn</span>
			<!--<span class="deposit-charge">(Miễn phí)</span>-->
			<span class="deposit-alert"></span>
		</a>
		<ul>
			<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=108&amp;category_name=&amp;cat=2&amp;id=399&amp;page_no=1">Tại văn phòng <strong>Hà Nội</strong></a></li>
			<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=108&amp;category_name=&amp;cat=2&amp;id=399&amp;page_no=1">Tại văn phòng <strong>TP.HCM</strong></a></li>
			<li><a href="http://help.nganluong.vn/?portal=help&amp;page=help_browse&amp;category_id=108&amp;category_name=&amp;cat=2&amp;id=400&amp;page_no=1">Chuyển qua <strong>Bưu điện</strong></a></li>
		</ul>
	</div>	
</div>

</asp:Content>
