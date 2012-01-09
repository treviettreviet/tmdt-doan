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
                //return View("DangNhapThatBai");
                return RedirectToAction("DangNhapThatBai");
            }
            //return View();
        }


        // Truyền các tham số vào hàm, tên của các tham số phải đúng 9 xác với tên của các input đặt bên trang DangKyCaNhan
        // Ví du: XuLyDangKyCaNhan(string email, string password,.....,...)
        // Muốn lấy giá trị của input nào thì truyền tên của input đó vô.
        public ActionResult XuLyDangKyCaNhan()
        {
            return View();
        }
   }
}
