<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	QuanLyThe
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div id="body-wrapper"> <!-- Wrapper for the radial gradient background -->
		
		<div id="sidebar"><div id="sidebar-wrapper"> <!-- Sidebar with logo and menu -->
			
			<h1 id="sidebar-title"><a href="#">Admin EcMoney10Banking</a></h1>
		  
			<!-- Logo (221px wide) -->
			<a href="#"><img id="logo" src="../../Content/images/logo.png" alt="Admin logo" /></a>
            <div></div>
		  
			<!-- Sidebar Profile links -->
			<div id="profile-links">
            <% Money10BankingAdmin.Models.Admin ad = (Money10BankingAdmin.Models.Admin)Session["User"]; %>
				Hello, <a href="#" title="Edit your profile"><%=ad.Name %></a>, 
                <br />
				<br />
				<a href="#" title="View the Site">Thông tin</a> | <a href="/Public/XuLyThoat" title="Sign Out">Thoát</a>
			</div>        
			
			<ul id="main-nav">  <!-- Accordion Menu -->
			
				
				<li> 
					<a href="/Public/QuanLyThe" class="nav-top-item current"> <!-- Add the class "current" to current menu item -->
                    QUẢN LÝ THẺ
					</a>
					<%--<ul>
						<li><a href="#">Thông tin Khách Hàng</a></li>
						<li><a class="current" href="#">Thêm Khách Hàng</a></li> <!-- Add class "current" to sub menu items also -->
						<li><a href="#">Xóa Khách Hàng</a></li>
						<li><a href="#">Cập Nhật Thông Tin Khách Hàng</a></li>
					</ul>--%>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						QUẢN LÝ GIAO DỊCH
					</a>
					<ul>
						<li><a href="/Mod/NapTien">Nạp Tiền</a></li>
						<%--<li><a class="current" href="#">Chuyển Tiền</a></li> --%><!-- Add class "current" to sub menu items also -->
						<%--<li><a href="#">Xóa Môi Giới</a></li>
						<li><a href="#">Cập Nhật Thông Tin Môi Giới</a></li>--%>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						QUẢN LÝ USER
					</a>
					<ul>
						<li><a href="/Admin/TaoUser">Tạo User</a></li>
						<li><a href="#">Phân Quyền</a></li>
						<li><a href="/Admin/DanhSachUser">Danh Sách User</a></li>
						<%--<li><a href="#">Cập Nhật Thông Tin Thẻ</a></li>--%>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						TIỆN ÍCH
					</a>
					<ul>
						<li><a href="#">Banner</a></li>
						<li><a href="#">Webpages</a></li>
						<li><a href="#">Images</a></li>
					</ul>
				</li>			
			</ul> <!-- End #main-nav -->
			
			<div id="messages" style="display: none"> <!-- Messages are shown when a link with these attributes are clicked: href="#messages" rel="modal"  -->
				
				<h3>3 Messages</h3>
			 
				<p>
					<strong>17th May 2009</strong> by Admin<br />
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue.
					<small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
				</p>
			 
				<p>
					<strong>2nd May 2009</strong> by Jane Doe<br />
					Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.
					<small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
				</p>
			 
				<p>
					<strong>25th April 2009</strong> by Admin<br />
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue.
					<small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
				</p>
				
				<form action="#" method="post">
					
					<h4>New Message</h4>
					
					<fieldset>
						<textarea class="textarea" name="textfield" cols="79" rows="5"></textarea>
					</fieldset>
					
					<fieldset>
					
						<select name="dropdown" class="small-input">
							<option value="option1">Send to...</option>
							<option value="option2">Everyone</option>
							<option value="option3">Admin</option>
							<option value="option4">Jane Doe</option>
						</select>
						
						<input class="button" type="submit" value="Send" />
						
					</fieldset>
					
				</form>
				
			</div> <!-- End #messages -->
			
		</div></div> <!-- End #sidebar -->

    <h2>QuanLyThe</h2>

</asp:Content>
