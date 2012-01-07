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

        public ActionResult ThanhToanTrucTuyen(string email, string password)
        {
            // Xử lý code tại đây.
            TaiKhoan acc = Login(email, password, 1000);
            if (acc == null)
                Redirect("http://google.com");

            return View();
        }
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

        public ActionResult DangKyCaNhan()
        {
            return View();
        }

        MoiGioiEntities dbMoiGioi = new MoiGioiEntities();


        private TaiKhoan Login(string email, string password, decimal amount)
        {
            int state = UserValidation(email, password);
            TaiKhoan user = null;

            if (state == 0)
            {
                user = (from row in dbMoiGioi.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();

                if (CheckAccount(amount, (decimal)user.SoDu) == 1)
                    throw new Exception("Số tiền trong tài khoản không đủ thực hiện giao dịch !");
            }
            else if (state == 1)
            {
                throw new Exception("Sai password !");
            }
            else
            {
                throw new Exception("E-mail chưa đăng ký !");
            }

            return user;
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

                if (user.MatKhau == password)
                    return 0;//Đăng nhập thành công
                else
                    return 1;//Đăng nhập không thành công, sai password
            }
            catch
            {
                return -1; //Email chưa đăng ký
            }

        }
   }
}
