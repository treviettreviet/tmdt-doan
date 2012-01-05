using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoiGioi_Money10
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMaSanPham.Text = Request.QueryString["MaSanPham"];
            lblSoLuong.Text = Request.QueryString["SoLuong"];
            lblTongTien.Text = Request.QueryString["TongTien"];
            lblTenNguoiNhan.Text = Request.QueryString["TenNguoiNhan"];
            lblEmail.Text = Request.QueryString["Email"];
            lblSoDienThoai.Text = Request.QueryString["DienThoai"];
            lblDiaChi.Text = Request.QueryString["DiaChi"];
        }
    }
}