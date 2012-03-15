using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Money10BankingAdmin.Models;
using System.Net.Mail;
using System.Net;
using System.Data;
using System.Data.Objects;
namespace Money10BankingAdmin.Controllers
{
    public class AdminController : Controller
    {
        //
        // GET: /Admin/
        private DB_NganHangEntities dbNganHang = new DB_NganHangEntities();
        public ActionResult Index()
        {
            if (Session["User"] != null)
            {
                return View();
            }
            else
            {
                return View("../Public/DangNhap");
            }
        }
        public ActionResult TaoUser()
        {
            Admin ad = (Admin)Session["User"];
            if (ad.GroupID == 1 || ad.GroupID == 2)
            {
                return View();
            }
            else
            {
                string div = "error-box";
                string error = "Ban Khong The Truy Cap.Trang Nay Chi Danh Cho Admin Va SupperMod!";

                error += "";
                ViewData["div"] = div;
                ViewData["error"] = error;
                return View("../Admin/Index");
            }
        }
        /// <summary>
        /// kiem tra email ton tai
        /// </summary>
        /// <param name="email"></param>
        /// <returns></returns>
        private int KiemTraEmail(string email)
        {
            int flag = 1;
            try
            {
                Admin user = (from row in dbNganHang.Admins where row.Email.Equals(email) select row).First<Admin>();
                if (!user.Email.Equals(email))
                {
                    flag = 1; // Email không tồn tại
                    return flag;
                }
                else
                {
                    flag = 0; // email ton tai
                    return flag;
                }
            }
            catch
            {
                return flag;
            }
        }
        /// <summary>
        /// ma hoa mat khau
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        public static string GetMD5Hash(string input)
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
        /// <summary>
        /// send mail
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

        public ActionResult XuLyTaoUser(string email, string password, string name, string group)
        {
            try
            {
                DB_NganHangEntities db1 = new DB_NganHangEntities();
               // string maxtk = db1.TaiKhoans.Max(m => m.MaTaiKhoan);//lấy record cuối cùng của cột mã tài khoản
                Admin tk = new Admin();
                if (KiemTraEmail(email) == 1)
                {
                    tk.Email = email;
                }
                else
                {
                    string div = "error-box";
                    string error = "Địa chỉ email này hiện đã được sử dụng trong hệ thống";
                    ViewData["div"] = div;
                    ViewData["error"] = error;
                    return View("TaoUser");
                }
                tk.Password = GetMD5Hash(password);
                tk.Name = name;
                tk.GroupID = int.Parse(group);
                tk.Status = 1;
                db1.Admins.AddObject(tk);
                db1.SaveChanges();
                Response.Write("<script> alert ('Tạo User  thành công!');</script>");
                string sTo = email;
                string sFrom = "tmdthca@gmail.com";
                string sSubject = "Money10Banking Thông báo";
                string sBody = "Bạn được tạo user hệ thống thành công lúc" + DateTime.Now + "!Đây là mail tự động. Mọi chi tiết liên hệ tmdthca@gmail.com.";
                sendMail(sTo, sFrom, sSubject, sBody);
               
                return View("Index");
            }
            catch
            {
                //throw new Exception("Error on # of clients.", ex);
                return View("BaoLoi");
            }
        }

        public ActionResult DanhSachUser()
        {
            List<Admin> listUser = dbNganHang.Admins.ToList<Admin>();

            return View(listUser);
        }

        public ActionResult UpdateUser(int id, string email, string group, string status)
        {
            Admin user = (from row in dbNganHang.Admins where row.ID.Equals(id) select row).First<Admin>();
            return View(user);
        }

        public ActionResult PhanQuyen()
        {
            return View();
        }

        public ActionResult Details(int id)
        {
            try
            {
                Permission per = dbNganHang.Permissions.SingleOrDefault(m => m.ID == id);
                return View(per);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public ActionResult XuLyChonNhom(string group)
        {
            if (group == null)
            {
                return RedirectToAction("PhanQuyen");
            }
            if(!group.Equals("-1"))
            {
                int g = int.Parse(group);
                try
                {
                    List<Permission> lst = (from r in dbNganHang.Permissions where r.GroupID==g select r).ToList<Permission>();
                    return View(lst);
                }
                catch
                {
                    return RedirectToAction("PhanQuyen");        
                }
            }
            return RedirectToAction("PhanQuyen");
        }

        public ActionResult DanhSachQuyen(List<Permission> lst)
        {
            return View(lst);
        }

        public ActionResult Edit(int id)
        {
            try
            {
                Permission per = dbNganHang.Permissions.SingleOrDefault(m => m.ID == id);
                string g = "";
                if (per.GroupID == 1)
                    g = "Admin";
                if (per.GroupID == 2)
                    g = "Super Mod";
                if (per.GroupID == 3)
                    g = "Mod";
                List<string> lst = new List<string>();
                lst.Add(g);
                lst.Add("Admin");
                lst.Add("Super Mod");
                lst.Add("Mod");
                ViewData["groups"] = new SelectList(lst);
                return View(per);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public ActionResult XuLyEdit(Permission per)
        {
            Permission p = dbNganHang.Permissions.SingleOrDefault(m => m.ID == per.ID);
            p.Insert = per.Insert;
            p.Update = per.Update;
            p.Delete = per.Delete;
            p.TableName = per.TableName;
            p.Status = per.Status;
            dbNganHang.SaveChanges();
            return RedirectToAction("CapNhatThanhCong");
        }
    }
}
