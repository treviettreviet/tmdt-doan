using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoiGioi_Money10
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMaSanPham.Text = Request.QueryString["MaSanPham"];
            lblSoLuong.Text = Request.QueryString["SoLuong"];
            lblTongTien.Text = Request.QueryString["TongTien"];
            lblTenNguoiNhan.Text = Request.QueryString["TenNguoiNhan"];
            lblEmail.Text = Request.QueryString["Email"];
            lblSoDienThoai.Text = Request.QueryString["DienThoai"];
            lblDiaChi.Text = Request.QueryString["DiaChi"];
            UserValidation("lengoctin@gmail.com", "money10");
        }

        dbMoiGioiEntities dbMoiGioi = new dbMoiGioiEntities();


        private TaiKhoan Login(string email, string password, decimal amount)
        {
            int state = UserValidation(email, password);
            TaiKhoan user = null;

            if (state == 0)
            {
                user = (from row in dbMoiGioi.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();

                if (CheckAccount(amount, (decimal)user.SoDu) == 1)
                    throw new Exception("Số tiền trong tài khoản không đủ thực hiện giao dịch !");
            }
            else if (state == 1)
            {
                throw new Exception("Sai password !");
            }
            else
            {
                throw new Exception("E-mail chưa đăng ký !");
            }
            
            return user;
        }

        private int CheckAccount(decimal amount, decimal balance)
        {
            if (amount > balance)
                return -1;

            return 0;
        }

        /// <summary>
        /// Xác nhận tài khoản
        /// </summary>
        /// <param name="email"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        private int UserValidation(string email, string password)
        {
            try
            {
                TaiKhoan user = (from row in dbMoiGioi.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();

                if (user.MatKhau == password)
                    return 0;//Đăng nhập thành công
                else
                    return 1;//Đăng nhập không thành công, sai password
            }
            catch
            {
                return -1; //Email chưa đăng ký
            }
                
        }
    }
}