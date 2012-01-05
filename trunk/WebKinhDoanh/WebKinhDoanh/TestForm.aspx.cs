using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebKinhDoanh
{
    public partial class TestForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Thông tin 1 đơn hàng
            CDonHang cDonHang = new CDonHang();
            cDonHang.MaSanPham = 30;
            cDonHang.SoLuong = 10;
            cDonHang.TongTien = cDonHang.SoLuong * 100000;

            // Thông tin tài khoản người nhận.
            CTaiKhoan cTaiKhoan = new CTaiKhoan();
            cTaiKhoan.TenTaiKhoan = "HUỲNH TẤN LÊN";
            cTaiKhoan.Email = "lenhuynh3003@gmail.com";
            cTaiKhoan.DienThoai = "0984.08.00.48";
            cTaiKhoan.DiaChi = "109B, Cư Xá Đường Sắt, Lý Thái Tổ, Phường 1, Quận 3, TP Hồ Chí Minh";
            string url = "www.google.com.vn";
            //SendInformation(url, cDonHang, cTaiKhoan);
            Response.Redirect(url+"?DonHang="+cDonHang+"&TaiKhoan="+cTaiKhoan);
        }

        protected void SendInformation(string url, CDonHang cDonHang, CTaiKhoan cTaiKhoan)
        {
            Response.Redirect("");
        }
    }
}