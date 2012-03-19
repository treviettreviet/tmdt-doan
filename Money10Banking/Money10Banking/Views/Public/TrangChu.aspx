<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Main" style="padding: 0">
        
                <div class="home-top">
                    <div class="home-top-left">
                        <div class="form_login">
                            <form action="/Public/XuLyDangNhap" method="post" id="login_small"
                            autocomplete="off" accept-charset="utf-8">

                            <% 
                                Money10Banking.Models.Language dataLang = new Money10Banking.Models.Language();
                                Money10Banking.Models.Language dataContent = new Money10Banking.Models.Language();
                                if (Session["Language"] != null && Session["Content"] != null)
                                {
                                    dataLang = (Money10Banking.Models.Language)Session["Language"];
                                    dataContent = (Money10Banking.Models.Language)Session["Content"];
                                }
                            %>
                            <%  
                                if (Session["User"] == null)
                                {
                            %>
                                    <table width="170" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="34">
                                                <div class="home-form-login-title"> 
                                                    <%=dataLang["BOX_TITLE"].ValueLang%></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="15" class="form-content-text">
                                                <%=dataLang["BOX_EMAIL"].ValueLang%></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30">
                                                <label>
                                                    <input type="text" name="email" value="" id="email" class="" style="width: 128px;">
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="14" class="form-content-text">
                                                <%=dataLang["BOX_PASSWORD"].ValueLang%>    
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30">
                                                <label>
                                                    <input type="password" name="password" value="" id="password" class=""
                                                        style="width: 128px;">
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="27">
                                                <label>
                                                    <input type="submit" name="btnLogin" value="Login" class="home-bt-login">
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="form-content-text">
                                               <%-- <a href="#" class="home-fr-a"><%=dataLang["BOX_FORGETPASS"].ValueLang%></a>&nbsp;&nbsp; <a href="#"
                                                        class="home-fr-a"><%=dataLang["BOX_FORGETEMAIL"].ValueLang%></a>--%>
                                                <div style="padding-top: 5px">
                                                    <%=dataLang["BOX_NOACC"].ValueLang%><a href="/Public/DangKy" class="home-fr-a">
                                                         <%=dataLang["TITLE_REGISTER"].ValueLang%></a></div>
                                            </td>
                                        </tr>
                                    </table>
                            <%        
                                }
                                else
                                {
                                    
                                    Money10Banking.Models.TaiKhoan tk = (Money10Banking.Models.TaiKhoan)Session["User"];
                            %>
                                    <table width="170px" border="0" cellpadding="0" cellspacing="0">
	                                    <tbody>
		                                    <tr>
			                                    <td height="45">
			                                    <div class="home-form-login-title"><%=dataLang["BOX_ACCINFO"].ValueLang%></div>
			                                    </td>
		                                    </tr>
		                                    <tr>
			                                    <td height="25" class="form-content-text">
			                                    <b><%=dataLang["BOX_EMAIL"].ValueLang%>: </b> <%=tk.Email %></td>
		                                    </tr>
		                                    <tr>
			                                    <td height="25" class="form-content-text"><b><%=dataLang["BOX_ACCTYPE"].ValueLang%>:</b> Cá nhân</td>
		                                    </tr>
		                                    <tr>
			                                    <td height="25" class="form-content-text"><b><%=dataLang["BOX_STATES"].ValueLang%>:</b>[ <a href="#">Chưa xác thực</a>]</td>
		                                    </tr>
		                                    <tr>
			                                    <td height="25" class="form-content-text"><b><%=dataLang["BOX_LASTLOGIN"].ValueLang%>: </b>
			                                    <b><%=tk.Email %></b> <%=dataLang["BOX_IN"].ValueLang%>
			                                     <% =DateTime.Now.ToString("hh:mm:ss - dd/MM/yyyy")%></td>
		                                    </tr>
	                                    </tbody>
                                    </table>
                            <%        
                                }
                            %>

                            </form>
                            <script type="text/javascript">
                        <script type="text/javascript">

                            function showSupportEx() {
                                j("#support_yahoo_skype").show();
                            }
                            function hideSupportEx() {
                                j("#support_yahoo_skype").hide();
                            }
                            function showAcccountEx() {
                                j("#AccountBlog").show();
                            }
                            function hideAcccountEx() {
                                j("#AccountBlog").hide();
                            }
                        </script>
                        <style type="text/css">
                            .ys-image
                            {
                                float: left;
                                width: 25%;
                            }
                            .ys-text
                            {
                                float: left;
                                padding-top: 0px;
                                width: 75%;
                                font-size: 11px;
                            }
                            .account-table-blog tr
                            {
                                height: 25px;
                            }
                            .account-table-blog td
                            {
                                padding-left: 25px;
                                color: #578E01;
                            }
                            #AccountBlog .account-table-blog a:hover
                            {
                                color: #578E01;
                            }
                        </style>
                    </div>
                </div>
                <div class="home-top-right">
                    <div class="slideshow">
                        <ul id="nav" style="margin-left: 2px;">
                            <li style="text-align: center;"><a href="#">
                                1</a> </li>
                            <li style="text-align: center;"><a href="#">
                                2</a> </li>
                            <li style="text-align: center;"><a href="#">
                                3</a> </li>
                            <li style="text-align: center;"><a href="#">
                                4</a> </li>
                            <li style="text-align: center;"><a href="#">
                                5</a> </li>
                        </ul>
                        <div class="pics" id="slideshow">
                            <a>
                                <img onclick="window.open('#')"
                                    width="592" height="193" src="../../Content/images/topup_ba.jpg"></a> <a>
                                        <img onclick="window.open('#')"
                                            width="592" height="193" src="../../Content/images/topup-ba.jpg"></a>
                            <a>
                                <img onclick="window.open('#')"
                                    width="592" height="193" src="../../Content/images/kiem_tie.jpg"></a> <a>
                                        <img onclick="window.open('#')"
                                            width="592" height="193" src="../../Content/images/592x1930.jpg"></a>
                            <a>
                                <img onclick="window.open('#')"
                                    width="592" height="193" src="../../Content/images/landding.jpg"></a>
                        </div>
                    </div>
                </div>
                <script type="text/javascript">
                    j(function () {
                        j('#slideshow').cycle({
                            fx: 'fade',
                            pager: '#nav',
                            pagerAnchorBuilder: function (idx, slide) {
                                // return sel string for existing anchor
                                return '#nav li:eq(' + (idx) + ') a';
                            }
                        });
                    });
                </script>
            </div>
            <div class="clear">
            </div>
       
        <div style="margin: 0pt auto; width: 805px;">
            <div class="hb-home-banner">
                <%=dataContent["PAGE_BANNER"].ValueLang%>
                <script type="text/javascript">
                    j(".hb-banner").hover(function () {
                        j(this).find(".hb-text").addClass("hb-banner-gray");
                        //j(this).append('<div class="lhtrans"></div>');
                        j(this).find(".hb-text").show();
                    }, function () {
                        j(this).find(".hb-text").removeClass("hb-banner-gray");
                        j(this).find(".hb-text").hide();
                        //j(this).find('.lhtrans').remove();
                    });
                </script>
            </div>
            <div class="hb-main-content">
                <%=dataContent["MAIN_LEFT"].ValueLang%>
                <%=dataContent["MAIN_RIGHT"].ValueLang%>
                <!-- start Ngan hang doi tac -->
                <div class="home-banks">
                    <div class="home-banks-title">
                        <%=dataLang["BOX_LISTBANK"].ValueLang%></div>
                    <div class="home-banks-content">
                        <table width="100%">
                            <tr>
                                <td width="4%" align="right">
                                    <div class="bank_list_prev" style="cursor: pointer;">
                                        <img src="../../Content/images/pre-arro.png"></div>
                                </td>
                                <td>
                                    <div class="bank-list">
                                        <ul>
                                            <li>
                                                <img src="../../Content/images/smartlin.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/10000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/20000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/30000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/40000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/50000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/60000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/70000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/80000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/90000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/10000001.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/11000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/12000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/13000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/14000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/15000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/16000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/17000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/18000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/19000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/20000001.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/21000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/22000000.png" alt="" height="55"></li>
                                            <li>
                                                <img src="../../Content/images/23000000.png" alt="" height="55"></li>
                                        </ul>
                                    </div>
                                </td>
                                <td width="4%" align="left">
                                    <div class="bank_list_next" style="cursor: pointer;">
                                        <img src="../../Content/images/next-arr.png"></div>
                                </td>
                            </tr>
                        </table>
                        <script type="text/javascript" src="../../Scripts/js/jcarouse.js"></script>
                        <script type="text/javascript">
                            j(window).load(function () {
                                j(".bank-list").jCarouselLite({
                                    btnNext: ".bank_list_next",
                                    btnPrev: ".bank_list_prev",
                                    visible: 7
                                });
                            });
                        </script>
                    </div>
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
