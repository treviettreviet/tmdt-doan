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
        public int GhiNhanDonHang(string MaDonHang, string MaVanChuyen, int SoLuong, decimal TongThanhToan, string ChuTaiKhoan, int TinhTrang, string Email, string DienThoai, string DiaChi)
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
                if (MaVanChuyen == null)
                    return 9;   // Thiếu Mã Vận Chuyển
                dh.MaHoaDon = MaDonHang;
                dh.MaVanChuyen = MaVanChuyen;
                dh.SoLuong = SoLuong;
                dh.TongThanhToan = TongThanhToan;
                dh.ChuTaiKhoan = ChuTaiKhoan;
                dh.TinhTrang = 0;
                dh.Email = Email;
                dh.DienThoai = DienThoai;
                dh.DiaChi = DiaChi;
                db.DonHangs.InsertOnSubmit(dh);
                db.SubmitChanges();
                return 0;   // Ghi nhận Đơn Hàng thành công.!
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
                //return -1;  // Không xác định được lỗi
            }
        }

        // Thông tin các tham số trả về
        // return 1: Thiếu Mã Đơn Hàng
        // return 2: Thiếu Mã Vận Chuyển
        // return 3: Đơn Hàng không tồn tại
        // return 4: Đơn hàng chưa thanh toán
        // return SoTienHoaDon: Đơn hàng đã thanh toán thành công và trả về số tiền tương ứng với đơn hàng đó.
        [WebMethod]
        public decimal VCKiemTraDonHang(string MaDonHang, string MaVanChuyen)
        {
            dbMoiGioiOnlineDataContext mg = new dbMoiGioiOnlineDataContext();
            if (MaDonHang == null)
                return 1;
            if (MaVanChuyen == null)
                return 2;

            decimal result = 0;
            DonHang dhCheck = new DonHang();
            try
            {
                dhCheck = mg.DonHangs.Single(m => m.MaHoaDon == MaDonHang && m.MaVanChuyen == MaVanChuyen);
                if (dhCheck.TinhTrang == 0)
                    return 4;
                if(dhCheck.TinhTrang == 1)
                {
                    result = (decimal)dhCheck.TongThanhToan;
                    return result;
                }
            }
            catch
            {
                return 3;
            }
            return result;
        }
    }
}
