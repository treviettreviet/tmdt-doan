using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Money10Banking.Models;
using System.Security.Cryptography;

namespace Money10Banking.Controllers
{
  
    public class PublicController : Controller
    {
        //
        // GET: /Public/

        // Khai báo đối tượng kết nối cơ sở dữ liệu
        private NganHangEntities dbNganHangOnline = new NganHangEntities();
        
        private Random r = new Random(); // Để phát sinh số ngẫu nhiên

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult TrangChu()
        {
            return View();
        }
        
        public ActionResult DangKy()
        {
            return View();
        }
        
        public ActionResult DangNhap()
        {
            return View();
        }

       
        /// <summary>
        /// Lên - Kiểm tra đăng nhập, trả về nhiều kết quả
        /// </summary>
        /// <param name="email"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        private int UserValidation(string email, string password)
        {
            int check = -1; // Đăng nhập thất bại: Sai Username và Password
            try
            {
                TaiKhoan user = (from row in dbNganHangOnline.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();
                if (user.MatKhau == GetMD5Hash(password))
                {
                    check = 0;  //Đăng nhập thành công
                    return check;
                }

                if (!user.MatKhau.Equals(GetMD5Hash(password)))
                {
                    check = -2; // Email không tồn tại
                    return check;
                }
            }
            catch
            {
                return check; 
            }
            return check;
        }

        /// <summary>
        /// Lên - Xử lý đăng nhập từ trang chủ
        /// </summary>
        /// <param name="UserName"></param>
        /// <param name="Password"></param>
        /// <returns></returns>
        public ActionResult XuLyDangNhap(string email, string password)
        {
            try
            {
                int user_validation = UserValidation(email, password);
                if (user_validation == 0)
                {
                    //Session sesKhachHang = 
                    return View("LichSuGiaoDich");
                }
                else
                {
                    string div = "error-box";
                    string error = "";
                    if (user_validation == -1)
                    {
                        error += "Email không tồn tại";
                    }
                    if (user_validation == -2)
                    {
                        error += "Sai mật khẩu";
                    }
                    ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                    ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                    return View("DangNhap");
                }
            }
            catch (Exception ex)
            {
                
                throw new Exception(ex.Message);
            }
        }

        public ActionResult ChuyenTien()
        {
            return View();
        }

        public ActionResult RutTien()
        {
            return View();
        }
        
        public ActionResult CapNhatTaiKhoan() //Khi đăng nhập thành công
        {
            return View();
        }
        
        public ActionResult NapTien()
        {
            return View();
        }
        public ActionResult CapNhatThongTinTaiKhoan()
        {
            return View();
        }
        public ActionResult ThayDoiMatKhau()
        {
            return View();
        }
        
        /// <summary>
        /// Thắng - Kiểm tra email tồn tại không?
        /// </summary>
        /// <returns></returns>
        private int KiemTraEmail(string email)
        {
            int flag = 1;
            try
            {
                TaiKhoan user = (from row in dbNganHangOnline.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();
                if (!user.Email.Equals(email))
                {
                    flag = 1; // Email không tồn tại
                    return flag;
                }
                else
                {
                    flag = 0; // email ton tai
                    return flag;
                }
            }
            catch {
                return flag;
            }
        }

        /// <summary>
        /// // Dang ky-THang
        /// </summary>
        /// <returns></returns>
        private int createKeyCode()
        {
            //int seed = int.Parse(txt.Text);
            // Random r = new Random();
            return r.Next(0, 1000000) + Convert.ToInt32(DateTime.Now.Day.ToString()) + Convert.ToInt32(DateTime.Now.Month.ToString()) + Convert.ToInt32(DateTime.Now.Year.ToString()) + Convert.ToInt32(DateTime.Now.Minute.ToString()) + Convert.ToInt32(DateTime.Now.Second.ToString()) + Convert.ToInt32(DateTime.Now.Millisecond.ToString());
        }
        /// <summary>
        /// Thắng - Phat Sinh Mat Khau
        /// </summary>
        /// <param name="length"></param>
        /// <returns></returns>
        public static string PassWord(int length)
        {
            byte[] randomArray = new byte[length];
            string randomString;
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            rng.GetBytes(randomArray);
            randomString = Convert.ToBase64String(randomArray);
            return randomString;
        }


        /// <summary>
        /// Thắng - Tao so tai khoan ngau nhien
        /// </summary>
        /// <returns></returns>
        public string TaoSoTaiKhoan()
        {
            int stk = createKeyCode();
            string tk = "";
            if (stk.ToString().Count() == 6)
            {
                tk = stk.ToString();
            }
            if (stk.ToString().Count() == 5)
            {
                tk = "0" + stk.ToString();
            }
            else
                if (stk.ToString().Count() == 4)
                {
                    tk = "00" + stk.ToString();
                }
                else
                    if (stk.ToString().Count() == 3)
                    {
                        tk = "000" + stk.ToString();
                    }
                    else
                        if (stk.ToString().Count() == 2)
                        {
                            tk = "0000" + stk.ToString();
                        }
                        else
                            if (stk.ToString().Count() == 1 && stk != 0)
                            {
                                tk = "000000" + stk.ToString();
                            }
                            else
                                if (stk == 0)
                                {
                                    createKeyCode();
                                }
            return tk;
        }


        /// <summary>
        /// Thắng - Ma hoa MD5
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
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


        /// <summary>
        /// Thắng - Phat sinh chuoi theo chieu dai tuy y
        /// </summary>
        /// <param name="length"></param>
        /// <returns></returns>
        //public static string GetSalt(int length)
        //{
        //    byte[] randomArray = new byte[length];
        //    string randomString;
        //    RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
        //    rng.GetBytes(randomArray);
        //    randomString = Convert.ToBase64String(randomArray);
        //    return randomString;
        //}


        /// <summary>
        /// Đăng Ký cá nhân
        /// </summary>
        /// <param name="email"></param>
        /// <param name="password"></param>
        /// <param name="passwordConfirm"></param>
        /// <param name="name"></param>
        /// <param name="birthDay"></param>
        /// <param name="CMND"></param>
        /// <param name="rdNam"></param>
        /// <param name="rdNu"></param>
        /// <param name="SoNha"></param>
        /// <param name="Duong"></param>
        /// <param name="PhuongXa"></param>
        /// <param name="QuanHuyen"></param>
        /// <param name="ThanhPho"></param>
        /// <returns></returns>
        public ActionResult XuLyDangKyCaNhan(string email, string password, string passwordConfirm, string name, DateTime birthDay, int CMND, string rdNam, string rdNu, string SoNha, string Duong, string PhuongXa, string QuanHuyen, string ThanhPho)
        {
            try
            {
                NganHangEntities db1 = new NganHangEntities();
                TaiKhoan tk = new TaiKhoan();
                var maTk = from mtk in db1.TaiKhoans select mtk;
                int j = maTk.Count() + 1;
                if (j <= 9)
                {
                    tk.MaTaiKhoan = "TK00" + j.ToString();
                }
                else
                    if (j > 9 && j <= 99)
                    {
                        tk.MaTaiKhoan = "TK0" + j.ToString();
                    }
                    else
                        if (j > 99 && j <= 999)
                        {
                            tk.MaTaiKhoan = "TK" + j.ToString();
                        }
                tk.MaLoaiTaiKhoan = "LTK001";

                tk.SoTaiKhoan = TaoSoTaiKhoan();
                tk.MatKhauGiaoDich = PassWord(6);
                //if (KiemTraEmail(email) == 1)
                //{
                tk.Email = email;
                //}
                //else
                //{
                //    ktemail="Email da duoc dung";
                //   // return View("DangKy");
                //}
                tk.MatKhau = GetMD5Hash(password).Trim();

                db1.TaiKhoans.AddObject(tk);
                DiaChi dc = new DiaChi();
                var maDC = from mdc in db1.DiaChis select mdc;
                int i = maDC.Count() + 1;
                if (i <= 9)
                {
                    dc.MaDiaChi = "DC00" + i.ToString();
                }
                else
                    if (i > 9 && i <= 99)
                    {
                        dc.MaDiaChi = "DC0" + i.ToString();
                    }
                    else
                        if (i > 99 && i <= 999)
                        {
                            dc.MaDiaChi = "DC" + i.ToString();
                        }

                if (SoNha == "" || SoNha == null)
                {
                    SoNha = "0";
                }
                if (Duong == "" || Duong == null)
                {
                    Duong = "0";
                }
                if (PhuongXa == "" || PhuongXa == null)
                {
                    PhuongXa = "0";
                }
                if (QuanHuyen == "" || QuanHuyen == null)
                {
                    QuanHuyen = "0";
                }
                if (ThanhPho == "" || ThanhPho == null)
                {
                    ThanhPho = "0";
                }
                dc.SoNha = SoNha;
                dc.Duong = Duong;
                dc.PhuongXa = PhuongXa;
                dc.QuanHuyen = QuanHuyen;
                dc.TinhThanh = ThanhPho;
                dc.MaTaiKhoan = tk.MaTaiKhoan;
                db1.DiaChis.AddObject(dc);
                KhachHang kh = new KhachHang();
                var maKh = from mkh in db1.KhachHangs select mkh;

                int k = maKh.Count() + 1;
                if (k <= 9)
                {
                    kh.MaKhachHang = "KH00" + k.ToString();
                }
                else
                    if (k > 9 && k <= 99)
                    {
                        kh.MaKhachHang = "KH0" + k.ToString();
                    }
                    else
                        if (k > 99 && k <= 999)
                        {
                            kh.MaKhachHang = "KH" + k.ToString();
                        }

                kh.MaTaiKhoan = tk.MaTaiKhoan;

                kh.HoTen = name;
                kh.NgaySinh = birthDay;
                if (rdNam != null)
                {
                    kh.GioiTinh = "Nam";
                }
                if (rdNu != null)
                {
                    kh.GioiTinh = "Nu";
                }
                if (rdNam == null && rdNu == null)
                {
                    kh.GioiTinh = "PD";
                }
                kh.CMNDHoChieu = CMND;

                db1.KhachHangs.AddObject(kh);

                db1.SaveChanges();

                return View("DangNhap");
            }
            catch 
            {
                //throw new Exception("Error on # of clients.", ex);
                return View("BaoLoi");
            }
        }


        /// <summary>
        /// Thắng - Xử lý đăng ký môi giới
        /// </summary>
        /// <param name="email_company"></param>
        /// <param name="password_company"></param>
        /// <param name="passwordConfirm_company"></param>
        /// <param name="name"></param>
        /// <param name="birthDay"></param>
        /// <param name="CMND"></param>
        /// <param name="rdNam"></param>
        /// <param name="rdNu"></param>
        /// <param name="SoNha"></param>
        /// <param name="Duong"></param>
        /// <param name="PhuongXa"></param>
        /// <param name="QuanHuyen"></param>
        /// <param name="ThanhPho"></param>
        /// <param name="companyName"></param>
        /// <param name="companySocialId"></param>
        /// <param name="phoneNo_company"></param>
        /// <returns></returns>
        public ActionResult XuLyDangKyMoiGioi(string email_company, string password_company, string passwordConfirm_company, string name, string birthDay, int CMND, string rdNam, string rdNu, string SoNha, string Duong, string PhuongXa, string QuanHuyen, string ThanhPho, string companyName, string companySocialId, int phoneNo_company)
        {
        try 
        {
            NganHangEntities db1 = new NganHangEntities();
               
                
            TaiKhoan tk = new TaiKhoan();
            var maTk = from mtk in db1.TaiKhoans select mtk;
            int j = maTk.Count() + 1;
            if (j <= 9)
            {
                tk.MaTaiKhoan = "TK00" + j.ToString();
            }
            else
                if (j > 9 && j <= 99)
                {
                    tk.MaTaiKhoan = "TK0" + j.ToString();
                }
                else
                    if (j > 99 && j <= 999)
                    {
                        tk.MaTaiKhoan = "TK" + j.ToString();
                    }
            tk.MaLoaiTaiKhoan = "LTK002";

            tk.SoTaiKhoan = TaoSoTaiKhoan();
            tk.MatKhauGiaoDich = PassWord(6);
            //if (KiemTraEmail(email) == 1)
            //{
            tk.Email = email_company;
            //}
            //else
            //{
            //    ktemail="Email da duoc dung";
            //   // return View("DangKy");
            //}
            tk.MatKhau = GetMD5Hash(password_company).Trim();
                
            db1.TaiKhoans.AddObject(tk);

            MoiGioi mg = new MoiGioi();
            MoiGioi maMg = db1.MoiGiois.LastOrDefault();
            string moigioi = maMg.MaMoiGioi;
            //int m = maMg.Count() + 1;
            //if (m <= 9)
            //{
            //    mg.MaMoiGioi = "MG00" + m.ToString();
            //}
            //else
            //    if (m > 9 && m <= 99)
            //    {
            //        mg.MaMoiGioi = "MG0" + m.ToString();
            //    }
            //    else
            //        if (m > 99 && m <= 999)
            //        {
            //            mg.MaMoiGioi = "MG" + m.ToString();
            //        }
            mg.MaMoiGioi= TaoMaTangTuDong(moigioi, 2, "MG");

            mg.MaTaiKhoan = tk.MaTaiKhoan;
            //var gpkd = from gp in db1.MoiGiois where companyName.Equals(gp.SoGiayPhepKinhDoanh) || companyName.Equals(gp.TenCongTy) select gp;
               
              
                mg.SoGiayPhepKinhDoanh = companySocialId;
                mg.TenCongTy = companyName;
             
            ////mg.SoGiayPhepKinhDoanh = txtGPKD.Text.ToString();
            //mg.TenCongTy = txtTenCty.Text.ToString();
            mg.DienThoaiCongTy = phoneNo_company;
            db1.MoiGiois.AddObject(mg);

            DiaChi dc = new DiaChi();
            var maDC = from mdc in db1.DiaChis select mdc;
            int i = maDC.Count() + 1;
            if (i <= 9)
            {
                dc.MaDiaChi = "DC00" + i.ToString();
            }
            else
                if (i > 9 && i <= 99)
                {
                    dc.MaDiaChi = "DC0" + i.ToString();
                }
                else
                    if (i > 99 && i <= 999)
                    {
                        dc.MaDiaChi = "DC" + i.ToString();
                    }

            if (SoNha == "" || SoNha == null)
            {
                SoNha = "0";
            }
            if (Duong == "" || Duong == null)
            {
                Duong = "0";
            }
            if (PhuongXa == "" || PhuongXa == null)
            {
                PhuongXa = "0";
            }
            if (QuanHuyen == "" || QuanHuyen == null)
            {
                QuanHuyen = "0";
            }
            if (ThanhPho == "" || ThanhPho == null)
            {
                ThanhPho = "0";
            }
            dc.SoNha = SoNha;
            dc.Duong = Duong;
            dc.PhuongXa = PhuongXa;
            dc.QuanHuyen = QuanHuyen;
            dc.TinhThanh = ThanhPho;
            dc.MaTaiKhoan = mg.MaTaiKhoan;
            db1.DiaChis.AddObject(dc);
            //KhachHang kh = new KhachHang();
            //var maKh = from mkh in db1.KhachHangs select mkh.MaKhachHang;
            //int k = maKh.Count() + 1;
            //if (k <= 9)
            //{
            //    kh.MaKhachHang = "KH00" + k.ToString();
            //}
            //else
            //    if (k > 9 && k <= 99)
            //    {
            //        kh.MaKhachHang = "KH0" + k.ToString();
            //    }
            //    else
            //        if (k > 99 && k <= 999)
            //        {
            //            kh.MaKhachHang = "KH" + k.ToString();
            //        }

            //kh.MaTaiKhoan = tk.MaTaiKhoan;

            //kh.HoTen = name;
            //kh.NgaySinh = birthDay;
            //if (rdNam !=null)
            //{
            //    kh.GioiTinh = "Nam";
            //}
            //if (rdNu!=null)
            //{
            //    kh.GioiTinh = "Nu";
            //}
            //if (rdNam==null && rdNu==null)
            //{
            //    kh.GioiTinh = "PD";
            //}
            //kh.CMNDHoChieu = CMND;
                
            //db1.KhachHangs.AddObject(kh);
                
            db1.SaveChanges();
             
            return View("DangNhap");
        }
        catch
        {
            //throw new Exception("Error on # of clients.", ex);
            return View("BaoLoi");
        }

    }


        /// <summary>
        /// Lên - Gọi View LichSuGiaoDich
        /// </summary>
        /// <returns></returns>
        public ActionResult LichSuGiaoDich()
        {
            return View();
        }


        /// <summary>
        /// Lên - Tạo mã tăng tự động cho tất cả các bảng
        /// Trước khi gọi hàm này, ta cần gọi hàm lấy mã cuối cùng của bảng bất kỳ cần thêm mới mã.
        /// Ví dụ: ta gọi hàm TaoMaTangTuDong("TK008", 2, "TK")
        /// Trong đó TK008: là kết quả trả về của hàm lấy mã cuối cùng trong bảng TaiKhoan
        /// Số 2: là vị trí of 2 prefix đầu trong mã TK008
        /// TK: là prefix cần thêm vào, trường hợp khác nếu ta thêm vào bảng Thẻ thì prefix là TH, bảng giao dịch là GD,....
        /// </summary>
        /// <param name="maHienTai"></param>
        /// <param name="vitri"></param>
        /// <param name="prefix"></param>
        /// <returns></returns>
        public static string TaoMaTangTuDong(String maHienTai, int vitri, String prefix)
        {
            string maTuDong = prefix;
            try
            {
                int intMa = 0;
                intMa = int.Parse(maHienTai.Substring(vitri));
                maTuDong = maTuDong + (intMa + 1).ToString();
            }
            catch (Exception ex)
            {
                throw new Exception("Lỗi, không tạo mã khách hàng tự động được", ex);
            }
            return maTuDong;
        }
    }
}
