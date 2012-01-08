using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Money10Banking.Models;

namespace Money10Banking.Controllers
{
    public class PublicController : Controller
    {
        //
        // GET: /Public/

        // Khai báo đối tượng kết nối cơ sở dữ liệu
        private NganHangEntities dbNganHangOnline = new NganHangEntities();

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult TrangChu()
        {
            return View();
        }
        public ActionResult DangKy()
        {
            return View();
        }
        
        public ActionResult DangNhap()
        {
            return View();
        }


        /// <summary>
        /// Lên - Kiểm tra đăng nhập, trả về nhiều kết quả
        /// </summary>
        /// <param name="email"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        private int UserValidation(string email, string password)
        {
            int check = -3; // Đăng nhập thất bại: Sai Username và Password
            try
            {
                TaiKhoan user = (from row in dbNganHangOnline.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();
                if (user.Email == email && user.MatKhau == password)
                {
                    check = 0;  //Đăng nhập thành công
                    return check;
                }
                else
                {
                    if (!user.Email.Equals(email) && !user.MatKhau.Equals(password))
                        return check;  // Sai Email và mật khẩu
                    else
                    {
                        if (!user.Email.Equals(email))
                        {
                            check = -1; // Email không tồn tại
                            return check;
                        }
                        else
                        {
                            check = -2; // Sai Password
                            return check;  
                        }
                    }
                }
            }
            catch
            {
                return check; 
            }

        }

        /// <summary>
        /// Lên - Xử lý đăng nhập từ trang chủ
        /// </summary>
        /// <param name="UserName"></param>
        /// <param name="Password"></param>
        /// <returns></returns>
        public ActionResult XuLyDangNhap(string UserName, string Password)
        {
            int user_validation = UserValidation(UserName, Password);
            if (user_validation == 0)
                return View("DangKy");
            return View("BaoLoi");
        }



        public ActionResult ChuyenTien()
        {
            return View();
        }
        public ActionResult RutTien()
        {
            return View();
        }
        public ActionResult CapNhatTaiKhoan() //Khi đăng nhập thành công
        {
            return View();
        }
        public ActionResult NapTien()
        {
            return View();
        }



    }
}
