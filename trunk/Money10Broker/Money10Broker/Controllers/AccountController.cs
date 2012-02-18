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
        //
        // GET: /Account/

        public ActionResult DangKyDoanhNghiep()
        {
            return View();
        }

        public ActionResult XuLyDangKyDoanhNghiep(string email, string password, string password_payment, string verify_type, string social_id, string fullname, string address, string phone)
        {
            return View();
        }
    }
}
