using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Money10Broker.Models;

namespace Money10Broker.Controllers
{
    public class TransactionController : Controller
    {
        private xnvaufit_MoiGioiEntities dbMoiGioi = new xnvaufit_MoiGioiEntities();
        //
        // GET: /Transaction/

        public ActionResult ChuyenTien()
        {
            return View();
        }

        public ActionResult TransferByBroker(string id, string banktransfer, string banksend, string bankreceive, string sendcardnum, string receivecardnum, string amount)
        {
            decimal amt = decimal.Parse(amount);
            TransferByBroker(sendcardnum, receivecardnum, amt);
            return View("LichSuGiaoDich");
        }

        string wsURL = "http://ecmoney10.tk/WebServiceNganHangMoney10.asmx";
        string wsMethod = "TransferMoneySameBank";
        string WebService = "WebServiceNganHangMoney10";

        private ActionResult TransferByBroker(string sendcardnum, string receivecardnum, decimal amount)
        {
            string brokerCardNum = "340426820759153";
            string sid = WSProxy.CallWebService(wsURL, WebService, "AuthenticateForTransaction", new object[] { "lengoctin@gmail.com", "12345678" }).ToString();

            //Chuyển tiền 2 tài khoản
            int result = (int)WSProxy.CallWebService(wsURL, WebService, wsMethod, new object[] { sid, sendcardnum, receivecardnum, amount });

            //Chuyển thành công vào môi giới
            if (result == 0)
            {
                //Thu phí 3% số tiền giao dịch
                decimal fee = amount * (3m / 100m);

                //Chuyển tiền vào tk môi giới
                result = (int)WSProxy.CallWebService(wsURL, WebService, wsMethod, new object[] { sid, sendcardnum, brokerCardNum, fee });

                //Giao dịch thành công
                if (result == 0)
                {
                    LichSuGiaoDich log = new Models.LichSuGiaoDich();
                    log.NgayGiaoDich = DateTime.Now;
                    log.The = (from row in dbMoiGioi.Thes where row.SoThe.Equals(sendcardnum) select row).First<The>();
                    log.MaThe = log.The.MaThe;
                    log.SoTheNhan = receivecardnum;
                    log.SoTienGiaoDich = amount;
                    log.MaLoaiGiaoDich = "LGD003";
                    log.MaLichSuGiaoDich = PhatSinhMaGiaoDich();
                    log.TinhTrang = 0;
                    dbMoiGioi.LichSuGiaoDiches.AddObject(log);
                    dbMoiGioi.SaveChanges();

                    ViewData["div"] = "message-box";
                    ViewData["messege"] = "Chuyển Tiền Thành Công";
                    return RedirectToAction("LichSuGiaoDich");
                }
                else
                {
                    //Giao dịch thất bại, trả tiền lại cho người gửi
                    result = (int)WSProxy.CallWebService(wsURL, WebService, wsMethod, new object[] { sid, brokerCardNum, sendcardnum, fee });
                }
            }
            ViewData["div"] = "message-box";
            ViewData["messege"] = "Chuyển Tiền Thất Bại";
            return RedirectToAction("ChuyenTien");
        }

        private string PhatSinhMaGiaoDich()
        {
            string MaMoiNhat = dbMoiGioi.LichSuGiaoDiches.Max(id => id.MaLichSuGiaoDich);
            int max;
            if (MaMoiNhat == null)
            {
                max = 0;
            }
            else
                max = int.Parse(MaMoiNhat.Substring(2));
            max++;
            return "GD" + max.ToString();
        }
    }
}
