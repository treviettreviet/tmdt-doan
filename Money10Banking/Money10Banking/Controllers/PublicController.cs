using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Money10Banking.Models;
using System.Security.Cryptography;
using System.Net.Mail;
using System.Net;

namespace Money10Banking.Controllers
{
  
    public class PublicController : Controller
    {
        //
        // GET: /Public/

        // Khai báo đối tượng kết nối cơ sở dữ liệu
        private NganHangEntities dbNganHangOnline = new NganHangEntities();
        private Random r = new Random(); // Để phát sinh số ngẫu nhiên

        public ActionResult DangNhapGiaoDich()
        {
            return View();
        }
        public ActionResult ChuyenTienCungNganHang()
        {
            return View();
        }
        public ActionResult ChuyenTienLienNganHang()
        {
            return View();
        }
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

        public ActionResult NapTien()
        {
            if (Session["User"] == null)
            {
                return RedirectToAction("DangNhap");
            }
            else
            {
                The the= (The)Session["The"];
                ViewData["cardno"]=the.SoThe;
                return View("NapTien");
            }
        }

        public ActionResult ChuyenTien()
        {
            TaiKhoan tk = new TaiKhoan();
            tk= (TaiKhoan)Session["User"];
            The th = new The();
            if(tk.MaTaiKhoan==th.MaTaiKhoan)
            {
            if (Session["User"] != null)
            {
                if (Session["sid"] != null)
                {

                    return View("ChuyenTien");
                }
                else
                    return RedirectToAction("DangNhapGiaoDich");
               
            }
            return RedirectToAction("DangNhap");
            }
            else
                Response.Write("<script> alert ('Bạn chưa có thẻ Ngân Hàng!');</script>");
            return View("TrangChu");
           
        }

        public ActionResult RutTien()
        {
            return View();
        }

        public ActionResult CapNhatTaiKhoan() //Khi đăng nhập thành công
        {
            return View();
        }

        public ActionResult DangNhap()
        {
            return View();
        }

        public ActionResult DoiMatKhau()
        {
            return View();
        }

