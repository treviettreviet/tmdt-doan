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

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ThanhToanTrucTuyen()
        {
            ViewData["MaDonHang"] = Request.QueryString["MaDonHang"];

            return View();
        }

        //public ActionResult XuLyDangNhapThanhToanTrucTuyen(string email, string password)
        //{
        //    // Xử lý code tại đây.
        //    TaiKhoan acc = Login(email, password, 1000);
        //    if (acc == null)
        //        Redirect("http://google.com");

        //    return View();
        //}
        
        
        public ActionResult TrangChu()
        {
            return View();
        }

        public ActionResult DangNhapThanhCong()
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
        public ActionResult DangNhapGiaoDich()
        {
            return View();
        }
        //MoiGioiEntities dbMoiGioi = new MoiGioiEntities();
        xnvaufit_MoiGioiEntities dbMoiGioi = new xnvaufit_MoiGioiEntities();

        private ActionResult Login(string email, string password, decimal amount)
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
                    return View("ChuyenTien");
            }
            else if (state == 1)
            {
                RedirectToAction("DangNhapThatBai", "Sai password !");
            }
            else
            {
                RedirectToAction("DangNhapThatBai", "E-mail chưa đăng ký !");
            }

            return View();
        }

        private int CheckAccount(decimal amount, decimal balance)
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

                if (user.Email == email && user.MatKhau == password)
                    return 0;//Đăng nhập thành công
                else
                    return 1;//Đăng nhập không thành công, sai password
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
            //
            int user_validation = UserValidation(email, password);
            if (user_validation == 0)
            {
                //return View("DangNhapThanhCong");
                return RedirectToAction("DangNhapThanhCong");
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

                //return View("DangNhapThatBai");
                //return RedirectToAction("DangNhapThatBai");
            }
            //return View();
        }

      

        // Truyền các tham số vào hàm, tên của các tham số phải đúng 9 xác với tên của các input đặt bên trang DangKyCaNhan
        // Ví du: XuLyDangKyCaNhan(string email, string password,.....,...)
        // Muốn lấy giá trị của input nào thì truyền tên của input đó vô.
        public ActionResult XuLyDangKyCaNhan(string cmdRegister, string email, string password, string password_payment, string social_id, string fullname, string date, string sex, string address, string city_id)
        {

            //Transfer1.wsTransfer ws = new Transfer1.wsTransfer();
            //ws.TransferMoneySameBank();

            if (cmdRegister != null)
            {
                if (KiemTraEmail(email) == 1)
                {
                    TaiKhoan newUser = new TaiKhoan();
                    CaNhan newInfo = new CaNhan();

                    //Phát sinh mã cho  tài khoản
                    var maTk = from mtk in dbMoiGioi.TaiKhoans select mtk;
                    int j = maTk.Count() + 1;
                    if (j <= 9)
                    {
                        newUser.MaTaiKhoan = "TK00" + j.ToString();
                    }
                    else
                    {
                        if (j > 9 && j <= 99)
                        {
                            newUser.MaTaiKhoan = "TK0" + j.ToString();
                        }
                        else if (j > 99 && j <= 999)
                        {
                            newUser.MaTaiKhoan = "TK" + j.ToString();
                        }
                    }

                    newUser.Email = email;
                    newUser.MatKhau =  password;
                    newUser.MatKhauGiaoDich = password_payment;
                    newUser.MaLoaiTaiKhoan = "LTK002";
                    newUser.TinhTrang = 0;
                    newUser.SoTaiKhoan = "67890";

                    dbMoiGioi.TaiKhoans.AddObject(newUser);
                    dbMoiGioi.SaveChanges();


                    //newInfo.CMNDHoChieu = Request["social_id"];
                    //newInfo.NgaySinh = DateTime.Parse(Request["date"]);
                    //newInfo.HoTen = Request["fullname"];
                    //newInfo.GioiTinh = Request["sex"];
                    //Request["addresss"];
                    //Request["city_id"];
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
                if (!user.Email.Equals(email))
                {
                    // Email không tồn tại
                    return 1;
                }
                else
                {
                    // email ton tai
                    return 0;
                }
            }
            catch
            {
                return -1;
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
                    return View("LichSuGiaoDich");
                }
                else
                {
                    //Giao dịch thất bại, trả tiền lại cho người gửi
                    result = (int)WSProxy.CallWebService(wsURL, WebService, wsMethod, new object[] { sid, brokerCardNum, sendcardnum, fee });
                }
            }
            ViewData["div"] = "message-box";
            ViewData["messege"] = "Chuyển Tiền Thất Bại";
            return View("ChuyenTien");
        }
   }
}
