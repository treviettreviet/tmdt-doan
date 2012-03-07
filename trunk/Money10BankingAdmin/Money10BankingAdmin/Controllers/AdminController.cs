using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Money10BankingAdmin.Models;
namespace Money10BankingAdmin.Controllers
{
    public class AdminController : Controller
    {
        //
        // GET: /Admin/

        public ActionResult Index()
        {
            if (Session["User"] != null)
            {
                return View();
            }
            else
            {
                return View("../Public/DangNhap");
            }
        }
        public ActionResult TaoUser()
        {
            Admin ad = (Admin)Session["User"];
            if (ad.GroupID == 1 || ad.GroupID == 2)
            {
                return View();
            }
            else
            {
                string div = "error-box";
                string error = "Ban Khong The Truy Cap.Trang Nay Chi Danh Cho Admin Va SupperMod!";

                error += "";
                ViewData["div"] = div;
                ViewData["error"] = error;
                return View("../Admin/Index");
            }
        }
        public ActionResult DanhSachUser()
        {
            return View();
        }

      
    }
}
