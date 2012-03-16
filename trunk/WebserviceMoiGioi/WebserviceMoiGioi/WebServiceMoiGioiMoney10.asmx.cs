using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebserviceMoiGioi
{
    /// <summary>
    /// Summary description for WebServiceMoiGioiMoney10
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebServiceMoiGioiMoney10 : System.Web.Services.WebService
    {
        [WebMethod]
        public int GhiNhanDonHang(string MaDonHang, int SoLuong, decimal TongThanhToan, string ChuTaiKhoan, int TinhTrang, string Email, string DienThoai, string DiaChi)
        {
            dbMoiGioiOnlineDataContext db = new dbMoiGioiOnlineDataContext();
            DonHang dh = new DonHang();
            try
            {
                if (MaDonHang == null)
                    return 1;   // Thiếu Mã Đơn Hàng
                if (SoLuong == null)
                    return 2;   // Thiếu Số Lượng Bán
                if(TongThanhToan==null)
                    return 3;   // Thiếu Tổng Thanh Toán
                if(ChuTaiKhoan==null)
                    return 4;    // Thiếu Tên Chủ Tài Khoản Của Website Kinh Doanh
                if(TinhTrang==null)
                    return 5;    // Thiếu Tình Trạng Của Tài Khoản Chủ Website Kinh Doanh
                if(Email==null)
                    return 6;    // Thiếu Email của Tài Khoản Website Kinh Doanh
                if(DienThoai==null)
                    return 7;    // Thiếu thông tin Số Điện Thoại của Chủ Website Kinh Doanh
                if(DiaChi==null)
                    return 8;    // Thiếu Địa Chỉ của Chủ Website Kinh Doanh
                dh.MaHoaDon = MaDonHang;
                dh.SoLuong = SoLuong;
                dh.TongThanhToan = TongThanhToan;
                dh.ChuTaiKhoan = ChuTaiKhoan;
                dh.TinhTrang = TinhTrang;
                dh.Email = Email;
                dh.DienThoai = DienThoai;
                dh.DiaChi = DiaChi;
                db.SubmitChanges();
                return 0;   // Ghi nhận Đơn Hàng thành công.!
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
                //return -1;  // Không xác định được lỗi
            }
        }
    }
}
