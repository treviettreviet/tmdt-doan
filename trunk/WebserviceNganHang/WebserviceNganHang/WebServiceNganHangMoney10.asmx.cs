using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebserviceNganHang
{
    /// <summary>
    /// Summary description for WebServiceNganHangMoney10
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebServiceNganHangMoney10 : System.Web.Services.WebService
    {

        /// <summary>
        /// MD5 - Dùng để tạo ra chuỗi SID bằng thuật toán MD5
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
        /// Lên - Đăng nhập người dùng
        /// </summary>
        /// <param name="email"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public bool LogonUser(string email, string password)
        {
            dbNganHangOnlineDataContext dbNganHangOnline = new dbNganHangOnlineDataContext();
            TaiKhoan TK = new TaiKhoan();
            try
            {
                string md5Pass = GetMD5Hash(password);
                TK = dbNganHangOnline.TaiKhoans.Single(m => m.Email == email && m.MatKhau == md5Pass);
                return true;
            }
            catch
            {
                return false;
            }
        }

        
        /// <summary>
        /// Lên - Chứng thực tài khoản trước khi thực hiện các thao tác: Rút tiền, nạp tiền, chuyển khoản
        /// </summary>
        /// <param name="email"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        /// 

        [WebMethod]
        public string AuthenticateForTransaction(string email, string password)
        {
            string sID = "";
            try
            {
                bool flag = LogonUser(email, password);
                if (flag == true)
                {
                    string time = DateTime.Now.ToString();
                    string input = email + time;
                    sID = GetMD5Hash(input);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            return sID; // Trả về chuỗi sID khi đăng nhập thành công
        }

        [WebMethod]
        public string AuthenticateForCard(string email, string password)
        {
            string sID = "";
            try
            {
                bool flag = LogonUser(email, password);
                if (flag == true)
                {
                    string time = DateTime.Now.ToString();
                    string input = email + time;
                    sID = GetMD5Hash(input);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            return sID; // Trả về chuỗi sID khi đăng nhập thành công
        }

        [WebMethod]
        public int TransferMoneySameBank(string SID, string CardNoSend, string CardNoReceive, decimal Amount)
        {
            // B1: Lấy thông tin thẻ gửi
            // B2: Kiểm tra thông tin thẻ gửi
            // B3: Lấy thông tin thẻ nhận
            // B4: Kiểm tra thông tin thẻ nhận
            // B5: Kiểm tra số dư của thẻ gửi có đủ để giao dịch không?
            // B6: Cộng tiền cho thẻ nhân
            // B7: Trừ tiền của thẻ gửi

            // Danh sách các kết quả giao dịch trả về
                // 0: Giao dịch thành công
                // -1: Thẻ gửi không tồn tại trong hệ thống ngân hàng OCBCBank
                // -2: Thẻ nhận không tồn tại trong hệ thống ngân hàng OCBCBank   
                // -3: Số dư tài khoản gửi không đủ để giao dịch
                // -4: Không lưu được thông tin thay đổi xuống CSDL   
            
            System.Net.ServicePointManager.Expect100Continue = false;
            dbNganHangOnlineDataContext dbNganHang = new dbNganHangOnlineDataContext();

            // B1: Lấy thông tin thẻ gửi
            The TheGui = new The();
            try
            {
                TheGui = dbNganHang.Thes.Single(m => m.SoThe == CardNoSend);
            }
            catch
            {
                return -1;   // Thẻ gửi không tồn tại trong hệ thống ngân hàng OCBCBank
            }

            // B3: Lấy thông tin thẻ nhận
            The TheNhan = new The();
            try
            {
                TheNhan = dbNganHang.Thes.Single(m => m.SoThe == CardNoReceive);
            }
            catch
            {
                return -2;  // Thẻ nhận không tồn tại trong hệ thống ngân hàng OCBCBank   
            }

            // B5: Kiểm tra số dư của thẻ gửi có đủ để giao dịch không?
            if (TheGui.SoDu < Amount)
            {
                return -3;  // Số dư tài khoản gửi không đủ để giao dịch
            }

            // B6: Cộng tiền cho thẻ nhân
            // B7: Trừ tiền của thẻ gửi
            try
            {
                TheGui.SoDu = TheGui.SoDu - Amount;
                TheNhan.SoDu = TheNhan.SoDu + Amount;
                dbNganHang.SubmitChanges();
                return 0;   // Giao dịch thành công
            }
            catch
            {
                return -4; // Không lưu được thông tin thay đổi xuống CSDL   
            }
        }

        /// <summary>
        /// Lên - Hàm lấy số dư của thẻ dựa vào mã thẻ
        /// </summary>
        /// <param name="SoThe"></param>
        /// <returns></returns>
        private decimal getBalanceAccount(string SoThe)
        {
            decimal Balance = 0;
            dbNganHangOnlineDataContext dbNganHang = new dbNganHangOnlineDataContext();
            try 
	        {	        
		        var Card = (from row in dbNganHang.Thes where row.SoThe.Equals(SoThe) select row).First();
                if(Card==null)
                {
                    return -1;  // Thẻ không tồn tại trong ngân hàng
                }
                else
                {
                    Balance = (decimal)Card.SoDu;
                    return Balance;
                }
	        }
	        catch (Exception ex)
	        {
		        throw new Exception(ex.ToString());
                //return -2;  // Lỗi xảy ra, không xác định rõ
	        }
            
        }

        [WebMethod]
        public int TransferMoneyDiffBank(string sID, string CardNoSend, string CardNoReceive, decimal Amount)
        {
            // B1: Lấy thông tin thẻ nhận
            // B2: Lấy tên của ngân hàng chứa thẻ gửi
            // B3: Lấy thông tin Ngân Hàng Liên Kết dựa vào tên ngân hàng chứa thử gửi ở B1
            // B4: Lấy Thông tin tài khoản của ngân hàng liên kết dựa vào NganHangLienKet.TaiKhoanNganHangLienKet
            // B5: Lấy thông tin thẻ của ngân hàng liên kết.
            // B6: Cộng tiền gửi cho thẻ nhận
            // B7: Trừ tiền của thẻ ngân hàng liên kết = Tiền gửi + 10% phí
            // B8: Trả kết quả trả về

            // Danh sách các kết quả giao dịch trả về
                // 0: Giao dịch thành công
                // -1: Không lấy được thông tin Thẻ Nhận | hoặc thông tin thẻ nhận không tồn tại trong hệ thống OCBCBank   
                // -2: Không gọi được hàm GetBankCommercialNameOfCreditCard Webservice của Thầy Minh
                // -3: Tên ngân hàng liên kết không tồn tại trong hệ thống của OCBCBank    
                // -4: Không lấy được tài khoản ngân hàng liên kết trong hệ thống OCBCBank
                // -5: Không lấy được thông tin Thẻ của ngân hàng liên kết
                // -6: Số dư trong tài khoản của ngân hàng liên kết không đủ để giao dịch cho thẻ nhận
                // -7: Không lưu được xuống csdl cho các tài khoản.        

            System.Net.ServicePointManager.Expect100Continue = false;
            dbNganHangOnlineDataContext dbNganHang = new dbNganHangOnlineDataContext();

            // B1: Lấy thông tin Thẻ Nhận thông qua Số Thẻ Nhận
            The TheNhan = new The();
            try
            {
                TheNhan = dbNganHang.Thes.Single(m=>m.SoThe == CardNoReceive);
            }
            catch
            {
                return -1;  // Không lấy được thông tin Thẻ Nhận | hoặc thông tin thẻ nhận không tồn tại trong hệ thống OCBCBank   
            }

            // B2: Lấy BankID của ngân hàng gửi
            string BankID = "";
            try
            {
                string UrlService = "http://www.is.fit.hcmus.edu.vn/EMV_Service/EMVServices.asmx";
                string ServiceName = "EMVServices";
                string MethodName = "GetBankCommercialNameOfCreditCard";
                object[] arrOb = new object[1];
                arrOb[0] = CardNoSend;
                object obResult = WSProxy.CallWebService(UrlService, ServiceName, MethodName, arrOb);
                BankID = obResult.ToString();
            }
            catch
            {
                return -2; // Không gọi được hàm GetBankCommercialNameOfCreditCard Webservice của Thầy Minh
            }

            // B3: Lấy thông tin Ngân Hàng Liên Kết dựa vào tên ngân hàng chứa thử gửi ở B1
            NganHangLienKet NHLK = new NganHangLienKet();
            try
            {
                NHLK = dbNganHang.NganHangLienKets.Single(m => m.TenNgangHangLienKet == BankID);
            }
            catch
            {
                return -3;   // Tên ngân hàng liên kết không tồn tại trong hệ thống của OCBCBank    
            }

            // B4: Lấy Thông tin tài khoản của ngân hàng liên kết dựa vào NganHangLienKet.TaiKhoanNganHangLienKet
            TaiKhoan TaiKhoanNganHangLienKet = new TaiKhoan();  
            try
            {
                TaiKhoanNganHangLienKet = dbNganHang.TaiKhoans.Single(m => m.Email == NHLK.TaiKhoanNgangHangLienKet);
            }
            catch
            {
                return -4; // Không lấy được tài khoản ngân hàng liên kết trong hệ thống OCBCBank
            }
            
            // B5: Lấy thông tin thẻ nhận của ngân hàng liên kết thông qua thông tin tài khoản ngân hàng liên kết ở trên
            The TheNganHangLienKet = new The();
            try
            {
                TheNganHangLienKet = dbNganHang.Thes.Single(m => m.TaiKhoan.Email == TaiKhoanNganHangLienKet.Email);
            }
            catch
            {
                return -5; // Không lấy được thông tin Thẻ của ngân hàng liên kết
            }

            // B6: Cộng tiền gửi cho thẻ nhận
            // B7: Trừ tiền của thẻ ngân hàng liên kết = Tiền gửi + 10% phí
            // B8: Trả kết quả trả về
            decimal PhiGiaoDich = Amount * (10m/100m);
            decimal TotalFee = Amount + PhiGiaoDich;
            if (TheNganHangLienKet.SoDu < TotalFee)
            {
                return -6;  // Số dư trong tài khoản của ngân hàng liên kết không đủ để giao dịch cho thẻ nhận
            }
            try
            {
                TheNhan.SoDu += Amount;
                TheNganHangLienKet.SoDu = TheNganHangLienKet.SoDu - Amount - PhiGiaoDich;
                dbNganHang.SubmitChanges();
                return 0;
            }
            catch
            {
                return -7; // Không lưu được xuống csdl cho các tài khoản.        
            }
        }

    }
}
