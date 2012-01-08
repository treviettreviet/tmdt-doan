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
            int check = -1; // Đăng nhập thất bại: Sai Username và Password
            try
            {
                TaiKhoan user = (from row in dbNganHangOnline.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();
                if (user.MatKhau == password)
                {
                    check = 0;  //Đăng nhập thành công
                    return check;
                }
               
                if (!user.MatKhau.Equals(password))
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
        public ActionResult XuLyDangNhap(string email, string password)
        {
            try
            {
                
                int user_validation = UserValidation(email, password);
                if (user_validation == 0)
                    return View("LichSuGiaoDich");
                else
                {
                    string div = "error-box";
                    //string begin_div = "<div class='error-box'>";
                    //string end_div = "</div>";
                    //<div class="error-box">Thông tin đăng nhập không chính xác</div>
                    string error = "";
                    if(user_validation==-1)
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


        public ActionResult LichSuGiaoDich()
        {
            return View();
        }
    }
}
