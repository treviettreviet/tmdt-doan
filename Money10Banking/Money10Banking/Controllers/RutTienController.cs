using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Money10Banking.Controllers
{
    public class RutTienController : Controller
    {
        //
        // GET: /RutTien/

        public ActionResult RutTien()
        {
            return View();
        }


//        public int TransferMoneyDiffBank(string card_number_send, string card_number_receive, float amount)
//{
// return 0; // Giao dich thanh cong
// return -1; // Giao dich that bai
//}
//[11:37:27 PM] vnTonyJaa: lan 2
//[11:37:28 PM] vnTonyJaa: public int TransferMoneyDiffBank(string card_number_send, string card_number_receive, float amount)
//{
// return 0; // Giao dich thanh cong
// return 1; // So the gui khong hop le
// return 2; // So the nhan khong hop le
// return 3; // So du tai khoan cua the gui khong du de giao dich
// return -1; // Giao dich that bai
//}


    }
}