        public ActionResult LichSuGiaoDich()
        {
            List<LichSuGiaoDichModels> lst = LSGiaoDich();
            if (lst != null)
            {
                ViewData["ListData"] = lst;
                return View();
            }
            else
                Response.Write("<script> alert ('Bạn chưa có thẻ Ngân Hàng!');</script>");
                return View("TrangChu");
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
        //public static string TaoMaTangTuDong(String maHienTai, int vitri, String prefix)
        //{
        //    string maTuDong = prefix;
        //    try
        //    {
        //        int intMa = 0;
        //        intMa = int.Parse(maHienTai.Substring(vitri));
        //        maTuDong = maTuDong + (intMa + 1).ToString();
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new Exception("Lỗi, không tạo mã khách hàng tự động được", ex);
        //    }
        //    return maTuDong;
        //}

        public static string TaoMaTangTuDong(string lastID, string prefixID)
        {
            if (lastID == "")
            {
                return prefixID + "0001";  // fix
            }
            int nextID = int.Parse(lastID.Remove(0, prefixID.Length)) + 1;
            int lengthNumerID = lastID.Length - prefixID.Length;
            string zeroNumber = "";
            for (int i = 1; i <= lengthNumerID; i++)
            {
                if (nextID < Math.Pow(10, i))
                {
                    for (int j = 1; j <= lengthNumerID - i; i++)
                    {
                        zeroNumber += "0";
                    }
                    return prefixID + zeroNumber + nextID.ToString();
                }
            }
            return prefixID + nextID;

        }

        // Lên - Xử lý thoát
        public ActionResult XuLyThoat()
        {
            Session.Remove("User");
            return RedirectToAction("TrangChu");
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
                    Session["User"] = user; // Set sesion cho user vừa đăng nhập thành công

                    // Lấy thông tin của Môi Giới hoặc Khách Hàng dựa vào tài khoản vừa đăng nhập thành công.
                    try
                    {
                        The the = (from row in dbNganHangOnline.Thes where row.MaTaiKhoan.Equals(user.MaTaiKhoan) select row).First<The>();
                        Session["The"] = the;
                        
                    }
                    catch
                    {
                        //
                    }

              

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
                    List<LichSuGiaoDichModels> listData = LSGiaoDich();
                    if (listData != null)
                    {
                        ViewData["ListData"] = listData;
                        return View("LichSuGiaoDich");
                    }
                    else
                        return View("TrangChu");
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
        /// <summary>
        /// Đổi mật khẩu
        /// </summary>
        /// <param name="password"></param>
        /// <param name="newPassword"></param>
        /// <param name="confirmNewPassword"></param>
        /// <returns></returns>
        public ActionResult XLDoiPass(string password, string newPassword, string confirmNewPassword)
        {
            
            //TaiKhoan tk = dbNganHangOnline.TaiKhoans.Single(p => p.MatKhau == pass.MatKhau);
            try
            {
                string pas = GetMD5Hash(password);
                
                TaiKhoan pass = (TaiKhoan)Session["User"];
                string div = "error-box";
                string error = "";
                if (pass.MatKhau==pas)
                {
                    if (newPassword == confirmNewPassword)
                    {
                        NganHangEntities NH = new NganHangEntities();
                        TaiKhoan tk = NH.TaiKhoans.Single(p => p.MaTaiKhoan == pass.MaTaiKhoan);
                        string newpass = GetMD5Hash(newPassword);
                        //tk.MatKhau = newpass;
                        tk.MatKhau = newpass;
                        NH.SaveChanges();
                        Response.Write("<script> alert ('Đổi Mật Khẩu thành công!');</script>");
                        string sTo = pass.Email;
                        string sFrom = "tmdthca@gmail.com";
                        string sSubject = "Bạn đã đổi mật khẩu thành công lúc" + DateTime.Now + "!";
                        string sBody = "Đây là mail tự động. Mọi chi tiết liên hệ tmdthca@gmail.com.";
                        sendMail(sTo, sFrom, sSubject, sBody);
                        return View("DoiMatKhau");
                    }
                    else
                    {
                        error += "Mật Khẩu mới Không Khớp";
                        ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                        ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                        return View("DoiMatKhau");
 
                    }
                    
                    
                }
                else
                {
                    error += "Sai mật khẩu";
                    ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                    ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                    return View("DoiMatKhau");
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
 
        }
        /// <summary>
        /// send mail khi khách hàng giao dịch
        /// </summary>
        /// <param name="sTo"></param>
        /// <param name="sFrom"></param>
        /// <param name="sSubject"></param>
        /// <param name="sBody"></param>
        public void sendMail(string sTo, string sFrom , string sSubject,string sBody)
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
                throw new Exception( ex.Message);
            }
        }

        /// <summary>
        /// danh sach lich su giao dich
        /// </summary>
        /// <returns></returns>
        public List<LichSuGiaoDichModels> LSGiaoDich()
        {
            TaiKhoan mail= (TaiKhoan)Session["User"];
            TaiKhoan tk = dbNganHangOnline.TaiKhoans.Single(p => p.Email == mail.Email);
           // The th= new The();
            var the = from th in dbNganHangOnline.Thes where th.MaTaiKhoan == tk.MaTaiKhoan select th.MaTaiKhoan;
            if (the.Count() !=0)
            {
                 The th = dbNganHangOnline.Thes.Single(a => a.MaTaiKhoan == tk.MaTaiKhoan);
                List<LichSuGiaoDichModels> listData = new List<LichSuGiaoDichModels>();
                List<LichSuGiaoDich> gd = (from LSGD in dbNganHangOnline.LichSuGiaoDiches where LSGD.MaThe == th.MaThe select LSGD).ToList();
                for (int i = 0; i < gd.Count; i++)
                {

                    string maldg = gd[i].MaLoaiGiaoDich;
                    LoaiGiaoDich Lgd = dbNganHangOnline.LoaiGiaoDiches.Single(m => m.MaLoaiGiaoDich == maldg);
                    LichSuGiaoDichModels ls = new LichSuGiaoDichModels();
                    ls.ThoiGian = gd[i].NgayGiaoDich.ToString();
                    ls.LoaiGD = Lgd.TenLoaiGiaoDich;
                    ls.TheGui = th.SoThe;
                    ls.TheNhan = gd[i].SoTheNhan;
                    ls.TienGui = gd[i].SoTienGiaoDich.ToString();
                    listData.Add(ls);

                }
                return listData;
            }
            else
                return null;
        }

        
        public int KiemTraTheTonTai(string Login, string SoTaiKhoan)
        {
            return 1;
        }
        /// <summary>
        /// kiểm tra tài khoản thẻ tương ứng với tài khoản web-thắng
        /// </summary>
        /// <param name="receive"></param>
        /// <param name="SoTaiKhoan"></param>
        /// <param name="Login"></param>
        /// <returns></returns>
        public ActionResult XuLyNapTien(string receive, string SoTaiKhoan, string Login)
        {
            try
            {
                if (Login!=""|| Login!=null)
                {
                    //string email= Session["Login"].ToString();
                    
                    TaiKhoan tkdn = (TaiKhoan)Session["User"];
                    string email = tkdn.Email;
                    //TaiKhoan tk = (from row in dbNganHangOnline.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();
                    string matk = tkdn.MaTaiKhoan;
                    
                    decimal naptien = decimal.Parse(receive);
                    NganHangEntities db = new NganHangEntities();
                    The tienthe= db.Thes.Single(m => m.SoThe==SoTaiKhoan);
                    decimal sodu;
                      string div = "error-box";
                               string error = "";
                    if (tienthe.SoThe!=null)
                    {
                       
                        if (tienthe.MaTaiKhoan == matk)
                        {
                            Session["SoThe"] = tienthe.SoThe;
                            sodu = tienthe.SoDu.Value;
                            tienthe.SoDu = naptien + sodu;
                            Session["SoTienThe"] = tienthe.SoDu;

                            NganHangEntities dbNH = new NganHangEntities();
                            The th = dbNganHangOnline.Thes.Single(m => m.SoThe == tienthe.SoThe);
                            //Session["The"] = th;
                            string MaGDMax = dbNH.LichSuGiaoDiches.Max(p => p.MaLichSuGiaoDich);
                            LichSuGiaoDich LSGD = new LichSuGiaoDich();
                            LSGD.MaLichSuGiaoDich = TaoMaTangTuDong(MaGDMax, "GD");
                            LSGD.MaThe = th.MaThe;
                            LSGD.MaLoaiGiaoDich = "LGD002";       
                            LSGD.NgayGiaoDich = DateTime.Now;
                            LSGD.SoTienGiaoDich = naptien;
                            LSGD.TinhTrang = 0;
                            dbNH.LichSuGiaoDiches.AddObject(LSGD);
                            dbNH.SaveChanges();
                            List<LichSuGiaoDichModels> listData = LSGiaoDich();
                            ViewData["ListData"] = listData;                        
                            Response.Write("<script> alert ('Nạp tiền thành công!');</script>");
                            TaiKhoan tk = dbNganHangOnline.TaiKhoans.Single(p=>p.MaTaiKhoan== th.MaTaiKhoan);
                            string sTo = tk.Email;
                            string sFrom = "tmdthca@gmail.com";
                            string sSubject = "Money10Bank thông báo!";
                            string sBody = "Bạn đã nạp tiền thành công lúc" + DateTime.Now + " vào số TK:" +th.SoThe+".Đây là mail tự động. Mọi chi tiết liên hệ tmdthca@gmail.com.";
                            sendMail(sTo, sFrom, sSubject, sBody);
                            
                            return View("LichSuGiaoDich");
                        }
                        else
                        {
                            error += "Tài khoản Web ko đúng";
                            ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                            ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                            return RedirectToAction("NapTien");
                        }
                    }
                    else
                    {
                        error += "Số tài khoản không đúng";
                        ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                        ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                        return RedirectToAction("NapTien");
                    }
                }
                else
                {
                    return RedirectToAction("DangNhap");
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public ActionResult CapNhatThongTinTaiKhoan()
        {
            return View();
        }

        public ActionResult CapNhatThongTinTaiKhoanCaNhan()
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
        /// Đăng Ký cá nhân-thắng
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
        public ActionResult XuLyDangKyCaNhan(string email, string password, string passwordConfirm, string name, string date, string month, string year, string CMND, string rdGioiTinh, string SoNha, string Duong, string PhuongXa, string QuanHuyen, string ThanhPho)
        {
            try
            {
                NganHangEntities db1 = new NganHangEntities();
                string maxtk = db1.TaiKhoans.Max(m=>m.MaTaiKhoan);//lấy record cuối cùng của cột mã tài khoản
                TaiKhoan tk = new TaiKhoan();
                if (KiemTraEmail(email) == 1)
                {
                    tk.Email = email;
                }
                else
                {
                    string div = "error-box";
                    string error = "Địa chỉ email này hiện đã được sử dụng trong hệ thống";
                    ViewData["div"] = div;
                    ViewData["error"] = error;
                    return RedirectToAction("DangKy");
                }
                tk.MaTaiKhoan = TaoMaTangTuDong(maxtk, "TK");
                tk.MaLoaiTaiKhoan = "LTK001";
                tk.SoTaiKhoan = TaoSoTaiKhoan();
                tk.MatKhauGiaoDich = PassWord(6);
                
                tk.MatKhau = GetMD5Hash(password).Trim();
                tk.TinhTrang = 0;
                db1.TaiKhoans.AddObject(tk);

                // Thêm vào bảng DiaChi
                string max = db1.DiaChis.Max(m => m.MaDiaChi);// lấy record cuối cùng cột mã địa chỉ
                DiaChi dc = new DiaChi();
                dc.MaDiaChi = TaoMaTangTuDong(max, "DC");

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

                // Thêm vào bảng Khách Hàng
                string maxkh = db1.KhachHangs.Max(m=>m.MaKhachHang);//lấy giá trị cuôiis cùng cột Mã kh
                KhachHang kh = new KhachHang();
                kh.MaKhachHang = TaoMaTangTuDong(maxkh, "KH");
                kh.MaTaiKhoan = tk.MaTaiKhoan;
                kh.HoTen = name;
                string ngaysinh = date + "-" + month + "-" + year;
                kh.NgaySinh = DateTime.Parse(ngaysinh);
                //kh.NgaySinh = DateTime.Parse(birthDay);   // Chưa set, phải xet giá trị của 3 textbox
                if (rdGioiTinh =="Nam")
                {
                    kh.GioiTinh = "Nam";
                }
                if (rdGioiTinh == "Nu")
                {
                    kh.GioiTinh = "Nữ";
                }
                if(rdGioiTinh=="" || rdGioiTinh==null){
                    kh.GioiTinh= "PD";
                }
  
                kh.CMNDHoChieu = int.Parse(CMND);
                kh.TinhTrang = 0;
                db1.KhachHangs.AddObject(kh);
                db1.SaveChanges();
                string sTo = email;
                string sFrom = "tmdthca@gmail.com";
                string sSubject = "Money10Banking Thông báo";
                string sBody = "Bạn đã đăng ký thành công lúc" + DateTime.Now + "!Đây là mail tự động. Mọi chi tiết liên hệ tmdthca@gmail.com.";
                sendMail(sTo, sFrom, sSubject, sBody);
               
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
		        NganHangEntities dbNganHang = new NganHangEntities();
                string MaTaiKhoanMax = dbNganHang.TaiKhoans.Max(m => m.MaTaiKhoan);
                TaiKhoan TaiKhoanMoi = new TaiKhoan();

                if (KiemTraEmail(email_company) == 1)
                {
                    TaiKhoanMoi.Email = email_company;
                }
                else
                {
                    string div = "error-box";
                    string error = "Địa chỉ email này hiện đã được sử dụng trong hệ thống";
                    ViewData["div"] = div;
                    ViewData["error"] = error;
                    return RedirectToAction("DangKy");
                }

                string MaTaiKhoanNext = TaoMaTangTuDong(MaTaiKhoanMax, "TK");   // Tăng mã tự động lên 1
                TaiKhoanMoi.MaTaiKhoan = MaTaiKhoanNext;
                TaiKhoanMoi.MaLoaiTaiKhoan = "LTK002";
                TaiKhoanMoi.SoTaiKhoan = TaoSoTaiKhoan();
                TaiKhoanMoi.MatKhauGiaoDich = PassWord(6);
                TaiKhoanMoi.Email = email_company;
                TaiKhoanMoi.MatKhau = GetMD5Hash(password_company).Trim();
                dbNganHang.TaiKhoans.AddObject(TaiKhoanMoi);

                MoiGioi MoiGioiMoi = new MoiGioi();
                //MoiGioi MoiGioiMax = dbNganHang.MoiGiois.LastOrDefault();    // Trả về record cuối cùng trong bảng Môi Giới
                string MaMoiGioiMax = dbNganHang.MoiGiois.Max(m => m.MaMoiGioi);    // Trả về mã cuối cùng trong bảng Môi Giới
                string MaMoiGioiNext = TaoMaTangTuDong(MaMoiGioiMax, "MG");
                MoiGioiMoi.MaMoiGioi = MaMoiGioiNext;

                MoiGioiMoi.MaTaiKhoan = TaiKhoanMoi.MaTaiKhoan;

                MoiGioiMoi.SoGiayPhepKinhDoanh = companySocialId;
                MoiGioiMoi.TenCongTy = companyName;

                ////mg.SoGiayPhepKinhDoanh = txtGPKD.Text.ToString();
                //mg.TenCongTy = txtTenCty.Text.ToString();         
                MoiGioiMoi.DienThoaiCongTy = phoneNo_company;
                dbNganHang.MoiGiois.AddObject(MoiGioiMoi);

                
                string DiaChiMax = (dbNganHang.DiaChis).Max(m=>m.MaDiaChi);  // Lấy mã địa chỉ cuối cùng
                DiaChi DiaChiMoi = new DiaChi();
                string MaDiaChiNext = TaoMaTangTuDong(DiaChiMax, "DC");
                DiaChiMoi.MaDiaChi = MaDiaChiNext;

                DiaChiMoi.SoNha = SoNha;
                DiaChiMoi.Duong = Duong;
                DiaChiMoi.PhuongXa = PhuongXa;
                DiaChiMoi.QuanHuyen = QuanHuyen;
                DiaChiMoi.TinhThanh = ThanhPho;
                DiaChiMoi.MaTaiKhoan = MoiGioiMoi.MaTaiKhoan;
                dbNganHang.DiaChis.AddObject(DiaChiMoi);
               
                string sTo = email_company;
                string sFrom = "tmdthca@gmail.com";
                string sSubject = "Money10Banking Thông báo";
                string sBody = "Bạn đã đăng ký thành công lúc" + DateTime.Now + "!Đây là mail tự động. Mọi chi tiết liên hệ tmdthca@gmail.com.";
                sendMail(sTo, sFrom, sSubject, sBody);
                dbNganHang.SaveChanges();   // Save xuống CSDL
                return View("DangNhap");
	        }
	        catch (Exception ex)
	        {
		        throw new Exception(ex.Message);
                //return View("BaoLoi");
	        }
        }
        /// <summary>
        /// cập nhật thông tin tài khoản
        /// 
        /// </summary>
        /// <param name="cmnd"></param>
        /// <param name="diachi"></param>
        /// <param name="street"></param>
        /// <param name="phuong"></param>
        /// <param name="city"></param>
        /// <param name="distric"></param>
        /// <param name="receiveReport"></param>
        /// <returns></returns>
        public ActionResult XLCapNhatTaiKhoan(string cmnd, string diachi,string street,string phuong, string city, string distric, string receiveReport)
        {
            TaiKhoan tk = (TaiKhoan)Session["User"];
            NganHangEntities dbN = new NganHangEntities();
           
            string email = tk.Email;
            KhachHang updateKH = dbN.KhachHangs.Single(m=>m.MaTaiKhoan==tk.MaTaiKhoan);
            updateKH.CMNDHoChieu = int.Parse(cmnd);
            DiaChi updateDC = dbN.DiaChis.Single(p=>p.MaTaiKhoan==tk.MaTaiKhoan);
            updateDC.SoNha = diachi;
            updateDC.Duong = street;
            updateDC.PhuongXa = phuong;
            updateDC.QuanHuyen = distric;
            updateDC.TinhThanh = city;
            
            string sTo = email;
            string sFrom = "tmdthca@gmail.com";
            string sSubject = "Money10Banking Thông báo";
            string sBody = "Bạn đã cập nhật tài khoản thành công lúc" + DateTime.Now + "!Đây là mail tự động. Mọi chi tiết liên hệ tmdthca@gmail.com.";
            sendMail(sTo, sFrom, sSubject, sBody);
            dbN.SaveChanges();
            return View("TrangChu");

        }
        /// <summary>
        /// chứng thực - thắng
        /// </summary>
        string sid = "";
        public ActionResult XuLyChuyenTien(string cardno, string password)
        {
            System.Net.ServicePointManager.Expect100Continue = false;
            string UrlWebservice = "http://ecmoney10.tk/WebServiceNganHangMoney10.asmx";
            string ServiceName = "WebServiceNganHangMoney10";
            string MethodName1 = "AuthenticateForCard";
        
            object[] arrOb1 = new object[2];
            arrOb1[0] = cardno ;
            arrOb1[1] = password;
            object obResult1 = WSProxy.CallWebService(UrlWebservice, ServiceName, MethodName1, arrOb1);
            sid = obResult1.ToString();
            if (sid != null)
            {
                Session["cardno"]=cardno;
                Session["sid"]=sid;
                //return RedirectToAction("ChuyenTien");
                return View("ChuyenTien");
            }
            else
                return RedirectToAction("DangNhapGiaoDich");
 
        }
        /// <summary>
        /// Chuyen tien cung ngân hàng -thắng
        /// </summary>
        /// <param name="Cardsend"></param>
        /// <param name="CardRec"></param>
        /// <param name="amount"></param>
        /// <returns></returns>
        /// 
        public ActionResult TransferMoneyBank(string Cardsend, string CardRec, string amount ,string id)
        {
            
            if (id == "1")
            {
               // TransferMoneySameBank(Cardsend, CardRec, amount);
             
                    System.Net.ServicePointManager.Expect100Continue = false;
                    string UrlWebservice = "http://ecmoney10.tk/WebServiceNganHangMoney10.asmx";
                    string ServiceName = "WebServiceNganHangMoney10";
                    //string MethodName1 = "AuthenticateForTransaction";
                    string MethodName2 = "TransferMoneySameBank";
                    string card_no_send = Cardsend;
                    string card_no_receive = CardRec;
                    decimal deAmount = decimal.Parse(amount);

                    object[] arrOb2 = new object[4];
                    arrOb2[0] = Session["sid"];
                    arrOb2[1] = card_no_send;
                    arrOb2[2] = card_no_receive;
                    arrOb2[3] = deAmount;
                    object obResult2 = WSProxy.CallWebService(UrlWebservice, ServiceName, MethodName2, arrOb2);
                    if (obResult2 != null)
                    {
                        int kq = (int)obResult2;

                        if (kq == 0)
                        {
                           
                            //Session["Amount"] = deAmount;
                            // lay lai user
                            // set lai session
                            try
                            {
                                  NganHangEntities dbNH= new NganHangEntities();
                                The th = dbNH.Thes.Single(m => m.SoThe == card_no_send);
                                Session["The"] = th;
                                string MaGDMax = dbNH.LichSuGiaoDiches.Max(p=> p.MaLichSuGiaoDich);
                                LichSuGiaoDich LSGD = new LichSuGiaoDich();
                                LSGD.MaLichSuGiaoDich = TaoMaTangTuDong(MaGDMax, "GD");
                                LSGD.MaThe = th.MaThe ;
                                //LSGD.MaThe = "123456";
                                LSGD.MaLoaiGiaoDich="LGD003";
                                LSGD.SoTheNhan = card_no_receive;
                                //LSGD.SoTheNhan = "123456";
                                LSGD.NgayGiaoDich = DateTime.Now;
                                LSGD.SoTienGiaoDich = deAmount;
                                LSGD.TinhTrang = 0;
                                dbNH.LichSuGiaoDiches.AddObject(LSGD);

                                dbNH.SaveChanges();
                                
                                List<LichSuGiaoDichModels> listData = LSGiaoDich();
                                ViewData["ListData"] = listData;
                                
                                Response.Write("<script> alert ('Chuyển tiền thành công!');</script>");
                                TaiKhoan tk = dbNganHangOnline.TaiKhoans.Single(p => p.MaTaiKhoan == th.MaTaiKhoan);
                                string sTo = tk.Email;
                                string sFrom = "tmdthca@gmail.com";
                                string sSubject = "Money10Banking Thông báo";
                                string sBody = "Bạn đã chuyển tiền thành công lúc" + DateTime.Now + ", tới số TK:" + card_no_receive + ". Đây là mail tự động. Mọi chi tiết liên hệ tmdthca@gmail.com.";
                                sendMail(sTo, sFrom, sSubject, sBody);
                                
                                return View("LichSuGiaoDich");
                                
                                
                            }
                            catch (Exception ex)
                            {
                                
                                throw new Exception(ex.Message);
                            }
                           

                        }
                        string div = "error-box";
                        ViewData["div"] = div;
                        if (kq == -1)
                        {
                            string error = "Thẻ gửi không tồn tại trong hệ thống ngân hàng OCBCBank";
                            ViewData["error"] = error;
                            return RedirectToAction("ChuyenTien");
                        }
                        if (kq == -2)
                        {
                            string error = "Thẻ nhận không tồn tại trong hệ thống ngân hàng OCBCBank";
                            ViewData["error"] = error;
                            return RedirectToAction("ChuyenTien");
                        }
                        if (kq == -3)
                        {
                            string error = "Số dư không đủ cho giao dịch";
                            ViewData["error"] = error;
                            return RedirectToAction("ChuyenTien");
                        }

                        // Response.Write("Ket qua giao dịch: " + kq.ToString() + "   (0: Thành công, 1, 2, 3: Các kết quả khác)");
                    }
                  //  return View("ChuyenTien");
               
            }
           if (id=="2") {
                //TransferMoneyDiffBank(Cardsend, CardRec, amount);
              
                   System.Net.ServicePointManager.Expect100Continue = false;
                   string UrlWebservice = "http://money04.tk/WebService1.asmx";
                   string ServiceName = "WebService1";
                   string MethodName1 = "LoginForBank";
                   string MethodName2 = "TranferMoneyDiffBankForBank";
                   string card_no_send = Cardsend;
                   string card_no_receive = CardRec;
                   double deAmount = double.Parse(amount);
                   object[] arr= new object[2];
                   arr[0]="money10";
                   arr[1] = "123456";
                   string sid1 = "";
                   object obResult1 = WSProxy.CallWebService(UrlWebservice, ServiceName, MethodName1,arr);
                   sid1 = (string)obResult1;
                   object[] arrOb2 = new object[4];
                   arrOb2[0] = sid1;
                   arrOb2[1] = card_no_send;
                   arrOb2[2] = card_no_receive;
                   arrOb2[3] = deAmount;
                   object obResult2 = WSProxy.CallWebService(UrlWebservice, ServiceName, MethodName2, arrOb2);
                   if (obResult2 != null)
                   {
                       int kq = (int)obResult2;

                       if (kq == 0)
                       {
                           NganHangEntities dbNH = new NganHangEntities();
                           The sendcard = dbNH.Thes.Single(p=>p.SoThe==card_no_send);
                           The bankcard = dbNH.Thes.Single(m => m.SoThe=="4024007182426915");

                           decimal fee = decimal.Parse(amount);
                           fee += fee * 0.1m;

                           sendcard.SoDu -= fee;
                           bankcard.SoDu += fee;

                          
                           //The th = dbNganHangOnline.Thes.Single(m => m.SoThe == card_no_send);
                           //Session["The"] = sendcard;
                           string MaGDMax = dbNH.LichSuGiaoDiches.Max(p => p.MaLichSuGiaoDich);
                           LichSuGiaoDich LSGD = new LichSuGiaoDich();
                           LSGD.MaLichSuGiaoDich = TaoMaTangTuDong(MaGDMax, "GD");
                           LSGD.MaThe = sendcard.MaThe;
                           //LSGD.MaThe = "123456";
                           LSGD.MaLoaiGiaoDich = "LGD003";
                           LSGD.SoTheNhan = card_no_receive;
                           //LSGD.SoTheNhan = "123456";
                           LSGD.NgayGiaoDich = DateTime.Now;
                           LSGD.SoTienGiaoDich = fee;
                           LSGD.TinhTrang = 0;
                           dbNH.LichSuGiaoDiches.AddObject(LSGD);

                           dbNH.SaveChanges();
                           List<LichSuGiaoDichModels> listData = LSGiaoDich();
                           ViewData["ListData"] = listData;
                           Response.Write("<script> alert ('Chuyển tiền thành công!');</script>");
                           TaiKhoan tk = dbNganHangOnline.TaiKhoans.Single(p => p.MaTaiKhoan == sendcard.MaTaiKhoan);
                          
                           string sTo = tk.Email;
                           string sFrom = "tmdthca@gmail.com";
                           string sSubject = "Money10Banking Thông báo";
                           string sBody = "Bạn đã chuyển tiền thành công lúc" + DateTime.Now + ", tới số TK:" + card_no_receive + ". Đây là mail tự động. Mọi chi tiết liên hệ tmdthca@gmail.com.";
                           sendMail(sTo, sFrom, sSubject, sBody);
                           
                           return RedirectToAction("LichSuGiaoDich");

                       }
                       string div = "error-box";
                       ViewData["div"] = div;
                       if (kq == -1)
                       {
                           string error = "sid ko hợp lệ";
                           ViewData["error"] = error;
                           return RedirectToAction("ChuyenTien");
                       }
                       if (kq == -2)
                       {
                           string error = "Thẻ gửi không tồn tại trong hệ thống ngân hàng";
                           ViewData["error"] = error;
                           return RedirectToAction("ChuyenTien");
                       }
                       if (kq == -3)
                       {
                           string error = "Thẻ nhận không tồn tại trong hệ thống ngân hàng OCBCBank";
                           ViewData["error"] = error;
                           return RedirectToAction("ChuyenTien");
                       }

                       // Response.Write("Ket qua giao dịch: " + kq.ToString() + "   (0: Thành công, 1, 2, 3: Các kết quả khác)");
                   }
                 
             
            }
           
           return RedirectToAction("ChuyenTien");
        }
        //public ActionResult TransferMoneySameBank(string Cardsend, string CardRec, string amount)
        //{
        //    try
        //    {
        //        System.Net.ServicePointManager.Expect100Continue = false;
        //        string UrlWebservice = "http://ecmoney10.tk/WebServiceNganHangMoney10.asmx";
        //        string ServiceName = "WebServiceNganHangMoney10";
        //        //string MethodName1 = "AuthenticateForTransaction";
        //        string MethodName2 = "TransferMoneySameBank";
        //        string card_no_send = Cardsend;
        //        string card_no_receive = CardRec;
        //        decimal deAmount = decimal.Parse(amount);

        //        object[] arrOb2 = new object[4];
        //        arrOb2[0] = sid;
        //        arrOb2[1] = card_no_send;
        //        arrOb2[2] = card_no_receive;
        //        arrOb2[3] = deAmount;
        //        object obResult2 = WSProxy.CallWebService(UrlWebservice, ServiceName, MethodName2, arrOb2);
        //        if (obResult2 != null)
        //        {
        //            int kq = (int)obResult2;
                   
        //            if (kq == 0)
        //            {
        //                Response.Write("<script> alert ('Chuyển tiền thành công!');</script>");
        //                return RedirectToAction("LichSuGiaoDich");
                        
        //            }
        //            string div = "error-box";
        //            ViewData["div"] = div;
        //            if(kq==-1)
        //            {
        //            string error = "Thẻ gửi không tồn tại trong hệ thống ngân hàng OCBCBank";
        //            ViewData["error"] = error;
        //            return View("ChuyenTien");
        //            }
        //            if (kq == -2)
        //            {
        //                string error = "Thẻ nhận không tồn tại trong hệ thống ngân hàng OCBCBank";
        //                ViewData["error"] = error;
        //                return View("ChuyenTien");
        //            }
        //            if (kq == -3)
        //            {
        //                string error = "Số dư không đủ cho giao dịch";
        //                ViewData["error"] = error;
        //                return View("ChuyenTien");
        //            }

        //           // Response.Write("Ket qua giao dịch: " + kq.ToString() + "   (0: Thành công, 1, 2, 3: Các kết quả khác)");
        //        }
        //        return View("ChuyenTien");
        //    }
        //    catch (Exception)
        //    {

        //        throw;
        //    }
        //}
        ///// <summary>
        ///// chuyển tiền khác ngân hàng-thắng
        ///// </summary>
        ///// <param name="Cardsend"></param>
        ///// <param name="CardRec"></param>
        ///// <param name="amount"></param>
        ///// <returns></returns>
        //public ActionResult TransferMoneyDiffBank(string Cardsend, string CardRec, string amount)
        //{
        //    try
        //    {
        //        System.Net.ServicePointManager.Expect100Continue = false;
        //        string UrlWebservice = "http://ecmoney10.tk/WebServiceNganHangMoney10.asmx";
        //        string ServiceName = "WebServiceNganHangMoney10";
        //        //string MethodName1 = "AuthenticateForTransaction";
        //        string MethodName2 = "TransferMoneyDiffBank";
        //        string card_no_send = Cardsend;
        //        string card_no_receive = CardRec;
        //        decimal deAmount = decimal.Parse(amount);

        //        object[] arrOb2 = new object[4];
        //        arrOb2[0] = sid;
        //        arrOb2[1] = card_no_send;
        //        arrOb2[2] = card_no_receive;
        //        arrOb2[3] = deAmount;
        //        object obResult2 = WSProxy.CallWebService(UrlWebservice, ServiceName, MethodName2, arrOb2);
        //        if (obResult2 != null)
        //        {
        //            int kq = (int)obResult2;

        //            if (kq == 0)
        //            {
        //                Response.Write("<script> alert ('Chuyển tiền thành công!');</script>");
        //                return View("LichSuGiaoDich");

        //            }
        //            string div = "error-box";
        //            ViewData["div"] = div;
        //            if (kq == -1)
        //            {
        //                string error = "Thẻ gửi không tồn tại trong hệ thống ngân hàng OCBCBank";
        //                ViewData["error"] = error;
        //                return View("ChuyenTien");
        //            }
        //            if (kq == -2)
        //            {
        //                string error = "Thẻ nhận không tồn tại trong hệ thống ngân hàng";
        //                ViewData["error"] = error;
        //                return View("ChuyenTien");
        //            }
        //            if (kq == -3)
        //            {
        //                string error = "Số dư không đủ cho giao dịch";
        //                ViewData["error"] = error;
        //                return View("ChuyenTien");
        //            }

        //            // Response.Write("Ket qua giao dịch: " + kq.ToString() + "   (0: Thành công, 1, 2, 3: Các kết quả khác)");
        //        }
        //        return View("ChuyenTien");
        //    }
        //    catch (Exception)
        //    {

        //        throw;
        //    }
        //}

       
    }
}
