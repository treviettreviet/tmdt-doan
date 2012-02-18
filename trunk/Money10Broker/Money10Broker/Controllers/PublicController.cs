using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Money10Broker.Models;

namespace Money10Broker.Controllers
{
    public class PublicController : Controller
    {
        //
        // GET: /Public/

        private xnvaufit_MoiGioiEntities dbMoiGioi = new xnvaufit_MoiGioiEntities();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ThanhToanTrucTuyen()
        {
            ViewData["MaDonHang"] = Request.QueryString["MaDonHang"];
            return View();
        }
        
        public ActionResult TrangChu()
        {
            return View();
        }

        public ActionResult DangNhap()
        {
            return View();
        }

        public ActionResult ChuyenTienCungMoiGioi()
        {
            return View();
        }

        public ActionResult ChuyenTienKhacMoiGioi()
        {
            return View();
        }

        public ActionResult CapNhatThongTin()
        {
            return View();
        }
        public ActionResult XuLyDangXuat()
        {
            Session.Remove("User");
            return RedirectToAction("TrangChu");
        }

        public ActionResult TongHop()
        {
            return View();
        }

        public ActionResult DangNhapThatBai()
        {
            return View();
        }

        public ActionResult ChonDangKy()
        {
            return View();
        }

        public ActionResult DangKyCaNhan()
        {
            return View();
        }

        public ActionResult DangKyDoanhNghiep()
        {
            return View();
        }

        public ActionResult LichSuGiaoDich()
        {
            return View();
        }

        public ActionResult NapTien()
        {
            return View();
        }

        public ActionResult RutTien()
        {
            return View();
        }
        public ActionResult ChuyenTien()
        {
            return View();
        }
        //public ActionResult ChuyenTienThanhCong()
        //{

        //}
        public ActionResult DangNhapGiaoDich()
        {
            return View();
        }

