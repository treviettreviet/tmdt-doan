using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNganHang
{
    public partial class NapTien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            DBNganHangDataContext db= new DBNganHangDataContext();
            if (Session["userLogin"]!=null)
            {
                string sid = Session["userLogin"].ToString();
               
                decimal naptien = decimal.Parse(txtSoTien.Text.ToString());
                string sothe = txtTaiKhoan.Text.ToString();
                var tien = from tm in db.Thes where sothe.Equals(tm.SoThe) select tm;


                if (tien.Count() > 0)
                {
                    decimal sodu;
                    //tongtien = naptien + 11111;
                    The tienthe = db.Thes.Single(p => p.SoThe == sothe);
                    sodu = tienthe.SoDu.Value;
                    tienthe.SoDu = naptien + sodu;
                    db.SubmitChanges();
                    Response.Write("<script> alert ('Nap Tien thanh cong!');</script>");
                }
                else
                {
                    Response.Write("<script> alert ('That Bai!');</script>");
                }
            }
            else {
                Response.Redirect("DangNhap.aspx");
            }
             
        }

      
    }
}