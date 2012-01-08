using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Money10Banking.Controllers
{
    public class PublicController : Controller
    {
        //
        // GET: /Public/

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
    }
}
