using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Money10BankingAdmin.Models;

namespace Money10BankingAdmin.Controllers
{
    public class PublicController : Controller
    {
        //
        // GET: /Public/
        private DB_NganHangEntities dbNganHang = new DB_NganHangEntities();
        public ActionResult NapTien()
        {
            Admin ad= (Admin) Session["User"];
            if(ad.GroupID==1 || ad.GroupID==3)
            {
                return View();
            }
            else
                Response.Write("<script> alert ('Ban Khong The Truy Cap.Trang Nay Chi Danh Cho Admin Va Mod!');</script>");
                return View("Index");
            
        }
        public ActionResult QuanLyThe()
        {
            return View();
        }
        public ActionResult DangNhap()
        {
            return View();
        }


        private int UserValidation(string email, string password)
        {
            int check = -1; // Đăng nhập thất bại: Sai Username và Password
            try
            {
                Admin user = (from row in dbNganHang.Admins where row.Email.Equals(email) select row).First<Admin>();
                if (user.Password == GetMD5Hash(password))
                {
                    check = 0;  //Đăng nhập thành công
                    Session["User"] = user; // Set sesion cho user vừa đăng nhập thành công

                    return check;
                }

                if (!user.Password.Equals(GetMD5Hash(password)))
                {
                    check = -2; // Email không tồn tại
                    return check;
                }
            }
            catch
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
                    //Admin ad= (Admin) Session["User"];
                    //if ( ad.GroupID==1)
                    //{                
                    //    return View("NapTien");
                    //}
                    //if (ad.GroupID == 2)
                    //{
                    //    return View("TaoUser");
                    //}
                    return View("NapTien");
                }
                else
                {
                    string div = "error-box";
                    string error = "";
                    if (user_validation == -1)
                    {
                        error += "Email không tồn tại";
                    }
                    if (user_validation == -2)
                    {
                        error += "Sai mật khẩu";
                    }
                    ViewData["div"] = div;  // chuyển sang view đăng nhập để hiển thị
                    ViewData["error"] = error;  // chuyển sang view đăng nhập để hiển thị
                    return View("DangNhap");
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        public static string TaoMaTangTuDong(string lastID, string prefixID)
        {
            if (lastID == "")
            {
                return prefixID + "0001";  // fix
            }
            int nextID = int.Parse(lastID.Remove(0, prefixID.Length)) + 1;
            int lengthNumerID = lastID.Length - prefixID.Length;
            string zeroNumber = "";
            for (int i = 1; i <= lengthNumerID; i++)
            {
                if (nextID < Math.Pow(10, i))
                {
                    for (int j = 1; j <= lengthNumerID - i; i++)
                    {
                        zeroNumber += "0";
                    }
                    return prefixID + zeroNumber + nextID.ToString();
                }
            }
            return prefixID + nextID;

        }
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
    }
}
