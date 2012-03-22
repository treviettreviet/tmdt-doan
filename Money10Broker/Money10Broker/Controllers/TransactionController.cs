using System;
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
        /// <summary>
        /// 
        /// </summary>
        /// <param name="email"></param>
        /// <returns></returns>
        public List<LichSuGiaoDichModels> LSGiaoDich(string email)
        {
            //TaiKhoan mail = (TaiKhoan)Session["User"];
            TaiKhoan tk = dbMoiGioi.TaiKhoans.Single(p => p.Email == email);
            // The th= new The();
            //var the = from th in dbMoiGioi.Thes where th.MaTaiKhoan == tk.MaTaiKhoan select th.MaTaiKhoan;
            //if (the.Count() != 0)
            //{
                //TaiKhoan th = dbMoiGioi.TaiKhoans.Single(a => a.MaTaiKhoan == tk.MaTaiKhoan);
                List<LichSuGiaoDichModels> listData = new List<LichSuGiaoDichModels>();
                List<LichSuGiaoDich> gd = (from LSGD in dbMoiGioi.LichSuGiaoDiches where LSGD.MaThe == tk.MaTaiKhoan select LSGD).ToList();
                for (int i = 0; i < gd.Count; i++)
                {

                    string maldg = gd[i].MaLoaiGiaoDich;
                    LoaiGiaoDich Lgd = dbMoiGioi.LoaiGiaoDiches.Single(m => m.MaLoaiGiaoDich == maldg);
                    LichSuGiaoDichModels ls = new LichSuGiaoDichModels();
                    ls.ThoiGian = gd[i].NgayGiaoDich.ToString();
                    ls.LoaiGD = Lgd.TenLoaiGiaoDich;
                    ls.TheGui = tk.Email;
                    ls.TheNhan = gd[i].SoTheNhan;
                    ls.TienGui = gd[i].SoTienGiaoDich.ToString();
                    listData.Add(ls);

                }
                return listData;
            //}
            //else
            //    return null;
        }

        /// <summary>
        /// chuyen tien cung moi gioi
        /// </summary>
        /// <param name="receiver_email"></param>
        /// <param name="price"></param>
        /// <returns></returns>
        public ActionResult XuLyChuyenTienKhacMoiGioi(string receiver_email, string price)
        {
            xnvaufit_MoiGioiEntities mg = new xnvaufit_MoiGioiEntities();
            TaiKhoan tk = (TaiKhoan)Session["User"];
            System.Net.ServicePointManager.Expect100Continue = false;
            string UrlWebservice = "http://moigioimoney04.tk/WS4EM.asmx";
            string ServiceName = "WS4EM";
            string MethodName1 = "WSLoginMoiGioi";
            string MethodName2 = "LienMoiGioi";

            string us = "moigioi10";
            string pass = "123456";
            object[] arrOb1 = new object[2];
            arrOb1[0] = us;
            arrOb1[1] = pass;  // Số thẻ của Môi Giới 04

            object obResult = WSProxy.CallWebService(UrlWebservice, ServiceName, MethodName1, arrOb1);
            string sID = (string)obResult;
            string div = "";
            string error = "";
            if (sID.Equals("fail"))
            {
                div += "message-box";
                error += "Lỗi, không đăng nhập được vào hệ thống của Môi Giới Liên Kết. Vui lòng thực hiện lại thao tác.";
                ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                return RedirectToAction("ChuyenTienKhacMoiGioi", new { div, error });   // Chỗ này hay nè anh em :D
            }
            if(sID.Equals("error"))
            {
                div += "message-box";
                error += "Có lỗi xảy ra trong quá trình thực hiện giao dịch: " + sID;
                ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                return RedirectToAction("ChuyenTienKhacMoiGioi", new { div, error });   // Chỗ này hay nè anh em :D
            }
            if (sID != null)
            {
                object[] arrOb2 = new object[3];
                double pr = double.Parse(price);
                arrOb2[0] = sID;
                arrOb2[1] = pr;
                arrOb2[2] = receiver_email;
                object obResult2 = WSProxy.CallWebService(UrlWebservice, ServiceName, MethodName2, arrOb2);
                int result2 = (int)obResult2;
                if (result2 == 0)
                {
                    try
                    {
                        xnvaufit_MoiGioiEntities mg222 = new xnvaufit_MoiGioiEntities();
                        TaiKhoan tkdn = mg222.TaiKhoans.Single(m => m.Email == tk.Email);
                        tkdn.SoDu -= (decimal)pr;
                        LichSuGiaoDich log = new Models.LichSuGiaoDich();
                        log.NgayGiaoDich = DateTime.Now;
                        //log.The = (from row in dbMoiGioi.Thes where row.SoThe.Equals(sendcardnum) select row).First<The>();
                        log.MaThe = tk.MaTaiKhoan;
                        log.SoTheNhan = receiver_email;
                        log.SoTienGiaoDich = decimal.Parse(price);
                        log.MaLoaiGiaoDich = "LGD003";
                        log.MaLichSuGiaoDich = PhatSinhMaGiaoDich();
                        log.TinhTrang = 1;
                        mg222.LichSuGiaoDiches.AddObject(log);
                        mg222.SaveChanges();
                        //TaiKhoan mail = (TaiKhoan)Session["User"];
                        List<LichSuGiaoDichModels> listData = LSGiaoDich(tk.Email);
                        ViewData["ListData"] = listData;
                        Session["User"] = tkdn;
                        div += "message-box";
                        error += "Giao dịch thành công! Bạn có thể đến trang Lịch Sử Giao Dịch bên dưới để kiêm tra lại kết quả giao dịch";
                        ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                        ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị

                        return RedirectToAction("ThongBaoKetQuaGiaoDich", new { div, error });   // Chỗ này hay nè anh em :D
                    }
                    catch (Exception ex)
                    {
                        div += "message-box";
                        error += "Lỗi, không truy xuất được tài khoản đang đăng nhập....!";
                        ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                        ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                        return RedirectToAction("ChuyenTienKhacMoiGioi", new { div, error });   // Chỗ này hay nè anh em :D
                    }
                }
                if (result2 == 1)
                {
                    div += "message-box";
                    error += "Giao dịch thất bại....!";
                    ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                    ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                    return RedirectToAction("ChuyenTienKhacMoiGioi", new { div, error });   // Chỗ này hay nè anh em :D
                }
                if (result2 == -1)
                {
                    div += "message-box";
                    error += "Session đăng nhập không tồn tại...!";
                    ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                    ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                    return RedirectToAction("ChuyenTienKhacMoiGioi", new { div, error });   // Chỗ này hay nè anh em :D
                }
                if (result2 == -2)
                {
                    div += "message-box";
                    error += "Có lỗi xảy ra, nhưng không xác định được lỗi...!";
                    ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                    ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                    return RedirectToAction("ChuyenTienKhacMoiGioi", new { div, error });   // Chỗ này hay nè anh em :D
                }
                if (result2 == -3)
                {
                    div += "message-box";
                    error += "Thẻ giao dịch qua ngân hàng không được liên kết...!";
                    ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                    ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                    return RedirectToAction("ChuyenTienKhacMoiGioi", new { div, error });   // Chỗ này hay nè anh em :D
                }
            }
            return RedirectToAction("LichSuGiaoDich");
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
            xnvaufit_MoiGioiEntities dbmg = new xnvaufit_MoiGioiEntities();
            TaiKhoan tkGuiNew = dbmg.TaiKhoans.SingleOrDefault(a=>a.MaTaiKhoan==tkGui.MaTaiKhoan);
            string div = "";
            string error = "";
            // Kiểm tra email người nhận có tồn tại trong hệ thống Ecmoney10Broker.tk không?
            try
            {
                tkNhan = dbmg.TaiKhoans.SingleOrDefault(m => m.Email == receiver_email);   // SingleOrDefault
            }
            catch
            {
                div += "message-box";
                error += "Tài khoản người nhận không tồn tại trong hệ thống EcMoney10Broker.tk";
                ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                return RedirectToAction("ChuyenTienCungMoiGioi", new { div, error });   // Chỗ này hay nè anh em :D
            }

            // Kiểm tra thông tin về số dư của tài khoản gửi
            decimal price_transfer = decimal.Parse(price);
            if (tkGuiNew.SoDu < price_transfer)
            {
                div += "message-box";
                error += "Số dư Ví không đủ để thực hiện giao dịch này. Vui lòng nạp thêm tiền vào Ví.";
                ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                return RedirectToAction("ChuyenTienCungMoiGioi", new { div, error });   // Chỗ này hay nè anh em :D
            }
           // xnvaufit_MoiGioiEntities dbmg2 = new xnvaufit_MoiGioiEntities();
            // Xử lý Gửi tiền
            tkGuiNew.SoDu = tkGui.SoDu - price_transfer;
            tkNhan.SoDu = tkNhan.SoDu + price_transfer;
           // dbmg.SaveChanges();
            LichSuGiaoDich log = new Models.LichSuGiaoDich();
            log.NgayGiaoDich = DateTime.Now;
            //log.The = (from row in dbMoiGioi. where row.SoThe.Equals() select row).First<The>();
            log.MaThe = tkGui.MaTaiKhoan;
            log.SoTheNhan = tkNhan.Email;
            log.SoTienGiaoDich = price_transfer;
            log.MaLoaiGiaoDich = "LGD003";
            log.MaLichSuGiaoDich = PhatSinhMaGiaoDich();
            log.TinhTrang = 1;
            dbmg.LichSuGiaoDiches.AddObject(log);
            dbmg.SaveChanges();

            List<LichSuGiaoDichModels> listData = LSGiaoDich(tkGui.Email);
            ViewData["ListData"] = listData;
            error = "Bạn vừa thực hiện giao dịch chuyển tiền <strong>thành công</strong> giữa 2 Ví trong cùng hệ thống Ecmoney10Broker.tk<br/>";
            error += " Một thông báo đã được gửi đến Email <b><i>" + tkGui.Email + "</i></b> của bạn, vui lòng kiểm tra hộp thư của bạn, để biết thêm chi tiết. Cảm ơn bạn đã sử dụng dịch vụ của EcMoney10Broker.tk !";
            ViewData["message"] = error;
            string sTo = tkGui.Email;
            string sFrom = "tmdthca@gmail.com";
            string sSubject = "Bạn đã chuyển tiền thành công luc " + DateTime.Now + "!";
            string sBody = "Đây là mail tự động. Mọi chi tiết liên hệ tmdthca@gmail.com.";
            sendMail(sTo, sFrom, sSubject, sBody);
            return RedirectToAction("ThongBaoKetQuaGiaoDich", new { div, error }); 
           // return RedirectToAction("ThongBaoKetQuaGiaoDich", new {error});
        }

        public ActionResult TransferByBroker(string idsamediff, string banktransfer, string banksend, string bankreceive, string sendcardnum, string receivecardnum, string amount)
        {
            if (idsamediff == "samebank")
            {
                decimal amt = decimal.Parse(amount);
                TransferByBroker(sendcardnum, receivecardnum, amt);
            }
            else
            {
                decimal amt = decimal.Parse(amount);
                TransferByBrokerDiffBank(sendcardnum, receivecardnum, amt);
            }
            return View("LichSuGiaoDich");
        }

        string wsURL = "http://ecmoney10.tk/WebserviceNganHang/WebServiceNganHangMoney10.asmx";
        string wsMethod = "TransferMoneySameBank";
        string WebService = "WebServiceNganHangMoney10";

        private ActionResult TransferByBrokerDiffBank(string sendcardnum, string receivecardnum, decimal amount)
        {
            string brokerCardNum = "340426820759153";
            wsMethod = "TransferMoneyDiffBank";

            string sid = WSProxy.CallWebService(wsURL, WebService, "AuthenticateForTransaction", new object[] { "lengoctin@gmail.com", "12345678" }).ToString();

            //Chuyển tiền 2 tài khoản khách ngân hàng
            int result = (int)WSProxy.CallWebService(wsURL, WebService, wsMethod, new object[] { sid, sendcardnum, receivecardnum, amount });

            //Chuyển thành công vào môi giới
            if (result == 0)
            {
                //Thu phí 3% số tiền giao dịch
                decimal fee = amount * (3m / 100m);

                //Chuyển tiền vào tk môi giới
                wsMethod = "TransferMoneySameBank";
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
                    wsMethod = "TransferMoneyDiffBank";
                    result = (int)WSProxy.CallWebService(wsURL, WebService, wsMethod, new object[] { sid, receivecardnum, sendcardnum, fee });
                }
            }


            ViewData["div"] = "message-box";
            ViewData["messege"] = "Chuyển Tiền Thất Bại";
            return RedirectToAction("ChuyenTien");
        }

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
            List<string> MaMoiNhat = (from col in dbMoiGioi.LichSuGiaoDiches select col.MaLichSuGiaoDich).ToList<string>();
            int max = 0;
            foreach (string sub in MaMoiNhat)
            {
                int temp = int.Parse(sub.Substring(2));
                if (temp > max)
                    max = temp;
            }

            max++;
            
            return "GD" + max.ToString();
        }

        public ActionResult ThanhToanTrucTuyen(string id)
        {
            if (id == null)
            {
                return RedirectToAction("../Public/TrangChu");
            }
            try
            {
                // Kiểm tra đơn hàng có tồn tại trong csdl không? Và tình trạng là chưa thanh toán TinhTrang=0
                DonHang dh = dbMoiGioi.DonHangs.Single(m => m.MaHoaDon.Equals(id) && m.TinhTrang==0);
                return View(dh);
            }
            catch (Exception)
            {
                return RedirectToAction("../Public/TrangChu");
                //throw new Exception(ex.Message);
            }
        }

        public ActionResult ThongBaoKetQuaGiaoDich()
        {
            return View();
        }

        /// <summary>
        /// Xử lý Đăng Nhập cho thao tác Thanh Toán Trực Tuyến.
        /// </summary>
        /// <param name="email"></param>
        /// <param name="password"></param>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult XuLyDangNhapTTTT(string email, string password, string id)
        {
            xnvaufit_MoiGioiEntities db = new xnvaufit_MoiGioiEntities();
            int user_validation = UserValidation(email, password);
            if (user_validation == 0)
            {
                // Xử lý kiểm tra tài khoản khách hàng có đủ để thực hiện giao dịch không?
                //  Nếu đủ thì cho phép thực hiện giao dịch và thông báo thành công
                //  Nếu không đủ thì hiển thị thông báo
                TaiKhoan tk = (TaiKhoan)Session["User"];
                DonHang dh = new DonHang();
                if (id != null)
                {
                    try
                    {
                        string div = "";
                        string error = "";
                        dh = db.DonHangs.Single(m => m.MaHoaDon == id && m.TinhTrang==0);
                        if (tk.SoDu < dh.TongThanhToan)
                        {
                            div += "message-box";
                            //string error = "Số dư trong ví không đủ để thực hiện giao dịch. Vui lòng nạp tiền thêm vào ví." + " Đến trang <a href='/Transaction/NapTien'>Nạp Tiền</a>";
                            error += "Số dư trong ví không đủ để thực hiện giao dịch. Vui lòng nạp tiền thêm vào ví.";
                            ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                            ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                            return RedirectToAction("ThanhToanTrucTuyen" + "/" + id, new { div, error });   // Chỗ này hay nè anh em :D
                        }
                        else
                        {
                            // B1: Truy vấn lại thông tin tài khoản đã vừa đăng nhập thành công
                            // B2: Trừ tài khoản của người vừa đăng nhập, trừ bằng số tiền của đơn hàng
                            // B3: Cộng tiền vừa trừ vào tài khoản của Chủ Website Kinh Doanh
                            // B4: Cập nhật trạng thái đơn hàng = 1 (Có nghĩa là đơn hàng đã được thanh toán)
                            // B4: Thông báo kết quả
                            TaiKhoan LayLaiTK = db.TaiKhoans.Single(m=>m.MaTaiKhoan==tk.MaTaiKhoan);
                            LayLaiTK.SoDu -= dh.TongThanhToan;
                            TaiKhoan TKChuWebSiteKinhDoanh = db.TaiKhoans.SingleOrDefault(m=>m.Email==dh.Email);
                            TKChuWebSiteKinhDoanh.SoDu += dh.TongThanhToan; // Cần xem lại chỗ này nữa là Xong. :D
                            dh.TinhTrang = 1;   // Đã thanh toán thành công!
                            db.SaveChanges();
                            Session["User"] = LayLaiTK;
                            div += "message-box";
                            //string error = "Số dư trong ví không đủ để thực hiện giao dịch. Vui lòng nạp tiền thêm vào ví." + " Đến trang <a href='/Transaction/NapTien'>Nạp Tiền</a>";
                            error += "Giao dịch thành công! Vui lòng đến trang Lịch Sử Giao Dịch để xem thông tin chi tiết kế quả giao dịch.";
                            ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                            ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                            return RedirectToAction("ThongBaoKetQuaGiaoDich" + "/" + id, new { div, error });   // Chỗ này hay nè anh em :D
                        }
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(ex.Message);
                    }
                }
                return RedirectToAction("../Public/TongHop");
            }
            else
            {
                //<div class="message-box" id="message-box-login" style="display: block; ">Mật khẩu không đúng</div>
                string div = "message-box";
                string error = "";
                if (user_validation == -1)
                {
                    error += "Email không tồn tại, vui lòng nhập lại Email.";
                }
                if (user_validation == 1)
                {
                    error += "Sai mật khẩu, vui lòng nhập lại mật khẩu.";
                }
                ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                return RedirectToAction("ThanhToanTrucTuyen" + "/" + id, new { div, error });   // Chỗ này hay nè anh em :D
                //Response.Redirect("/Transaction/ThanhToanTrucTuyen" + "/" + id);
            }
        }

        private int UserValidation(string email, string password)
        {
            try
            {
                xnvaufit_MoiGioiEntities mg = new xnvaufit_MoiGioiEntities();
                TaiKhoan user = (from row in mg.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();
                if (user.Email == email && user.MatKhau == GetMD5Hash(password))
                {
                    Session["User"] = user;
                    if (user.MaLoaiTaiKhoan.Equals("LTK001"))   // Tài khoản thuộc Cá Nhân
                    {
                        try
                        {
                            CaNhan canhan = mg.CaNhans.Single(m => m.MaTaiKhoan == user.MaTaiKhoan);
                            Session["TaiKhoanCaNhan"] = canhan;
                        }
                        catch (Exception ex)
                        {
                            //throw new Exception(ex.Message);
                            Response.Write(ex.ToString());
                        }
                    }
                    else    // Tài khoản thuộc Doanh Nghiệp
                    {
                        try
                        {
                            DoanhNghiep dn = mg.DoanhNghieps.Single(m => m.MaTaiKhoan == user.MaTaiKhoan);
                            Session["TaiKhoanDoanhNghiep"] = dn;
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.ToString());
                        }
                    }
                    return 0;//Đăng nhập thành công
                }
                else
                {
                    return 1;//Đăng nhập không thành công, sai password
                }
            }
            catch
            {
                return -1; //Email chưa đăng ký
            }
        }

        /// <summary>
        /// Thắng - Ma hoa MD5
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        public string GetMD5Hash(string input)
        {
            System.Security.Cryptography.MD5CryptoServiceProvider x = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] bs = System.Text.Encoding.UTF8.GetBytes(input);
            bs = x.ComputeHash(bs);
            System.Text.StringBuilder s = new System.Text.StringBuilder();
            foreach (byte b in bs)
            {
                s.Append(b.ToString("x2").ToLower());
            }
            string password = s.ToString();
            return password;
        }
    }
}
