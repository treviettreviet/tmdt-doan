using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace WebNganHang
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Random r = new Random();
        public int createKeyCode()
        {
            //int seed = int.Parse(txt.Text);
           // Random r = new Random();
            return r.Next(0, 1000000) + Convert.ToInt32(DateTime.Now.Day.ToString()) + Convert.ToInt32(DateTime.Now.Month.ToString()) + Convert.ToInt32(DateTime.Now.Year.ToString()) + Convert.ToInt32(DateTime.Now.Minute.ToString()) + Convert.ToInt32(DateTime.Now.Second.ToString()) + Convert.ToInt32(DateTime.Now.Millisecond.ToString());
        }
        public static string PassWord(int length)
        {
            byte[] randomArray = new byte[length];
            string randomString;
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            rng.GetBytes(randomArray);
            randomString = Convert.ToBase64String(randomArray);
            return randomString;
        }
        public string TaoSoTaiKhoan()
        {
            int stk = createKeyCode();
            string tk="";
            if (stk.ToString().Count() == 6)
            {
                tk=stk.ToString();
            }
            if(stk.ToString().Count()==5){
                 tk = "0" + stk.ToString();
            }
            else
                if (stk.ToString().Count() == 4)
                {
                     tk = "00" + stk.ToString();
                }
            else
                    if (stk.ToString().Count() == 3)
                    {
                         tk = "000" + stk.ToString();
                    }
            else
                        if (stk.ToString().Count() == 2)
                        {
                            tk = "0000" + stk.ToString();
                        }
            else
                            if (stk.ToString().Count() == 1 && stk!=0)
                            {
                                 tk = "000000" + stk.ToString();
                            }
            else
                                if (stk==0)
                                {
                                    createKeyCode();
                                }
            return tk;
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
        public static string GetSalt(int length)
        {
            byte[] randomArray = new byte[length];
            string randomString;
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            rng.GetBytes(randomArray);
            randomString = Convert.ToBase64String(randomArray);
            return randomString;
        }
        //public string MaHoaMatKhau(string password)
        //{
        //    UnicodeEncoding encoding = new UnicodeEncoding();
        //    Byte[] hashBytes = encoding.GetBytes(password);
        //    // Compute the SHA-1 hash
        //    SHA1CryptoServiceProvider sha1 = new SHA1CryptoServiceProvider();
        //    Byte[] cryptPassword = sha1.ComputeHash(hashBytes);
        //    return BitConverter.ToString(cryptPassword);
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            DBNganHangDataContext db1 = new DBNganHangDataContext();

            DiaChi dc = new DiaChi();
            var maDC = from mdc in db1.DiaChis select mdc;
            int i = maDC.Count() + 1;
            if (i <= 9)
            {
                dc.MaDiaChi = "DC00" + i.ToString();
            }
            else
                if (i > 9 && i <= 99)
                {
                    dc.MaDiaChi = "DC0" + i.ToString();
                }
                else
                    if (i > 99 && i <= 999)
                    {
                        dc.MaDiaChi = "DC" + i.ToString();
                    }
                  

            dc.SoNha = int.Parse(txtSoNha.Text);
            dc.Duong = txtDuong.Text.ToString();
            dc.PhuongXa = txtPhuongXa.Text.ToString();
            dc.QuanHuyen = txtQuanHuyen.Text.ToString();
            dc.TinhThanh = txtThanhPho.Text.ToString();
            db1.DiaChis.InsertOnSubmit(dc);

            TaiKhoan tk = new TaiKhoan();
            var maTk = from mtk in db1.TaiKhoans select mtk;
            int j = maTk.Count() + 1;
            if (j <= 9)
            {
                tk.MaTaiKhoan = "TK00" + j.ToString();
            }
            else
                if (j > 9 && j <= 99)
                {
                    tk.MaTaiKhoan = "TK0" + j.ToString();
                }
                else
                    if (j > 99 && j <= 999)
                    {
                        tk.MaTaiKhoan = "TK" + j.ToString();
                    }
                    
            // tk.MaTaiKhoan= "TK003";
            // tk.SoTaiKhoan=123456;
            tk.MaLoaiTaiKhoan = "LTK001";
            
            tk.SoTaiKhoan = int.Parse(TaoSoTaiKhoan());
            tk.MatKhauGiaoDich = PassWord(6);
            //string email = txtUserName.Text.ToString();
            //var tkmail = db1.TaiKhoans.Single(p=>p.Email==email);
            //if(tkmail.Email.Count()>0)
            //{
            //    Response.Redirect("DangKy.aspx");
            //    lbInform.Text = "email nay da dc dung";
            //    lbInform.Enabled = true;

            //}
            // tk.Email = txtUserName.Text.ToString();
            int flag = 0;
            var mail = from mtk in db1.TaiKhoans where txtUserName.Text.Equals(mtk.Email) select mtk.Email;
            if (mail.Count() > 0)
            {

                lbInform.Visible = true;
                lblemail.Text = "email này đã được dùng";
                lbInform.Text = "Đăng ký Không Hợp Lệ ";
                flag = 1;

            }
            else
            {
                lblemail.Text = "";
                lbInform.Text = "";
                lbInform.Visible = false;
                tk.Email = txtUserName.Text.ToString();
            }

            //string mk = txtPassword.Text.ToString();
            //tk.MatKhau = MaHoaMatKhau(txtPassword.Text).Trim();
            tk.MatKhau = GetMD5Hash(txtPassword.Text).Trim();
            // tk.MatKhau = "12345";
            // tk.MatKhauGiaoDich="123456";
            db1.TaiKhoans.InsertOnSubmit(tk);
            KhachHang kh = new KhachHang();
            var maKh = from mkh in db1.KhachHangs select mkh.MaKhachHang;
            int k = maKh.Count() + 1;
            if (k <= 9)
            {
                kh.MaKhachHang = "KH00" + k.ToString();
            }
            else
                if (k > 9 && k <= 99)
                {
                    kh.MaKhachHang = "KH0" + k.ToString();
                }
                else
                    if (k > 99 && k <= 999)
                    {
                        kh.MaKhachHang = "KH" + k.ToString();
                    }
                   
            //kh.MaKhachHang = "KH003";
            kh.MaTaiKhoan = tk.MaTaiKhoan;

            kh.HoTen = txtHoTen.Text.ToString();
            kh.NgaySinh = DateTime.Parse(txtNgaySinh.Text.ToString());
            if (rdNam.Checked == true)
            {
                kh.GioiTinh = "Nam";
            }
            if (rdNu.Checked == true)
            {
                kh.GioiTinh = "Nu";
            }
            if (rdNam.Checked == false && rdNu.Checked == false)
            {
                kh.GioiTinh = "PD";
            }
            kh.CMNDHoChieu = int.Parse(txtCMND.Text.ToString());
            //kh.CMNDHoChieu = 123456789;
            db1.KhachHangs.InsertOnSubmit(kh);

            if (flag == 0)
            {
                db1.SubmitChanges();
                lbInform.Visible = true;
                // Response.Redirect("DangNhap.aspx");
            }
        
            
        }

      
    }
}