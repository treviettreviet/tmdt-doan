﻿using System;
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

        public ActionResult ChuyenTienCungMoiGioi()
        {
            return View();
        }

        public ActionResult ChuyenTienKhacMoiGioi()
        {
            return View();
        }

        public ActionResult LichSuGiaoDich()
        {
            return View();
        }

        public ActionResult NapTien()
        {
            return View();
        }

        public ActionResult RutTien()
        {
            return View();
        }

        public ActionResult ChuyenTien()
        {
            return View();
        }

        public ActionResult XuLyRutTien()
        {
            return View();
        }

        public ActionResult ThongBaoKetQuaGiaoDich()
        {
            return View();
        }

        public ActionResult XuLyChuyenTienCungMoiGioi(string receiver_email, string price, string reason)
        {
            TaiKhoan tkGui = (TaiKhoan)Session["User"];
            TaiKhoan tkNhan = new TaiKhoan();
            xnvaufit_MoiGioiEntities mg = new xnvaufit_MoiGioiEntities();
            string message = "";
            
            // Kiểm tra email người nhận có tồn tại trong hệ thống Ecmoney10Broker.tk không?
            try
            {
                tkNhan = mg.TaiKhoans.Single(m => m.Email == receiver_email);   // SingleOrDefault
            }
            catch
            {
                message = "Tài khoản người nhận không tồn tại trong hệ thống EcMoney10Broker.tk";
                ViewData["message"] = message;
                return View("ChuyenTienCungMoiGioi");   
            }

            // Kiểm tra thông tin về số dư của tài khoản gửi
            decimal price_transfer = decimal.Parse(price);
            if (tkGui.SoDu < price_transfer)
            {
                message = "Số dư Ví không đủ để thực hiện giao dịch này. Vui lòng nạp thêm tiền >> <a href=''>Nạp tiền</a>";
                ViewData["message"] = message;
                return View("ChuyenTienCungMoiGioi");
            }

            // Xử lý Gửi tiền
            tkGui.SoDu -= price_transfer;
            tkNhan.SoDu += price_transfer;
            mg.SaveChanges();
            message = "Bạn vừa thực hiện giao dịch chuyển tiền <strong>thành công</strong> giữa 2 Ví trong cùng hệ thống Ecmoney10Broker.tk<br/>";
            message += " Một thông báo đã được gửi đến Email của bạn, vui lòng kiểm tra hộp thư của bạn, để biết thêm chi tiết. Cảm ơn bạn đã sử dụng dịch vụ của EcMoney10Broker.tk !";
            ViewData["message"] = message;
            return View("ThongBaoKetQuaGiaoDich");
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