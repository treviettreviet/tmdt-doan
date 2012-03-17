﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Money10Broker.Models;
using System.Net.Mail;
using System.Net;

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
        /// <summary>
        /// send mail khi khách hàng giao dịch
        /// </summary>
        /// <param name="sTo"></param>
        /// <param name="sFrom"></param>
        /// <param name="sSubject"></param>
        /// <param name="sBody"></param>
        public void sendMail(string sTo, string sFrom, string sSubject, string sBody)
        {
            string to = sTo;
            string from = sFrom;
            string subject = sSubject;
            string body = sBody;
            string sFileName = string.Empty;
            string server = "smtp.gmail.com";
            string port = "587";
            string user = from;
            string pass = "tmdt123456";
            String[] addr = to.Split(',');// Danh sach mail nhan
            System.Net.Mail.SmtpClient smtp = new SmtpClient();
            System.Net.Mail.MailMessage msg = new MailMessage();
            msg.IsBodyHtml = true;
            smtp.Port = Int32.Parse(port);
            smtp.EnableSsl = true;//chứng thực việc gửi mail
            //smtp.Host = "smtp.gmail.com";//Sử dụng SMTP của gmail 
            smtp.Host = server;
            smtp.Credentials = new NetworkCredential(user, pass);//user name , password cua mail gui
            try
            {


                if (from.Length > 0 && to.Length > 0 && subject.Length > 0 && body.Length >= 0)
                {


                    System.Text.RegularExpressions.Regex regex = new System.Text.RegularExpressions.Regex(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");//kiem tra tinh hop le cua mail
                    msg.From = new MailAddress(from, "Money10Bank Gui Mail", System.Text.Encoding.UTF8);
                    Byte i;
                    for (i = 0; i < addr.Length; i++)
                    {
                        bool result = regex.IsMatch(addr[i]);
                        if (result == false)
                        {
                            //lblError.Visible = true;
                            //lblError.Text = "Địa chỉ email nhận:" + sTo + " không hợp lệ.";
                            Response.Write("<script> alert ('Mail Nhân" + sTo + "ko hop lệ!');</script>");

                        }
                        else
                        {
                            msg.To.Add(addr[i]);
                            msg.Subject = subject;
                            msg.Body = body;
                            msg.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
                            msg.ReplyTo = new MailAddress(addr[i]);
                            smtp.Send(msg);
                            Response.Flush();
                            // lblError.Text = "Email đã được gửi đến: " + sTo + ".";
                            // lblError.Visible = true;
                        }
                    }
                }
            }


            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        public ActionResult XuLyChuyenTienCungMoiGioi(string receiver_email, string price, string reason)
        {
            TaiKhoan tkGui = new TaiKhoan();
            tkGui = (TaiKhoan)Session["User"];
             
            TaiKhoan tkNhan = new TaiKhoan();
            xnvaufit_MoiGioiEntities mg = new xnvaufit_MoiGioiEntities();
            TaiKhoan tkGuiNew = mg.TaiKhoans.SingleOrDefault(a=>a.MaTaiKhoan==tkGui.MaTaiKhoan);
            string message = "";
            
            // Kiểm tra email người nhận có tồn tại trong hệ thống Ecmoney10Broker.tk không?
            try
            {
                tkNhan = mg.TaiKhoans.SingleOrDefault(m => m.Email == receiver_email);   // SingleOrDefault
            }
            catch
            {
                message = "Tài khoản người nhận không tồn tại trong hệ thống EcMoney10Broker.tk";
                ViewData["message"] = message;
                return View("ChuyenTienCungMoiGioi");   
            }

            // Kiểm tra thông tin về số dư của tài khoản gửi
            decimal price_transfer = decimal.Parse(price);
            if (tkGuiNew.SoDu < price_transfer)
            {
                message = "Số dư Ví không đủ để thực hiện giao dịch này. Vui lòng nạp thêm tiền >> <a href='/Transaction/NapTien'>Nạp tiền</a>";
                ViewData["message"] = message;
                return View("ChuyenTienCungMoiGioi");
            }

            // Xử lý Gửi tiền
            tkGuiNew.SoDu = tkGui.SoDu - price_transfer;
            tkNhan.SoDu = tkNhan.SoDu + price_transfer;
            mg.SaveChanges();
            message = "Bạn vừa thực hiện giao dịch chuyển tiền <strong>thành công</strong> giữa 2 Ví trong cùng hệ thống Ecmoney10Broker.tk<br/>";
            message += " Một thông báo đã được gửi đến Email <b><i>" + tkGui.Email + "</i></b> của bạn, vui lòng kiểm tra hộp thư của bạn, để biết thêm chi tiết. Cảm ơn bạn đã sử dụng dịch vụ của EcMoney10Broker.tk !";
            ViewData["message"] = message;
            string sTo = tkGui.Email;
            string sFrom = "tmdthca@gmail.com";
            string sSubject = "Bạn đã chuyển tiền thành công luc " + DateTime.Now + "!";
            string sBody = "Đây là mail tự động. Mọi chi tiết liên hệ tmdthca@gmail.com.";
            sendMail(sTo, sFrom, sSubject, sBody);
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

        public ActionResult ThanhToanTrucTuyen(string id)
        {
            try
            {
                DonHang dh = dbMoiGioi.DonHangs.SingleOrDefault(m => m.MaHoaDon.Equals(id));
                return View(dh);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}