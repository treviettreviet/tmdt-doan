using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Money10Broker.Models;

namespace Money10Broker.Controllers
{
    public class AccountController : Controller
    {
        private xnvaufit_MoiGioiEntities dbMoiGioi = new xnvaufit_MoiGioiEntities();

        public ActionResult ThongTinTaiKhoan()
        {
            return View();
        }

        public ActionResult DangNhap()
        {
            return View();
        }

        public ActionResult DangNhapThatBai()
        {
            return View();
        }

        public ActionResult XuLyDangXuat()
        {
            Session.Remove("User");
            return RedirectToAction("../Public/TrangChu");
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
                xnvaufit_MoiGioiEntities mg = new xnvaufit_MoiGioiEntities();
                TaiKhoan user = (from row in mg.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();
                if (user.Email == email && user.MatKhau == GetMD5Hash(password))
                {
                    Session["User"] = user;
                    if (user.MaLoaiTaiKhoan.Equals("LTK001"))   // Tài khoản thuộc Cá Nhân
                    {
                        try
                        {
                            CaNhan canhan = mg.CaNhans.Single(m => m.MaTaiKhoan == user.MaTaiKhoan);
                            Session["TaiKhoanCaNhan"] = canhan;
                        }
                        catch (Exception ex)
                        {
                            //throw new Exception(ex.Message);
                            Response.Write(ex.ToString());
                        }
                    }
                    else    // Tài khoản thuộc Doanh Nghiệp
                    {
                        try
                        {
                            DoanhNghiep dn = mg.DoanhNghieps.Single(m=>m.MaTaiKhoan==user.MaTaiKhoan);
                            Session["TaiKhoanDoanhNghiep"] = dn;
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.ToString());
                        }
                    }
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
                return RedirectToAction("../Public/TongHop");
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

        public ActionResult XuLyDangKyDoanhNghiep(string email, string password, string password_payment, string verify_type, string social_id, string fullname, string address, string phone)
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
