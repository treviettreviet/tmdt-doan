<%@ Page Title="" Language="C#" MasterPageFile="~/Site_TTTaiKhoan.Master" AutoEventWireup="true" CodeBehind="ChuyenTienNgay_1.aspx.cs" Inherits="MoiGioi_Money10.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div id="menu-nav-content">
        <div id="menu-nav-content-l">
        </div>
        <div id="menu-nav-content-r">
        </div>
        <div id="menu-nav-content-c">
            <div id="menu-nav-content-main">
                <ul>
                    <li class="active " style="display:block">
                        <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_transaction_info">
                        <span>GIAO DỊCH</span></a></li>
                    <li class=" " style="display:block">
                        <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=complaint&amp;type=all">
                        <span>KHIẾU NẠI</span></a></li>
                    <li class=" " style="display:block">
                        <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_info"><span>
                        TÀI KHOẢN</span></a></li>
                    <li class=" end" style="display:block">
                        <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=payment_integrate_homepage">
                        <span>TÍCH HỢP THANH TOÁN</span></a></li>
                </ul>
            </div>
            <div id="menu-nav-content-sub">
                <ul>
                    <li class=" " style="display:block">
                        <a href="DangNhapThanhCong.aspx">
                        <span>Tổng hợp</span></a></li>
                    <li class=" " style="display:block">
                        <a href="LichSuGiaoDich.aspx">
                        <span>Lịch sử giao dịch</span></a></li>
                    <li class=" " style="display:block">
                        <a href="GiaoDichTheCao.aspx">
                        <span>Giao dịch thẻ cào</span></a></li>
                    <li class=" " style="display:block">
                        <a href="NapTien.aspx"><span>Nạp 
                        tiền</span></a></li>
                    <li class="active " style="display:block">
                        <a href="ChonChuyenTien.aspx"><span>
                        Chuyển tiền</span></a></li>
                    <li class=" " style="display:block">
                        <a href="RutTien.aspx"><span>Rút 
                        tiền</span></a></li>
                    <li class=" " style="display:block">
                        <a href="DeNghiThanhToan.aspx">
                        <span>Đề nghị thanh toán</span></a></li>
                    <li class=" end" style="display:block">
                        <a href="NhanTienHoanLai.aspx">
                        <span>Nhận tiền hoàn lại</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div id="title">
        <span class="yel">Chuyển tiền Ngay</span> <span>&nbsp;&nbsp;[
        <a href="ChuyenTienTamGiu_1.aspx">
        Chuyển tiền tạm giữ</a> ]</span></div>
    <div class="note-content-warning">
        <p style="color:#ff6900;">
            <strong>Cảnh báo:</strong></p>
        <p>
            Bạn đang thực hiện giao dịch chuyển tiền <strong>NGAY</strong> (tiền sẽ được 
            chuyển Ngay sang ví của người nhận khi bạn xác minh giao dịch). Chúng tôi khuyên 
            bạn chỉ áp dụng hình thức này nếu người nhận là bạn bè, người thân hoặc đối tác 
            là người tin tưởng. Để nhận tiền ngay, tài khoản ví của đối tác của bạn phải 
            được NgânLượng.vn chứng thực CMT/Hộ chiếu (nếu là cá nhân) hoặc Đăng ký kinh 
            doanh (nếu là doanh nghiệp).</p>
    </div>
    <div class="box-content-square" 
        style="padding-top:0;margin-bottom:0;padding-bottom:15px;">
        <div id="step-flow">
            <ul id="step-three">
                <li class="active"><strong>1.</strong> &nbsp; &nbsp;Tạo giao dịch chuyển tiền</li>
                <li><strong>2.</strong> &nbsp; &nbsp;Xác minh giao dịch</li>
                <li class="last"><strong>3.</strong> &nbsp; &nbsp;Hoàn tất</li>
            </ul>
        </div>
        <div id="transfer-friends" class="box-content-square-content">
            <form enctype="multipart/form-data" method="post">
            <input name="form_module_id" type="hidden" value="703" />
            <div class="message-box">
            </div>
            <h4 style="margin-top:10px;">
                Tài khoản người nhận</h4>
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <th>
                        <span class="required">*</span>Tài khoản của tôi:</th>
                    <td>
                        <strong>quangkhai1289@gmail.com</strong></td>
                </tr>
                <tr>
                    <th>
                        <span class="required">*</span>Tài khoản người nhận:</th>
                    <td class="blear">
                        <input id="receiver_email" class="output-contact field-check" maxlength="255" 
                            name="receiver_email" type="text" value="" /> [ <a id="btnViewContact" 
                            href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_contact&amp;cmd=box">
                        Chọn từ danh bạ đối tác giao dịch</a> ]
                        <div class="field-notification field-alert">
                            Nhập địa chỉ Email chính của tài khoản người nhận (không quá 255 ký tự)</div>
                        <span class="field-check-function submit" title="notEmpty(_value_)">Chưa nhập 
                        tài khoản người nhận</span><span class="field-check-function blur submit" 
                            title="isEmail(_value_)">Tài khoản người nhận không đúng định dạng</span>
                    </td>
                </tr>
                <tr>
                    <th>
                        <span class="required">*</span>Nhập lại tài khoản người nhận:</th>
                    <td class="blear">
                        <input autocomplete="off" class="output-contact field-check text-confirm" 
                            maxlength="255" name="confirm_receiver_email" type="text" value="" /><div 
                            id="danhsachdoitac">
                        </div>
                        <div class="field-notification field-alert">
                            Nhập lại địa chỉ Email chính của tài khoản người nhận (không quá 255 ký tự, 
                            không hỗ trợ copy/paste)</div>
                        <span class="field-check-function submit" title="notEmpty(_value_)">Chưa xác 
                        nhận lại tài khoản người nhận</span><span 
                            class="field-check-function blur submit" title="isEmail(_value_)">Nhập lại 
                        tài khoản người nhận không đúng định dạng</span><span 
                            class="field-check-function blur" 
                            title="isConfirmObject(_value_,'receiver_email')">Xác nhận tài khoản người 
                        nhận chưa chính xác</span>
                    </td>
                </tr>
            </table>
            <h4 style="margin-top:10px;">
                Thông tin giao dịch</h4>
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <th>
                        Số dư khả dụng:</th>
                    <td>
                        <span class="yel-large">0</span> <span class="span-grey">VND</span></td>
                </tr>
                <tr>
                    <th>
                        <span class="required">*</span>Số tiền muốn chuyển:</th>
                    <td class="blear">
                        <input autocomplete="off" class="field-check input-amount" maxlength="20" 
                            name="price" type="text" value="" /> <span class="span-grey">VND</span><div 
                            class="field-notification field-alert">
                            Tối thiểu 2.000 VND/lần</div>
                        <span class="field-check-function blur submit" title="isAmount(_value_)">Số tiền 
                        muốn chuyển không đúng yêu cầu</span></td>
                </tr>
                <tr>
                    <th>
                        <span class="required">*</span>Lý do chuyển tiền:</th>
                    <td class="blear">
                        <textarea class="field-check" cols="50" name="reason" rows="5" 
                            style="width:500px;" type="text"></textarea><div 
                            class="field-notification field-alert">
                            Nhập lý do chuyển tiền (không quá 500 ký tự)</div>
                        <span class="field-check-function submit" title="notEmpty(_value_)">Chưa nhập lý 
                        do chuyển tiền</span></td>
                </tr>
                <tr>
                    <th>
                        <span class="required">*</span>Mã xác nhận:</th>
                    <td class="blear">
                        <input autocomplete="off" class="field-check" maxlength="{max_length}" 
                            name="verify_image" style="width:100px;" type="text" value="" /><img 
                            align="absmiddle" border="0" 
                            src="Chuyển%20tiền%20cho%20bạn%20bè,%20người%20thân%20%20%20NgânLượng.vn_files/captcha.php" 
                            style="margin-left:10px;" /><div class="field-notification field-alert">
                            Nhập 5 ký tự nhìn thấy trong hình trên (không phân biệt chữ hoa/thường)</div>
                        <span class="field-check-function submit" title="notEmpty(_value_)">Bạn chưa 
                        nhập mã xác nhận</span></td>
                </tr>
                <tr>
                    <th>
                    </th>
                    <td>
                        <input class="button-content" type="submit" value="Tạo giao dịch" /></td>
                </tr>
            </table>
            </form>
	
	    </div>
    </div>
</asp:Content>
