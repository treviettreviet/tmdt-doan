﻿using System;
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
       
        public ActionResult QuanLyThe()
        {
            return View();
        }
        public ActionResult DangNhap()
        {
            return View();
        }
        public ActionResult CapNhatTaiKhoan()
        {
            return View();
        }
        public ActionResult XuLyCapNhatUser(string email, string name)
        {
            try
            {
                DB_NganHangEntities db = new DB_NganHangEntities();
                Admin ad = (Admin)Session["User"];
                Admin updateAD = db.Admins.SingleOrDefault(p=>p.Email== ad.Email);
                updateAD.Email = email;
                updateAD.Name = name;
                db.SaveChanges();
                Response.Write("<script> alert ('Bạn cập nhật thành công!');</script>");
                return RedirectToAction("../Admin/Index");
                
            }
            catch (Exception)
            {
                
                throw;
            }
            
        }

        public ActionResult DoiMatKhau()
        {
            return View();
        }

        public ActionResult XuLyDoiPass(string pass, string passnew, string confirmpass)
        {
            try
            {
                DB_NganHangEntities db = new DB_NganHangEntities();
                Admin ad = (Admin)Session["User"];
                Admin updateAD = db.Admins.SingleOrDefault(p => p.Email == ad.Email);
                if (passnew == confirmpass)
                {
                    if (ad.Password == GetMD5Hash(pass))
                    {
                        updateAD.Password = GetMD5Hash(passnew);

                        db.SaveChanges();
                        Response.Write("<script> alert ('Bạn cập nhật MK thành công!');</script>");
                        return RedirectToAction("../Admin/Index");
                    }
                    else
                    {
                        string div = "error-box";
                        string error = "";

                        error += "MK cũ không đúng.";

                        ViewData["div"] = div;
                        ViewData["error"] = error;
                        return View("DoiMatKhau");
                    }
                }
                else
                {
                    string div = "error-box";
                    string error = "";
                   
                    error += "MK mới không khớp";
                   
                    ViewData["div"] = div;
                    ViewData["error"] = error;
                    return View("DoiMatKhau");
                }
            }
            catch (Exception)
            {

                throw;
            }

        }
        public ActionResult XuLyThoat()
        {
            Session.Remove("User");
            return RedirectToAction("DangNhap");
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="email"></param>
        /// <param name="password"></param>
        /// <returns></returns>
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

        /// <summary>
        /// Dang NHap Admin
        /// </summary>
        /// <param name="email"></param>
        /// <param name="password"></param>
        /// <returns></returns>
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
                    return RedirectToAction("../Admin/Index");
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
                    ViewData["div"] = div; 
                    ViewData["error"] = error;  
                    return View("DangNhap");
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        /// <summary>
        /// Ma tang tu động
        /// </summary>
        /// <param name="lastID"></param>
        /// <param name="prefixID"></param>
        /// <returns></returns>
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