using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoiGioi_Money10
{
    public partial class GetData : System.Web.UI.Page
    {

        xnvaufit_MoiGioiEntities dbMoiGioi = new xnvaufit_MoiGioiEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            //CDonHang cDonHang = (CDonHang)Request.pa.QueryString["DonHang"];
            //CDonHang cDonHang = (CDonHang)Request.Params["DonHang"];
            //string MaSanPham = Request.QueryString["MaSanPham"];
            //Response.Write("MaSanPham="+MaSanPham);

            if (Request["cmdRegister"] != null)
            {
                if (true)
                {
                    TaiKhoan newUser = new TaiKhoan();
                    CaNhan newInfo = new CaNhan();

                    //Phát sinh mã cho  tài khoản
                    var maTk = from mtk in dbMoiGioi.TaiKhoans select mtk;
                    int j = maTk.Count() + 1;
                    if (j <= 9)
                    {
                        newUser.MaTaiKhoan = "TK00" + j.ToString();
                    }
                    else
                    {
                        if (j > 9 && j <= 99)
                        {
                            newUser.MaTaiKhoan = "TK0" + j.ToString();
                        }
                        else if (j > 99 && j <= 999)
                        {
                            newUser.MaTaiKhoan = "TK" + j.ToString();
                        }
                    }

                    newUser.Email = Request["email"];
                    newUser.MatKhau = Request["password"];
                    newUser.MatKhauGiaoDich = Request["password_payment"];
                    newUser.MaLoaiTaiKhoan = "LTK002";
                    newUser.TinhTrang = 0;
                    newUser.SoTaiKhoan = "67890";

                    dbMoiGioi.TaiKhoans.AddObject(newUser);
                    dbMoiGioi.SaveChanges();
                    
                    
                    //newInfo.CMNDHoChieu = Request["social_id"];
                    //newInfo.NgaySinh = DateTime.Parse(Request["date"]);
                    //newInfo.HoTen = Request["fullname"];
                    //newInfo.GioiTinh = Request["sex"];
                    //Request["addresss"];
                    //Request["city_id"];
                }
                else
                {
 
                }
            }
           
        }

        /// <summary>
        /// Thắng - Kiểm tra email tồn tại không?
        /// </summary>
        /// <returns></returns>
        private int KiemTraEmail(string email)
        {
            int flag = 1;
            try
            {
                TaiKhoan user = (from row in dbMoiGioi.TaiKhoans where row.Email.Equals(email) select row).First<TaiKhoan>();
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
    }
}