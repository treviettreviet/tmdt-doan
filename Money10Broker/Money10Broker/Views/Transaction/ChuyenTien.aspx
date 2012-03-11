<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteTaiKhoan.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Giao dịch chuyển tiền
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

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
				<li class="" style="display:block"><a href="/Transaction/LichSuGiaoDich"><span>Lịch sử giao dịch</span></a></li>			
                <li class="" style="display:block"><a href="/Transaction/RutTien"><span>Rút tiền</span></a></li>	
				<li class="active " style="display:block"><a href="/Transaction/ChuyenTien"><span>Chuyển tiền</span></a></li>
                <li class=" " style="display:block"><a href="/Transaction/ChuyenTienCungMoigioi"><span>Chuyển tiền cùng môi giới</span></a></li>
                <li class=" " style="display:block"><a href="/Transaction/ChuyenTienKhacMoigioi"><span>Chuyển tiền khác môi giới</span></a></li>
			</ul>
		</div>
	</div>
</div>		
<div class="box-content">	
	<div class="box-content-square" style="padding-top:0;">	
         
         <div class="<%=Html.Encode(ViewData["div"]) %>"><%=Html.Encode(ViewData["messege"]) %></div>
         
		<div id="complaints-left">		 
		<%--<div>
			<!-- thông báo lỗi--><div class="message-box"></div><!--hết thông báo lỗi-->
		</div>--%>	
        <div id="title">
        <span class="yel">Chuyển Tiền Trên Ecmoney10broker</span>
         </div>
            <script type="text/javascript" language="javascript">
                $("document").ready(function () { $("#optiondiffbank").hide(); });
                function GetBank(option) {

                    if (option == 'samebank') {
                        $("#optionsamebank").show("normal");
                        $("#optiondiffbank").hide("slow");
                    }
                    else {
                        $("#optionsamebank").hide("slow");
                        $("#optiondiffbank").show("normal");
                        
                    }
                }
            </script>
		  <form method="post" action="/Transaction/TransferByBroker" enctype="multipart/form-data"><input type="hidden" name="form_module_id" value="451">
		  <table border="0" cellspacing="10" cellpadding="0" width="100%">	
          <p style="margin-left:80px;">
            <input type="radio" name="id" value="samebank" checked="checked" onclick="GetBank('samebank');" id="id_account_per"><label for="id_account_per"><span class="font-acc">Chuyển tiền cùng ngân hàng</span><span class="font-acc-command">(Chuyển tiền trong cũng một ngân hàng)</span></label></p>
          <p id='optionsamebank' style="margin-left:100px;">
            <select id="banktransfer" name="banktransfer">
                <option selected="selected" value='1'>ECMoney 10</option>
                <option value='2'>ECMoney 4</option>
            </select>
          </p>
          <p style="margin-left:80px;">
            <input type="radio" name="id" value="diffbank"  onclick="GetBank('diffbank');" id="id_account_merchant"><label for="id_account_merchant"><span class="font-acc">Chuyển tiền liên ngân hàng</span><span class="font-acc-command">(Chuyển tiền giữa hai ngân hàng khác nhau)</span></label></p>		  	
			  
          <p id='optiondiffbank' style="margin-left:100px;">
            <label id="diffbanksend">Send Bank</label><br>
            <select id="banksend" name="banksend">
                <option selected="selected" value='1'>ECMoney 10</option>
                <option value='2'>ECMoney 4</option>
            </select>
            <br><label id="diffbankreceive">Receive Bank</label><br>
            <select id="bankreceive" name="bankreceive">
                <option selected="selected" value='1'>ECMoney 10</option>
                <option value='2'>ECMoney 4</option>
            </select>
          </p>
          <% 
              try
              {
                  //Money10Broker.Models.xnvaufit_MoiGioiEntities db = new Money10Broker.Models.xnvaufit_MoiGioiEntities();
                  Money10Broker.Models.TaiKhoan account = (Money10Broker.Models.TaiKhoan)Session["User"];
                  //Money10Broker.Models.The tk = db.Thes.Single(m => m.MaTaiKhoan == account.MaTaiKhoan);
              }
              catch (Exception ex)
              {

                  throw ex;
              }
              
          %>
              <tr>
				<th><span class="required">*</span>Số thẻ người gửi:</th>
				<td><input name="sendcardnum" id="sendcardnum" type="text" value="" ></td>
			  </tr>
			  <tr>
				<th><span class="required">*</span>Số thẻ người nhận:</th>
				<td><input name="receivecardnum" id="receivecardnum" type="text" value="" > <span class="field-check-function submit" title="notEmpty(_value_)">Chưa nhập số tiền muốn rút</span><span class="field-check-function blur submit" title="isAmount(_value_)">Số tiền muốn rút nhập không đúng yêu cầu</span>
				</td>
			  </tr>		
			  <tr>
				<th><span class="required">*</span>Số tiền muốn chuyển khoản</th>
				<td><input name="amount" id="amount" type="text" value="10000" maxlength="16" class="input-business input-amount field-check" autocomplete="off"><span class="span-grey"> (VND)</span> <span class="field-check-function submit" title="notEmpty(_value_)">Chưa nhập số tiền muốn rút</span><span class="field-check-function blur submit" title="isAmount(_value_)">Số tiền muốn rút nhập không đúng yêu cầu</span>
				</td>
			  </tr>		  			  
			 		  
			  <tr class="cashout-fee">
				<th>Phí rút tiền:</th>
				<td><strong>Theo phí chuyển khoản quy định của từng ngân hàng</strong></td>
			  </tr>              			 	  					  		  				  
			  <tr>
				<th>&nbsp;</th>
				<td><input name="btnSubmit" type="submit" value="Chuyển Tiền" class="button-content"></td>
			  </tr>
		</table>
		</form>
        <script language="javascript">setFormCheck();</script>	
		</div>
		
	</div>
</div>

</asp:Content>
