using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebKinhDoanh
{
    public partial class DatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
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
            string url = "http://localhost:2283/ThanhToanTrucTuyen.aspx";
            url += "?MaSanPham="+cDonHang.MaSanPham;
            url += "&SoLuong="+cDonHang.SoLuong;
            url += "&TongTien="+cDonHang.TongTien;
            url += "&TenNguoiNhan="+cTaiKhoan.TenTaiKhoan;
            url += "&Email="+cTaiKhoan.Email;
            url += "&DienThoai="+cTaiKhoan.DienThoai;
            url += "&DiaChi="+cTaiKhoan.DiaChi;
            Response.Redirect(url);
            //SendInformation(url, cDonHang, cTaiKhoan);
        }

        protected void SendInformation(string url, CDonHang cDonHang, CTaiKhoan cTaiKhoan)
        {
            Response.RedirectLocation = url;
        }
    }
}