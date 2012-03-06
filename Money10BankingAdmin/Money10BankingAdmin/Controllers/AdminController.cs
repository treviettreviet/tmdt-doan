using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Money10BankingAdmin.Controllers
{
    public class AdminController : Controller
    {
        //
        // GET: /Admin/

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult TaoUser()
        {
            return View();
        }
        public ActionResult DanhSachUser()
        {
            return View();
        }

      
    }
}
