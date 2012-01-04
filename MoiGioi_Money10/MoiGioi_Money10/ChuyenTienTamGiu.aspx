<%@ Page Title="" Language="C#" MasterPageFile="~/Site_TTTaiKhoan.Master" AutoEventWireup="true" CodeBehind="ChuyenTienTamGiu.aspx.cs" Inherits="MoiGioi_Money10.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <h2>
        Thực hiện giao dịch chuyển tiền</h2>
    <div id="menu-tab">
        <li class=""><a href=""><span>Chuyển tiền tạm giữ</span></a></li>
        <li><a href=""><span>Chuyển tiền nhận ngay</span></a></li>
    </div>
    <div class="box-content-square content-tab" style="padding-bottom:0;">
        <div id="transfer-left">
            <img src="../images/escrow-i.gif" /></div>
        <div id="transfer-right">
            <div class="payment-type-content-right-content" style="padding-top:30px;">
                <div id="note-content-info" class="note-content-info" style="border:0;">
                    <p>
                        Chuyển tiền TẠM GIỮ là loại giao dịch An toàn của NgânLượng.vn, mỗi giao dịch sẽ 
                        có một thời gian (kể từ thời điểm bạn xác nhận chuyển - xác minh giao dịch) mà 
                        khoản tiền chuyển sẽ bị &quot;TREO&quot;, người bán chưa thực sự nhận được và bạn cũng 
                        không thể sử dụng được khoản tiền này.</p>
                    <p>
                        Nếu có nghi ngờ về sự gian lận của người bán hoặc nhận được hàng không như thoả 
                        thuận, hãy Gửi khiếu nại ngay tới NgânLượng.vn trước khi hết thời hạn tạm giữ 
                        này.</p>
                    <p>
                        Nếu đã nhận được hàng hoá như mong muốn, hãy phê chuẩn giao dịch hoặc hết thời 
                        gian tạm giữ mà bạn không có khiếu nại nào, NgânLượng.vn sẽ tự động phê chuẩn 
                        giao dịch, trả tiền cho người bán.</p>
                    <p>
                        Bạn nên dùng giao dịch loại <strong>TẠM GIỮ</strong> nếu đối tác là người không 
                        quen biết hoặc không tin tưởng. Khi tạo giao dịch bạn
                        <font style="color:#ff6900;font-weight:bold;">hãy mô tả chi tiết thông tin sản 
                        phẩm/dịch vụ mà mình muốn mua để làm căn cứ nếu có khiếu nại xảy ra.</font></p>
                    <p>
                        Lưu ý: Trong trường hợp tài khoản người Bán được NgânLượng.vn đảm bảo, và không 
                        chấp nhận nhận tiền tạm giữ, bạn có thể mua hàng hoá trên website bán hàng mà 
                        đối tác cung cấp hoặc liên hệ với người Bán để tạo yêu cầu thanh toán cho bạn.</p>
                </div>
                <div class="transfer-friends-button button-box">
                    <a id="btnTransfer" class="button-yell" 
                        href="https://www.nganluong.vn/?portal=nganluong&amp;page=transfer&amp;cmd=create&amp;option=2">
                    <span>Tiếp tục</span></a></div>
            </div>
        </div>
    </div>
    <div id="" class="box-content-square content-tab" 
        style="padding-bottom:0;display:none;">
        <div id="transfer-left0">
            <img src="NgânLượng.vn%20-%20Chuyển%20tiền_files/direct-i.jpg" /></div>
        <div id="transfer-right0">
            <div class="payment-type-content-right-content" style="padding-top:30px;">
                <div id="note-content-warning" class="note-content-warning">
                    <p style="color:#ff6900;">
                        <strong>Cảnh báo:</strong></p>
                    <p>
                        Bạn đang thực hiện giao dịch CHUYỂN TIỀN mà người nhận sẽ nhận được tiền <strong>
                        NGAY</strong> trong tài khoản. Chúng tôi khuyên bạn chỉ áp dụng hình thức này 
                        nếu người nhận là bạn bè, người thân hoặc đối tác là người tin tưởng.</p>
                    <p style="font-size:13px;">
                        Trường hợp chuyển tiền để mua hàng hoá, xin vui lòng chọn hình thức <a href="">
                        <strong>TẠM GIỮ</strong></a> để được an toàn.</p>
                </div>
                <div class="transfer-friends-button button-box">
                    <a id="btnTransfer0" class="button-yell" 
                        href="https://www.nganluong.vn/?portal=nganluong&amp;page=transfer&amp;cmd=create&amp;option=1">
                    <span>Tiếp tục</span></a></div>
            </div>
        </div>
    </div>
</asp:Content>
