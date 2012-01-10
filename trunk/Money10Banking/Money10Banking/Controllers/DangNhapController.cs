using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Money10Banking.Models;
using System.Security.Cryptography;

namespace Money10Banking.Controllers
{
    public class DangNhapController : Controller
    {
        //
        // GET: /DangNhap/
        private NganHangEntities dbNganHangOnline = new NganHangEntities();

        private Random r = new Random(); // Để phát sinh số ngẫu nhiên

        public ActionResult DangNhap()
        {
            return View();
        }
        /// <summary>
        /// Thắng - Ma hoa MD5
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
        /// Lên - Kiểm tra đăng nhập, trả về nhiều kết quả
        /// </summary>
        /// <param name="email"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        private int UserValidation(string email, string password)
        {
            int check = -1; // Đăng nhập thất bại: Sai Username và Password
            try
            {
                TaiKhoan user = (from row in dbNganHangOnline.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();
                if (user.MatKhau == GetMD5Hash(password))
                {
                    check = 0;  //Đăng nhập thành công
                    return check;
                }

                if (!user.MatKhau.Equals(GetMD5Hash(password)))
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
        /// Lên - Xử lý đăng nhập từ trang chủ
        /// </summary>
        /// <param name="UserName"></param>
        /// <param name="Password"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult XuLyDangNhap(string email, string password)
        {
            try
            {
                int user_validation = UserValidation(email, password);
                if (user_validation == 0)
                {
                    //Session sesKhachHang = 
                    return View("LichSuGiaoDich");
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
        /// <summary>
        /// Lên - Gọi View LichSuGiaoDich
        /// </summary>
        /// <returns></returns>
        public ActionResult LichSuGiaoDich()
        {
            return View();
        }
    }
}
