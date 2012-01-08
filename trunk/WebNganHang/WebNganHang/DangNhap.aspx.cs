using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNganHang
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
        protected void cmdLogin_Click(object sender, EventArgs e)
        {
            string matkhau = GetMD5Hash(txtPassword.Text).Trim();
            DBNganHangDataContext db = new DBNganHangDataContext();
            var result = from tk in db.TaiKhoans
                         where txtUser.Text.Equals(tk.Email) && matkhau.Equals(tk.MatKhau)
                         select tk;

            if (result.Count() > 0)
            {
                Session["userLogin"] = result;
                Response.Write("<script> alert ('Dang nhap thanh cong!');</script>");
                Response.Redirect("NapTien.aspx");

            }
            else
            {
                Response.Write("<script> alert ('Dang nhap that bai!');</script>");
            }
        }
    }
}