        public ActionResult Login(string email, string password, decimal amount)
        {
            int state = UserValidation(email, password);
            TaiKhoan user = null;
            if (state == 0)
            {
                user = (from row in dbMoiGioi.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();
                Session["user"] = user;
                if (CheckAccount(amount, (decimal)user.SoDu) == 1)
                    RedirectToAction("KetQuaGiaoDich", "Không đủ tiền trong tài khoảng");
                else
                    return RedirectToAction("ChuyenTien");
            }
            else if (state == 1)
            {
                return RedirectToAction("DangNhapThatBai", "Sai password !");
            }
            else
            {
                return RedirectToAction("DangNhapThatBai", "E-mail chưa đăng ký !");
            }
            return View();
        }

        public int CheckAccount(decimal amount, decimal balance)
        {
            if (amount > balance)
                return -1;
            return 0;
        }

        /// <summary>
        /// Xác nhận tài khoản
        /// </summary>
        /// <param name="email"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        private int UserValidation(string email, string password)
        {
            try
            {
                TaiKhoan user = (from row in dbMoiGioi.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();
                if (user.Email == email && user.MatKhau == GetMD5Hash(password))
                {
                    Session["User"] = user;
                    return 0;//Đăng nhập thành công
                }
                else
                {
                    return 1;//Đăng nhập không thành công, sai password
                }
            }
            catch
            {
                return -1; //Email chưa đăng ký
            }
        }

        /// <summary>
        /// Kiểm tra đăng nhập tài khoản, tại trang chủ
        /// </summary>
        /// 

        [HttpPost]
        public ActionResult XuLyDangNhap(string email, string password)
        {
            int user_validation = UserValidation(email, password);
            if (user_validation == 0)
            {
                //return View("DangNhapThanhCong");
                return RedirectToAction("TongHop");
            }
            else
            {
                //<div class="message-box" id="message-box-login" style="display: block; ">Mật khẩu không đúng</div>
                string div = "message-box";
                string error = "";
                if (user_validation == -1)
                {
                    error += "Email không tồn tại";
                }
                if (user_validation == 1)
                {
                    error += "Sai mật khẩu";
                }
                ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                return View("DangNhap");
            }
        }

        // Truyền các tham số vào hàm, tên của các tham số phải đúng 9 xác với tên của các input đặt bên trang DangKyCaNhan
        // Ví du: XuLyDangKyCaNhan(string email, string password,.....,...)
        // Muốn lấy giá trị của input nào thì truyền tên của input đó vô.
        public ActionResult XuLyDangKyCaNhan(string cmdRegister, string email, string password, string password_payment, string social_id, string fullname, string date, string month, string year, string sex, string address, string city_id)
        {
            if (cmdRegister != null)
            {
                if (KiemTraEmail(email) == 0)
                {
                    try
                    {
                        xnvaufit_MoiGioiEntities dbXuLyDangKy = new xnvaufit_MoiGioiEntities();
                        TaiKhoan newUser = new TaiKhoan();
                        CaNhan newInfo = new CaNhan();
                        string MaTaiKhoanMax = dbXuLyDangKy.TaiKhoans.Max(m => m.MaTaiKhoan);
                        string MaTaiKhoanNext = TaoMaTangTuDong(MaTaiKhoanMax, 2, "TK");
                        newUser.MaTaiKhoan = MaTaiKhoanNext;
                        newUser.SoTaiKhoan = TaoSoTaiKhoan();   // Tạo số tài khoản tự động gồm 6 số không trùng nhau.
                        newUser.MaLoaiTaiKhoan = "LTK001";
                        newUser.SoDu = 0;
                        newUser.Email = email;
                        newUser.MatKhau = GetMD5Hash(password);
                        newUser.MatKhauGiaoDich = password_payment;
                        newUser.TinhTrang = 0;
                        dbXuLyDangKy.TaiKhoans.AddObject(newUser);

                        // Thêm thông tin vào bảng cá nhân
                        string MaCaNhanMax = dbXuLyDangKy.CaNhans.Max(m => m.MaCaNhan);
                        string MaCaNhanNext = TaoMaTangTuDong(MaCaNhanMax, 2, "CN");
                        newInfo.MaCaNhan = MaCaNhanNext;
                        newInfo.MaTaiKhoan = MaTaiKhoanNext;
                        newInfo.HoTen = fullname;
                        string birthday = date + "/" + month + "/" + year;
                        newInfo.NgaySinh = DateTime.Parse(birthday);
                        if (sex.Equals("1"))
                            newInfo.GioiTinh = "Nam";
                        else
                            newInfo.GioiTinh = "Nữ";
                        newInfo.CMNDHoChieu = 0;
                        if (!social_id.Equals(""))
                            newInfo.CMNDHoChieu = int.Parse(social_id);
                        newInfo.TinhTrang = 0;
                        dbXuLyDangKy.CaNhans.AddObject(newInfo);
                        dbXuLyDangKy.SaveChanges();
                        return RedirectToAction("DangNhap");
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(ex.Message);
                    }
                }
                else
                {
                    return RedirectToAction("DangKyCaNhan");
                }
            }
            return View();
        }

        //Kiểm tra email đăng ký
        private int KiemTraEmail(string email)
        {
            try
            {
                TaiKhoan user = (from row in dbMoiGioi.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();
                return 1;   // Email không tồn tại
            }
            catch
            {
                return 0;   // Email không tồn tại
            }
        }

        string wsURL = "http://ecmoney10.tk/WebServiceNganHangMoney10.asmx";
        string wsMethod = "TransferMoneySameBank";
        string WebService = "WebServiceNganHangMoney10";

        public ActionResult TransferByBroker(string sendcardnum, string receivecardnum, decimal amount)
        {
            string brokerCardNum = "340426820759153";
            string sid = WSProxy.CallWebService(wsURL, WebService, "AuthenticateForTransaction", new object[] {"lengoctin@gmail.com", "12345678" }).ToString();

            //Thu phí 10% số tiền giao dịch
            decimal fee = amount + amount * (10m / 100m);

            //Chuyển tiền vào tk môi giới
            int result = (int)WSProxy.CallWebService(wsURL, WebService, wsMethod, new object[] { sid, sendcardnum, brokerCardNum, fee });

            //Chuyển thành công vào môi giới
            if (result == 0)
            {
                result = (int)WSProxy.CallWebService(wsURL, WebService, wsMethod, new object[] { sid, brokerCardNum, receivecardnum, amount });

                //Giao dịch thành công
                if (result == 0)
                {
                    ViewData["div"] = "message-box";
                    ViewData["messege"] = "Chuyển Tiền Thành Công";
                    return RedirectToAction("LichSuGiaoDich");
                }
                else
                {
                    //Giao dịch thất bại, trả tiền lại cho người gửi
                    result = (int)WSProxy.CallWebService(wsURL, WebService, wsMethod, new object[] { sid, brokerCardNum, sendcardnum, fee });
                }
            }
            ViewData["div"] = "message-box";
            ViewData["messege"] = "Chuyển Tiền Thất Bại";
            return RedirectToAction("ChuyenTien");
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
        public string TaoMaTangTuDong(String maHienTai, int vitri, String prefix)
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

        /// <summary>
        /// // Dang ky-THang
        /// </summary>
        /// <returns></returns>
        private int createKeyCode()
        {
            //int seed = int.Parse(txt.Text);
            Random r = new Random();
            return r.Next(0, 1000000) + Convert.ToInt32(DateTime.Now.Day.ToString()) + Convert.ToInt32(DateTime.Now.Month.ToString()) + Convert.ToInt32(DateTime.Now.Year.ToString()) + Convert.ToInt32(DateTime.Now.Minute.ToString()) + Convert.ToInt32(DateTime.Now.Second.ToString()) + Convert.ToInt32(DateTime.Now.Millisecond.ToString());
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
        public string GetMD5Hash(string input)
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
   }
}
