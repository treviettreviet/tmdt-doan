using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Money10Broker.Models;
using System.Net.Mail;
using System.Net;

namespace Money10Broker.Controllers
{
    public class AccountController : Controller
    {
        private xnvaufit_MoiGioiEntities dbMoiGioi = new xnvaufit_MoiGioiEntities();

        public ActionResult ThongTinTaiKhoan()
        {
            return View();
        }
        public ActionResult DoiMatKhau()
        {
            return View();
        }
        public ActionResult DoiMatKhauThanhToan()
        {
            return View();
        }
        public ActionResult ThemTheNganHang()
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
                return RedirectToAction("../Transaction/LichSuGiaoDich");
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

        public void sendMail(string sTo, string sFrom, string sSubject, string sBody)
        {
            string to = sTo;
            string from = sFrom;
            string subject = sSubject;
            string body = sBody;
            string sFileName = string.Empty;
            string server = "smtp.gmail.com";
            string port = "587";
            string user = from;
            string pass = "tmdt123456";
            String[] addr = to.Split(',');// Danh sach mail nhan
            System.Net.Mail.SmtpClient smtp = new SmtpClient();
            System.Net.Mail.MailMessage msg = new MailMessage();
            msg.IsBodyHtml = true;
            smtp.Port = Int32.Parse(port);
            smtp.EnableSsl = true;//chứng thực việc gửi mail
            //smtp.Host = "smtp.gmail.com";//Sử dụng SMTP của gmail 
            smtp.Host = server;
            smtp.Credentials = new NetworkCredential(user, pass);//user name , password cua mail gui
            try
            {


                if (from.Length > 0 && to.Length > 0 && subject.Length > 0 && body.Length >= 0)
                {


                    System.Text.RegularExpressions.Regex regex = new System.Text.RegularExpressions.Regex(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");//kiem tra tinh hop le cua mail
                    msg.From = new MailAddress(from, "Money10Bank Gui Mail", System.Text.Encoding.UTF8);
                    Byte i;
                    for (i = 0; i < addr.Length; i++)
                    {
                        bool result = regex.IsMatch(addr[i]);
                        if (result == false)
                        {
                            //lblError.Visible = true;
                            //lblError.Text = "Địa chỉ email nhận:" + sTo + " không hợp lệ.";
                            Response.Write("<script> alert ('Mail Nhân" + sTo + "ko hop lệ!');</script>");

                        }
                        else
                        {
                            msg.To.Add(addr[i]);
                            msg.Subject = subject;
                            msg.Body = body;
                            msg.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
                            msg.ReplyTo = new MailAddress(addr[i]);
                            smtp.Send(msg);
                            Response.Flush();
                            // lblError.Text = "Email đã được gửi đến: " + sTo + ".";
                            // lblError.Visible = true;
                        }
                    }
                }
            }


            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        // Truyền các tham số vào hàm, tên của các tham số phải đúng 9 xác với tên của các input đặt bên trang DangKyCaNhan
        // Ví du: XuLyDangKyCaNhan(string email, string password,.....,...)
        // Muốn lấy giá trị của input nào thì truyền tên của input đó vô.
        public ActionResult XuLyDangKyCaNhan(string cmdRegister, string email, string password, string password_payment, string social_id, string fullname, string date, string month, string year, string sex, string address, string city_id)
        {
            if (cmdRegister != null)
            {
                if (KiemTraEmail(email) == 1)
                {
                    try
                    {

                        xnvaufit_MoiGioiEntities dbXuLyDangKy = new xnvaufit_MoiGioiEntities();
                        TaiKhoan newUser = new TaiKhoan();
                        CaNhan newInfo = new CaNhan();
                       
                        List<string> lstMaTaiKhoan = (from col in dbXuLyDangKy.TaiKhoans select col.MaTaiKhoan).ToList<string>();//dbXuLyDangKy.TaiKhoans.ToList<string>(m => m.MaTaiKhoan);
                        string MaTaiKhoanNext = TaoMaTangTuDong(lstMaTaiKhoan, 2, "TK");
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
                        List<string> lstMaCaNhanMax = (from col in dbXuLyDangKy.CaNhans select col.MaCaNhan).ToList<string>();
                        string MaCaNhanNext = TaoMaTangTuDong(lstMaCaNhanMax, 2, "CN");
                        newInfo.MaCaNhan = MaCaNhanNext;
                        newInfo.MaTaiKhoan = MaTaiKhoanNext;
                        newInfo.HoTen = fullname;
                        string birthday = month + "/" + date + "/" + year;
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
                        string sTo = email;
                        string sFrom = "tmdthca@gmail.com";
                        string sSubject = "Money10Broker Thông báo";
                        string sBody = "Bạn đã đăng ký thành công lúc" + DateTime.Now + "!Đây là mail tự động. Mọi chi tiết liên hệ tmdthca@gmail.com.";
                        sendMail(sTo, sFrom, sSubject, sBody);
                        return View("DangNhap");
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(ex.Message);
                    }
                }
                else
                {
                    string div = "error-box";
                    string error = "Địa chỉ email này hiện đã được sử dụng trong hệ thống";
                    ViewData["div"] = div;
                    ViewData["error"] = error;
                    //return View("DangKy");
                    return View("DangKyCaNhan");
                }
            }
            return View();
        }

        //Kiểm tra email đăng ký
        private int KiemTraEmail(string email)
        {
            //try
            //{
            //    TaiKhoan user = (from row in dbMoiGioi.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();
            //    return 1;   // Email không tồn tại
            //}
            //catch
            //{
            //    return 0;   // Email tồn tại
            //}
            int flag = 1;
            try
            {
                TaiKhoan user = (from row in dbMoiGioi.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();
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
            catch
            {
                return flag;
            }

        }

        public ActionResult XuLyDangKyDoanhNghiep(string email, string password, string password_payment, string verify_type, string social_id, string fullname, string address, string phone)
        {
            return View();
        }

        /// <summary>
        /// Xu Ly cap nhat tai khoản
        /// </summary>
        /// <param name="txtemail"></param>
        /// <param name="txtdienthoai"></param>
        /// <param name="txtdienthoaididong"></param>
        /// <param name="txtdiachi"></param>
        /// <returns></returns>
        public ActionResult XuLyCapNhatTaiKhoanDoanhNghiep(string txtemail, string txtdienthoai,string txtdienthoaididong, string txtdiachi)
        {
            
            xnvaufit_MoiGioiEntities dbMG = new xnvaufit_MoiGioiEntities();
            TaiKhoan tk = (TaiKhoan)Session["User"];
            DoanhNghiep cn = new DoanhNghiep();
            cn = dbMG.DoanhNghieps.SingleOrDefault(p=>p.MaTaiKhoan==tk.MaTaiKhoan);
            if(!txtemail.Equals("") && tk!=null)
            {
                tk.Email = txtemail;
            }
            if (!txtdienthoai.Equals(""))
            {
                cn.DienThoaiCongTy = int.Parse(txtdienthoai);
            }
            if (!txtdienthoaididong.Equals(""))
            {
                cn.DienThoaiDiDong = txtdienthoaididong;
            }
            if (!txtdiachi.Equals(""))
            {
                cn.DiaChiCongTy = txtdiachi;
            }
            dbMG.SaveChanges();
            string sTo = txtemail;
            string sFrom = "tmdthca@gmail.com";
            string sSubject = "Money10Broker Thông báo";
            string sBody = "Bạn đã cập nhật tài khoản thành công lúc" + DateTime.Now + "!Đây là mail tự động. Mọi chi tiết liên hệ tmdthca@gmail.com.";
            sendMail(sTo, sFrom, sSubject, sBody);
            return View("ThongTinTaiKhoan");
        }

        public ActionResult XuLyCapNhatTaiKhoanCaNhan(string txthoten,string txtemail, string txtdienthoai, int date, int month, string year,string gender, string txtdiachi)
        {

            xnvaufit_MoiGioiEntities dbMG = new xnvaufit_MoiGioiEntities();
            TaiKhoan tk = (TaiKhoan)Session["User"];
            CaNhan cn = new CaNhan();
            cn = dbMG.CaNhans.SingleOrDefault(p => p.MaTaiKhoan == tk.MaTaiKhoan);
            if (!txtemail.Equals("") && tk != null)
            {
                tk.Email = txtemail;
            }
            if(!txthoten.Equals(""))
            {
                cn.HoTen= txthoten;
            }
            if (!txtdienthoai.Equals(""))
            {
                cn.DienThoai = txtdienthoai;
            }
            if (!date.Equals("") && !month.Equals("") && !year.Equals(""))
            {
                string birthday = month + "/" + date + "/" + year;
                cn.NgaySinh = DateTime.Parse(birthday);
            }
            if(!gender.Equals(""))
            {
                cn.GioiTinh = gender;

            }
            if (!txtdiachi.Equals(""))
            {
                cn.DiaChi = txtdiachi;
            }

            dbMG.SaveChanges();
            string sTo = txtemail;
            string sFrom = "tmdthca@gmail.com";
            string sSubject = "Money10Broker Thông báo";
            string sBody = "Bạn đã cập nhật tài khoản thành công lúc" + DateTime.Now + "!Đây là mail tự động. Mọi chi tiết liên hệ tmdthca@gmail.com.";
            sendMail(sTo, sFrom, sSubject, sBody);
            return View("ThongTinTaiKhoan");
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
        public string TaoMaTangTuDong(List<string> lstMaHienTai, int vitri, String prefix)
        {
            string maTuDong = prefix;
            try
            {
                int max = 0;
                foreach (string sub in lstMaHienTai)
                {
                    int temp = int.Parse(sub.Substring(vitri));
                    if (max < temp)
                        max = temp;
                }


                int intMa = 0;
                intMa = max;
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
