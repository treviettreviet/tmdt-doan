using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoiGioi_Money10
{
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
           float sodu= float.Parse(dangNhap());
           lblSoDu.Text = sodu.ToString();
           float tongtien = float.Parse(txtTongTien.Text.ToString());
           if (kiemTraThanhToan(tongtien, sodu) == 1)
           {
               lblThongBao.Text = "thanh toan thanh cong";
           }
           else lblThongBao.Text = "Ko du tien thanh toan";
        }
        public string dangNhap()
        {
            DataClasses1DataContext dt = new DataClasses1DataContext();
            var result = from tk in dt.TaiKhoans
                         where txtemail.Text.Equals(tk.Email) && txtpass.Text.Equals(tk.MatKhau)
                         select tk;
            string soDu="";
            foreach (TaiKhoan tk in result)
            {
                soDu = tk.SoDu.ToString();
            }
            return soDu;
        }
        public int kiemTraThanhToan(float tongtien, float sodu)
        {
            //tongtien = 10000;
            string tien=dangNhap();
            sodu = float.Parse(tien);
            if (sodu >= tongtien)
                return 1;
            else
                return 0;
        }
    }
}