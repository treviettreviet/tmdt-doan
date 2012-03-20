using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Money10BrokerAdmin.Models;

namespace Money10BrokerAdmin.Controllers
{
    public class PublicController : Controller
    {
        //
        // GET: /Public/

        MoiGioiAdminEntities dbMoiGioiAdmin = new MoiGioiAdminEntities();

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult QuanLyThe()
        {
            return View();
        }
        public ActionResult DangNhap()
        {
            return View();
        }
        public ActionResult NapTien()
        {
            return View();
        }

        private int UserValidation(string email, string password)
        {
            int check = -1; // Đăng nhập thất bại: Sai Username và Password
            try
            {
                //Admin user = (from row in dbMoiGioiAdmin.Admins where row.Email.Equals(email) select row).First<Admin>();
                Admin user = dbMoiGioiAdmin.Admins.Single(m => m.Email == email);
                if (user.Password == HashMD5.GetMD5Hash(password))
                {
                    check = 0;  //Đăng nhập thành công
                    Session["User"] = user; // Set sesion cho user vừa đăng nhập thành công
                    return check;
                }

                if (!user.Password.Equals(HashMD5.GetMD5Hash(password)))
                {
                    check = -2; // Sai password
                    return check;
                }
            }
            catch (Exception ex)
            {
                return check;
            }
            return check;
        }

        public ActionResult XuLyDangNhap(string email, string password)
        {
            try
            {
                int user_validation = UserValidation(email, password);
                if (user_validation == 0)
                {
                    return RedirectToAction("../Admin/Index");
                }
                else
                {
                    string div = "notification attention png_bg";
                    string error = "";
                    if (user_validation == -1)
                    {
                        error += "Email không tồn tại trong hệ thống.";
                    }
                    if (user_validation == -2)
                    {
                        error += "Sai mật khẩu. Vui lòng đăng nhập lại!";
                    }
                    ViewData["div"] = div;
                    ViewData["error"] = error;
                    return RedirectToAction("DangNhap", new {div, error});
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
