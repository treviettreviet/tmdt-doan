using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WSWorkFlow
{
    /// <summary>
    /// Summary description for wsTransfer
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class wsTransfer : System.Web.Services.WebService
    {
        private dbNganHangDataContext dbNganHang = new dbNganHangDataContext();
        
        // Gọi WS của Thầy Minh
        string URLWebservice = "http://www.is.fit.hcmus.edu.vn/EMV_Service/EMVServices.asmx";
        string ServiceName = "EMVServices";
        /// <summary>
        /// Chuyển khoảng giữa các tài khoảng cùng ngân hàng
        /// </summary>
        /// <param name="sid">SID của ngân hàng cấp cho môi giới</param>
        /// <param name="ccsend">Mã số thẻ gửi</param>
        /// <param name="ccrecive">Mã số thẻ nhận</param>
        /// <param name="amount">Số tiền cần chuyển</param>
        /// <param name="ccreceivesecurenum">Mã Secure Number của thẻ gửi</param>
        /// <returns>trả về 3 giá trị 0 : giao dịch thành công; 1 : giao dịch thất bại; 2: các lỗi khác</returns>
        [WebMethod]
        public int TransferMoneySameBank(string sid, string ccsend, string creceive, decimal amount, string ccsendcurenum, string ccreceivesecurenum)
        {
            //decimal dSoDu = (decimal)amount;
            
            decimal dSoDu = amount;

            string MethodName = "Authenticate";

            string bankSID = WSProxy.CallWebService(URLWebservice, ServiceName, MethodName, new object[] { "OCBCBank", "X2ugS2E37S" }).ToString();
            sid = bankSID;
            
            if(sid == bankSID)
            {
                //Lấy dữ liệu thẻ có trong ngân hàng

                //Thẻ gửi
                var rowCard = (from row in dbNganHang.Thes where row.MaSoThe.Equals(ccsend) select row).First();
                
                The sendCard = rowCard;
                //Kiểm tra có thẻ trong ngân hàng không
                if (sendCard == null)
                    return 1;

                //Thẻ nhận
                rowCard = (from row in dbNganHang.Thes where row.MaSoThe.Equals(ccsend) select row).First();
                The receiveCard = rowCard;


                //Kiểm tra thẻ gửi
                int ireceiveCardState = (int)WSProxy.CallWebService(URLWebservice, ServiceName, "CardValid1", new object[] { bankSID, receiveCard.MaSoThe, receiveCard.MaLoaiThe, ccreceivesecurenum, receiveCard.KhachHang.HoTen, receiveCard.NgayMoThe, receiveCard.NgayHetHan });

                switch (ireceiveCardState)
                {
                    case -1: //Invalid SID
                        return 2;
                    case 0: //Card valid 
                        KhachHang cusreceive = receiveCard.KhachHang;
                        KhachHang cusReceive = receiveCard.KhachHang;

                        if (receiveCard.SoDu > dSoDu)
                        {
                            //Kiểm tra thẻ nhận
                            int iReceiveCardState = (int)(int)WSProxy.CallWebService(URLWebservice, ServiceName, "CardValid1", new object[] { bankSID, receiveCard.MaSoThe, receiveCard.MaLoaiThe, ccreceivesecurenum, receiveCard.KhachHang.HoTen, receiveCard.NgayMoThe, receiveCard.NgayHetHan });
                            if (iReceiveCardState == 1)
                            {
                                sendCard.SoDu -= dSoDu;
                                receiveCard.SoDu += dSoDu;
                                dbNganHang.SubmitChanges();
                            }
                            else
                                return 1;
                        }
                        else
                            return 1;
                        break;
                    case 1: //Card ID is not valid for this bank 
                        return 1;
                    case 2: //Card Type is not valid (Visa/Master) 
                        return 1;
                    case 3: //Customer Name not valid
                        return 1;
                    case 4: //Secure Number of the Credit card is not valid
                        return 1;
                    case 5: //Input Date of user for the credit card are not valid
                        return 1;
                    case 6: //Out of valid date from now 
                        return 2;
                    case 7: //Card is stolen
                        return 2;
                }
            }

            return 0;
        }

        /// <summary>
        /// Chuyển khoảng giữa các tài khoảng khác ngân hàng
        /// </summary>
        /// <param name="sid">SID của ngân hàng cấp cho môi giới</param>
        /// <param name="ccreceive">Mã số thẻ gửi</param>
        /// <param name="ccreceive">Mã số thẻ nhận</param>
        /// <param name="amount">Số tiền cần chuyển</param>
        /// <param name="ccreceivesecurenum">Mã Secure Number của thẻ gửi</param>
        /// <returns>trả về 3 giá trị 0 : giao dịch thành công; 1 : giao dịch thất bại; 2: các lỗi khác</returns>
        [WebMethod]
        public int TransferMoneyDiffBank(string sid, string ccrsend, string ccreceive, float amount, string ccreceivesecurenum)
        {
            string bankreceiveSID = WSProxy.CallWebService("linkWS_Bank","WS-E2","Authentication",new object[] {"OCBCBan", "X2ugS2E37S"}).ToString();
            string bankReceiveSID = WSProxy.CallWebService("linkWS_Bank","WS-E2","Authentication",new object[] {"OCBCBan", "X2ugS2E37S"}).ToString();
            
            if(sid == "123456abcdef")
            {

                //CCard ccreceive = GetService("Get Card Info");
                //CCard ccReceive = GetService("Get Card Info");

                int ireceiveCardState = (int)WSProxy.CallWebService("linkWS_Bank", "WS-E3", "CardValid", new object[] { bankreceiveSID, ccreceive, "IssuerID", ccreceivesecurenum, "Card Holder Name", "datetime valid form", "datetime valid to" });

                 switch (ireceiveCardState)
                {
                    case -1: //Invalid SID
                        return 2; 
                    case 0: //Card valid 

                        break;
                    case 1: //Card ID is not valid for this bank 
                        return 1;
                    case 2: //Card Type is not valid (Visa/Master) 
                        return 2;
                    case 3: //Customer Name not valid
                        return 1;
                    case 4: //Secure Number of the Credit card is not valid
                        return 1;
                    case 5: //Input Date of user for the credit card are not valid
                        return 1;
                    case 6: //Out of valid date from now 
                        return 2;
                    case 7: //Card is stolen
                        return 2;
                }
            }

            return 0;
        }
    }
}
