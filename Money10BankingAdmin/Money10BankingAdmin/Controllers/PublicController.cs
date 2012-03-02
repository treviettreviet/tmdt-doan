using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Money10BankingAdmin.Controllers
{
    public class PublicController : Controller
    {
        //
        // GET: /Public/

        public ActionResult NapTien()
        {
            return View();
        }
        public ActionResult QuanLyThe()
        {
            return View();
        }
    }
}
