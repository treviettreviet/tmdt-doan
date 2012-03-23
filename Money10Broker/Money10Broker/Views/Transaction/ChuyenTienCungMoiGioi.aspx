<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Chuyển tiền liên môi giới
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <script type="text/javascript">
      var emailfilter = /^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
      function isEmail(e) {
          var returnval = emailfilter.test(e.value)
          return returnval
      }
      function isNumber(e) {
          var unicode = e.keyCode;
          if (unicode != 8) {
              if (unicode < 48 || unicode > 57) {
                  return false;
              }
          }
      }
      function checkForm() {
          // Email
          if (document.form1.receiver_email.value == "") {
              alert("Bạn phải nhập vào email người nhận");
              document.form1.receiver_email.focus();
              return false;
          }
          if (isEmail(document.form1.receiver_email) == false) {
              alert("Email không đúng định dạng");
              document.form1.email.focus();
              return false;
          }
          if (document.form1.confirm_receiver_email.value != document.form1.receiver_email.value) {
              alert("Email nhập lại không đúng");
              document.form1.confirm_receiver_email.focus();
              return false;
          }
          if (document.form1.price.value == "") {
              alert("Bạn phải nhập số tiền muốn chuyển");
              document.form1.price.focus();
              return false;
          }
          

      }
</script>
    <div id="content">
        <div id="menu-nav-content">
            <div id="menu-nav-content-l">
            </div>
            <div id="menu-nav-content-r">
            </div>
            <div id="menu-nav-content-c">
                <div id="menu-nav-content-main">
                    <ul>
                        <li class="active" style="display: block"><a href="/Transaction/LichSuGiaoDich"><span>GIAO DỊCH</span></a></li>
                        <li class=" " style="display: block"><a href="/Account/ThongTinTaiKhoan"><span>TÀI KHOẢN</span></a></li>
                    </ul>
                </div>
                <div id="menu-nav-content-sub">
                    <ul>
                        <%--<li class="" style="display: block"><a href="/Public/TongHop"><span>Tổng hợp</span></a></li>--%>
                        <li class="" style="display: block"><a href="/Transaction/LichSuGiaoDich"><span>Lịch
                            sử giao dịch</span></a></li>
                        <%--<li class="" style="display: block"><a href="/Transaction/RutTien"><span>Rút tiền</span></a></li>--%>
                        <li class=" " style="display: block"><a href="/Transaction/ChuyenTien"><span>Chuyển
                            tiền</span></a></li>
                        <li class="active " style="display: block"><a href="/Transaction/ChuyenTienCungMoigioi">
                            <span>Chuyển tiền cùng môi giới</span></a></li>
                        <li class=" " style="display: block"><a href="/Transaction/ChuyenTienKhacMoigioi"><span>
                            Chuyển tiền khác môi giới</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="box-content-square" style="padding-top: 0; margin-bottom: 0; padding-bottom: 15px;">
            <div class="box-content-square-content" id="transfer-friends">
                <%
                    if (Session["User"] == null)
                    {
                        //Response.Redirect("/Public/TrangChu");
                    }
                    else
                    {
                        Money10Broker.Models.TaiKhoan tk = (Money10Broker.Models.TaiKhoan)Session["User"];
                        string div = Request.QueryString["div"];
                        string error = Request.QueryString["error"];
                        if (div != null && error != null)
                        {
                %>
                             <div class="<%=Html.Encode(div)%>"><%=Html.Encode(error)%></div>
                <%
                        }
                %>
                            
                <form method="post" name="form1" onsubmit="return checkForm();" action="/Transaction/XuLyChuyenTienCungMoiGioi">
                <h4 style="margin-top: 10px;">
                    Tài khoản người nhận</h4>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <th>
                                <span class="required">*</span>Tài khoản của tôi:
                            </th>
                            <td>
                                <strong>
                                    <%=tk.Email %></strong>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="required">*</span>Tài khoản người nhận:
                            </th>
                            <td class="blear">
                                <input class="output-contact field-check" name="receiver_email" id="receiver_email"
                                    value="" maxlength="255" type="text" />
                                <div class="field-notification field-alert">
                                    Nhập địa chỉ Email chính của tài khoản người nhận (không quá 255 ký tự)</div>
                                                           </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="required">*</span>Nhập lại tài khoản người nhận:
                            </th>
                            <td class="blear">
                                <input class="output-contact field-check text-confirm" name="confirm_receiver_email"
                                    value="" maxlength="255" type="text" /><div id="danhsachdoitac">
                                    </div>
                                <div class="field-notification field-alert">
                                    Nhập lại địa chỉ Email chính của tài khoản người nhận (không quá 255 ký tự)</div>                                
                            </td>
                        </tr>
                    </tbody>
                </table>
                <h4 style="margin-top: 10px;">
                    Thông tin giao dịch</h4>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <th>
                                Số dư khả dụng:
                            </th>
                            <td>
                                <span class="yel-large">
                                    <%=tk.SoDu %></span> <span class="span-grey">VND</span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="required">*</span>Số tiền muốn chuyển:
                            </th>
                            <td class="blear">
                                <%--<input name="price" value="" type="text" class="field-check input-amount" maxlength="20" />--%>
                                <input name="price" value="" type="text" maxlength="20" onkeydown="return isNumber(event)"/>
                                <span class="span-grey">VND</span><div class="field-notification field-alert">
                                    Tối thiểu 2.000 VND/lần</div>
                                <span class="field-check-function blur submit" title="isAmount(_value_)">Số tiền muốn
                                    chuyển không đúng yêu cầu</span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                Lý do chuyển tiền:
                            </th>
                            <td class="blear">
                                <textarea name="reason" type="text" class="field-check" cols="50" rows="5" style="width: 500px;"></textarea><div
                                    class="field-notification field-alert">
                                    Nhập lý do chuyển tiền (không quá 500 ký tự)</div>
                                <span class="field-check-function submit" title="notEmpty(_value_)">Chưa nhập lý do
                                    chuyển tiền</span>
                            </td>
                        </tr>

                        <tr>
                            <th>
                            </th>
                            <td>
                                <input class="button-content" type="submit" value="Chuyển tiền" />
                            </td>
                        </tr>
                    </tbody>
                </table>
                </form>
                <%
                    }
                %>
                <script type="text/javascript" language="javascript">                    setFormCheck();</script>
            </div>
        </div>
    </div>
</asp:Content>
