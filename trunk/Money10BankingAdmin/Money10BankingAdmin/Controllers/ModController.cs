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
               
                decimal sodu;
                if (amount == "" || amount == null)
                {
                    amount = "0";
                }
                decimal naptien = decimal.Parse(amount);
                DB_NganHangEntities db = new DB_NganHangEntities();
                List<The> tienthe = (from th in db.Thes select th).ToList();
                for (int i=0 ; i < tienthe.Count() ; i++)
                { 

               
                    if (tienthe[i].SoThe == SoTaiKhoan)
                    {
                        sodu = tienthe[i].SoDu.Value;
                        tienthe[i].SoDu = naptien + sodu;
                        db.SaveChanges();
                        Response.Write("<script> alert ('Nạp tiền thành công!');</script>");
                        return RedirectToAction("NapTien");
                    }
                    else
                    {
                        string div = "error-box";
                        string error = "";
                       
                        error = "Số tài khoản không đúng";
                        
                        ViewData["div"] = div;
                        ViewData["error"] = error;
                        return View("../Public/NapTien");
                    }
                }
                return View("../Public/NapTien");
            }
            catch (Exception)
            {
                throw;
            }
        }

        //public ActionResult DanhSachThe()
        //{
        //    List<The> listcard = dbNganHang.Thes.ToList<The>();
        //    return View(listcard);
        //}

    }
}
