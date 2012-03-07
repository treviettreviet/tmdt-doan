using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Money10BankingAdmin.Models;

namespace Money10BankingAdmin.Controllers
{
    public class ModController : Controller
    {
        //
        // GET: /Mod/
        private DB_NganHangEntities dbNganHang = new DB_NganHangEntities();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult NapTien()
        {
            Admin ad = (Admin)Session["User"];
            if (ad.GroupID == 1 || ad.GroupID == 3)
            {
                return View("../Public/NapTien");
            }
            else
            {
                string div = "error-box";
                string error = "Ban Khong The Truy Cap.Trang Nay Chi Danh Cho Admin Va Mod!";

                error += "";
                ViewData["div"] = div;
                ViewData["error"] = error;
                //Response.Write("<script> alert ('Ban Khong The Truy Cap.Trang Nay Chi Danh Cho Admin Va Mod!');</script>");
                return View("../Admin/Index");
            }

        }

        public ActionResult XuLyNapTien(string amount, string SoTaiKhoan)
        {
            try
            {
                
                    if (amount == "" || amount== null)
                    {
                        amount = "0";
                   
                    }
                    decimal naptien = decimal.Parse(amount);
                    DB_NganHangEntities db = new DB_NganHangEntities();
                    The tienthe = db.Thes.SingleOrDefault(m => m.SoThe == SoTaiKhoan);
                    decimal sodu;
                    string div = "error-box";
                    string error = "";
                    if (tienthe.SoThe != null)
                    {

                        //if (tienthe.MaTaiKhoan == matk)
                        //{
                            //Session["SoThe"] = tienthe.SoThe;
                            sodu = tienthe.SoDu.Value;
                            tienthe.SoDu = naptien + sodu;
                        
                            db.SaveChanges();
                           
                            Response.Write("<script> alert ('Nạp tiền thành công!');</script>");
                         
                            return View("../Public/NapTien");
                
                    }
                    else
                    {
                         error += "Số tài khoản không đúng";
                        ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                        ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                        return View("../Public/NapTien");
                    }

                    
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
