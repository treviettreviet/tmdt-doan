<%@ Page Title="" Language="C#" MasterPageFile="~/Site_TTTaiKhoan.Master" AutoEventWireup="true" CodeBehind="ChuyenTienTamGiu_1.aspx.cs" Inherits="MoiGioi_Money10.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div id="menu-nav-content">
    <div id="menu-nav-content-l">
    </div>
    <div id="menu-nav-content-r">
    </div>
    <div id="menu-nav-content-c">
        <div id="menu-nav-content-main">
            <ul>
                <li class="active " style="display: block">
                    <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_transaction_info">
                    <span>GIAO DỊCH</span></a></li>
                <li class=" " style="display: block">
                    <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=complaint&amp;type=all">
                    <span>KHIẾU NẠI</span></a></li>
                <li class=" " style="display: block">
                    <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_info"><span>
                    TÀI KHOẢN</span></a></li>
                <li class=" end" style="display: block">
                    <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=payment_integrate_homepage">
                    <span>TÍCH HỢP THANH TOÁN</span></a></li>
            </ul>
        </div>
        <div id="menu-nav-content-sub">
            <ul>
                <li class=" " style="display: block">
                    <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_transaction_info">
                    <span>Tổng hợp</span></a></li>
                <li class=" " style="display: block">
                    <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=transaction_history">
                    <span>Lịch sử giao dịch</span></a></li>
                <li class=" " style="display: block">
                    <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=card_transaction">
                    <span>Giao dịch thẻ cào</span></a></li>
                <li class=" " style="display: block">
                    <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=deposit"><span>Nạp 
                    tiền</span></a></li>
                <li class="active " style="display: block">
                    <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=transfer"><span>
                    Chuyển tiền</span></a></li>
                <li class=" " style="display: block">
                    <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=withdraw"><span>Rút 
                    tiền</span></a></li>
                <li class=" " style="display: block">
                    <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=payment_request">
                    <span>Đề nghị thanh toán</span></a></li>
                <li class=" end" style="display: block">
                    <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=receiving_refund">
                    <span>Nhận tiền hoàn lại</span></a></li>
            </ul>
        </div>
    </div>
</div>
<div id="title">
    <span class="yel">Chuyển tiền Tạm giữ</span> <span>&nbsp;&nbsp;[
    <a href="ChuyenTienNgay_1.aspx">
    Chuyển tiền Ngay</a> ]</span></div>
<div class="box-content-square" 
    style="padding-top: 0; margin-bottom: 0; padding-bottom: 15px;">
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
        <h4>
            Hình thức giao dịch</h4>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <th>
                    Hình thức giao dịch</th>
                <td style="font-size: 16; font-weight: bold;">
                    Thanh toán TẠM GIỮ</td>
            </tr>
            <tr>
                <th>
                    <span class="required">*</span>Thời gian tạm giữ:</th>
                <td class="blear">
                    <select id="escrow_time" class="list-business field-check" name="escrow_time" 
                        style="width: 100px;">
                        <option value="2">2 ngày</option>
                        <option value="3">3 ngày</option>
                        <option value="4">4 ngày</option>
                        <option value="5">5 ngày</option>
                        <option value="6">6 ngày</option>
                        <option selected="" value="7">7 ngày</option>
                        <option value="8">8 ngày</option>
                        <option value="9">9 ngày</option>
                        <option value="10">10 ngày</option>
                    </select><div class="field-notification field-alert">
                        Là khoảng thời gian tính từ thời điểm bạn xác nhận thanh toán (xác minh giao 
                        dịch), khoản tiền giao dịch sẽ bị &quot;TREO&quot;, người bán chưa thực sự nhận được và 
                        bạn cũng không thể sử dụng được khoản tiền này. Nếu có nghi ngờ về sự gian lận 
                        của người bán hoặc nhận được hàng không như thoả thuận, hãy Gửi khiếu nại ngay 
                        tới NgânLượng.vn trước thời gian hết hạn tạm giữ này bởi nếu hết thời gian tạm 
                        giữ mà bạn không có khiếu nại nào, NgânLượng.vn sẽ tự động phê chuẩn giao dịch, 
                        trả tiền cho người bán.</div>
                </td>
            </tr>
        </table>
        <h4>
            Tài khoản người nhận tiền</h4>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <th>
                    Tài khoản của tôi:</th>
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
                        maxlength="255" name="confirm_receiver_email" type="text" value="" />
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
                    <div id="danhsachdoitac">
                    </div>
                </td>
            </tr>
        </table>
        <h4>
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
                    <span class="required">*</span>Tên hoặc mã sản phẩm, hoá đơn:</th>
                <td class="blear">
                    <input class="field-check" maxlength="255" name="product_name" type="text" 
                        value="" /><span class="field-check-function submit" 
                        title="notEmpty(_value_)">Chưa nhập tên hoặc mã sản phẩm, hoá đơn</span></td>
            </tr>
            <tr>
                <th>
                    <span class="required">*</span>Mô tả sản phẩm/dịch vụ:</th>
                <td class="blear">
                    <textarea class="field-check" cols="50" name="description" rows="5" 
                        style="width: 500px;"></textarea><div 
                        class="field-notification field-alert">
                        Vui lòng nhập đầy đủ thông tin hàng hoá, sản phẩm bạn muốn mua (không quá 500 ký 
                        tự), đây là một trong những thông tin để giải quyết khi có khiếu nại xảy ra</div>
                    <span class="field-check-function submit" title="notEmpty(_value_)">Chưa nhập mô 
                    tả sản phẩm/dịch vụ</span></td>
            </tr>
            <tr>
                <th>
                    Địa chỉ Website bán hàng:</th>
                <td class="blear">
                    <input maxlength="500" name="website" style="width: 500px;" type="text" 
                        value="" /><div class="field-notification field-alert">
                        Nhập địa chỉ URL nơi đăng bán sản phẩm (nếu có, không quá 500 ký tự)</div>
                </td>
            </tr>
            <tr>
                <th>
                    <span class="required">*</span>Địa chỉ nhận hàng:</th>
                <td class="blear">
                    <select id="delivery_address" class="list-business field-check" 
                        name="delivery_address" style="width: auto">
                        <option selected="" value="0">Không cần sử dụng địa chỉ nhận hàng</option>
                    </select> [
                    <a href="https://www.nganluong.vn/?portal=nganluong&amp;page=user_address" 
                        target="_blank">Thêm/thay đổi địa chỉ nhận hàng</a> ]
                    <p>
                        Sau khi bạn thêm/thay đổi địa chỉ nhận hàng, vui lòng refresh lại trang này</p>
                </td>
            </tr>
        </table>
        <h4>
            Xác nhận tạo giao dịch</h4>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <th>
                    <span class="required">*</span>Mã xác nhận:</th>
                <td class="blear">
                    <input autocomplete="off" class="field-check" maxlength="{max_length}" 
                        name="verify_image" style="width: 100px;" type="text" value="" /><img 
                        align="absmiddle" border="0" 
                        src="Chuyển%20tiền%20để%20mua%20sắm%20%20%20NgânLượng.vn_files/captcha.php" 
                        style="margin-left: 10px;" /><div class="field-notification field-alert">
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
	<script language="javascript">setFormCheck();</script>
	</div>
</div>
</asp:Content>
