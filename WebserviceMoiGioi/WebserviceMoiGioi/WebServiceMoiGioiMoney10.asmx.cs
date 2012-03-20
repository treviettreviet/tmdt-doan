using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using WebserviceNganHang;

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

        [WebMethod]
        public string DangNhapGiaoDich(string email, string password)
        {
            string sID = "";
            try
            {
                bool flag = LogonUser(email, password);
                if (flag == true)
                {
                    string time = DateTime.Now.ToString();
                    string input = email + time;
                    sID = GetMD5Hash(input);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            return sID; // Trả về chuỗi sID khi đăng nhập thành công
        }

        public bool LogonUser(string email, string password)
        {
            dbMoiGioiOnlineDataContext mg = new dbMoiGioiOnlineDataContext();
            TaiKhoan TK = new TaiKhoan();
            try
            {
                string md5Pass = GetMD5Hash(password);
                TK = mg.TaiKhoans.Single(m => m.Email == email && m.MatKhau == md5Pass);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static string GetMD5Hash(string input)
        {
            System.Security.Cryptography.MD5CryptoServiceProvider x = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] bs = System.Text.Encoding.UTF8.GetBytes(input);
            bs = x.ComputeHash(bs);
            System.Text.StringBuilder s = new System.Text.StringBuilder();
            foreach (byte b in bs)
            {
                s.Append(b.ToString("x2").ToLower());
            }
            string password = s.ToString();
            return password;
        }

        [WebMethod]
        public int ChuyenTienLienMoiGioi(string sID, decimal SoTienChuyen, string EmailTaiKhoanNhan)
        {
            if (sID == null)
                return 1;
            if (SoTienChuyen == null)
                return 2;
            if (EmailTaiKhoanNhan == null)
                return 3;

            dbMoiGioiOnlineDataContext mg = new dbMoiGioiOnlineDataContext();
            TaiKhoan tk = null;
            try
            {
                tk = mg.TaiKhoans.Single(m=>m.Email==EmailTaiKhoanNhan);
            }
            catch
            {
                return 4;   // Email tài khoản nhận không tồn tại trong hệ thống EcMoney10Broker.tk
            }
            
            // B1: Gọi Webservice chuyển tiền cùng ngân hàng của hệ thống ngân hàng EcMoney10Bank. 
            System.Net.ServicePointManager.Expect100Continue = false;
            string UrlWebservice = "http://ecmoney10.tk/WebserviceNganHang/WebserviceNganHangMoney10.asmx";
            string ServiceName = "WebServiceNganHangMoney10";
            string MethodName = "TransferMoneySameBank";

            object[] arrOb = new object[4];
            arrOb[0] = sID;
            arrOb[1] = "4024007182025915";  // Số thẻ của Môi Giới 04
            arrOb[2] = "340429813757143";   // Số thẻ của Môi Giới 10
            arrOb[3] = SoTienChuyen;
            
            object obResult = WSProxy.CallWebService(UrlWebservice, ServiceName, MethodName, arrOb);
            int result = (int)obResult;
            if (result == 0)
            {
                // Tiến hành cộng tiền cho tài khoản nhận
                tk.SoDu += SoTienChuyen;
                mg.SubmitChanges();
                return 0;   // Thành công
            }
            else
            {
                return result;  // Thông báo lỗi tương ứng
            }
        }
    }
}
