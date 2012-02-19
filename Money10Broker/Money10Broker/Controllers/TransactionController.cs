using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Money10Broker.Controllers
{
    public class TransactionController : Controller
    {
        //
        // GET: /Transaction/

        public ActionResult ChuyenTien()
        {
            return View();
        }

        public ActionResult TransferByBroker()
        {
            return View();
        }
    }
}
