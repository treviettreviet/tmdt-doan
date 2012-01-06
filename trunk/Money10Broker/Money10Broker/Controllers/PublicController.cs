using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

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
            return View();
        }
    }
}
