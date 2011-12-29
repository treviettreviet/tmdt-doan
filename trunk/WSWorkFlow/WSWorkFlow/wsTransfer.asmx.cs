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

        /// <summary>
        /// Chuyển khoảng giữa các tài khoảng cùng ngân hàng
        /// </summary>
        /// <param name="sid">SID của ngân hàng cấp cho môi giới</param>
        /// <param name="ccsend">Mã số thẻ gửi</param>
        /// <param name="ccreceive">Mã số thẻ nhận</param>
        /// <param name="amount">Số tiền cần chuyển</param>
        /// <param name="ccsendsecurenum">Mã Secure Number của thẻ gửi</param>
        /// <returns>trả về 3 giá trị 0 : giao dịch thành công; 1 : giao dịch thất bại; 2: các lỗi khác</returns>
        [WebMethod]
        public int TransferMoneySameBank(string sid, string ccsend, string ccreceive, float amount, string ccsendsecurenum)
        {
            //Lấy sid của ngân hàng cấp
            WebServiceForUser wsBank = new WebServiceForUser();

            string bankSID = wsBank.Authenticate("OCBCBan", "X2ugS2E37S");
            
            if(sid == "123456abcdef")
            {
                //CCard ccSend = GetService("Get Card Info");

                int iSendCardState = (int)WSProxy.CallWebService("linkWS_Bank", "WS-E3", "CardValid", new object[] { bankSID, ccsend, "IssuerID", ccsendsecurenum, "Card Holder Name", "datetime valid form", "datetime valid to" });

                switch (iSendCardState)
                {
                    case -1: //Invalid SID
                        return 2; 
                    case 0: //Card valid 
                        //CCustomer cusSend = GetService("Get Send Customer Info");
                        //CCustomer cusReceive = GetService("Get Receive Customer Info");
                        //if(cusSend.SoTien > muc_quy_dinh)
                        //{
                        //      if(cusSend.SoTien > amount)
                        //      {
                        //          CCCard ccReceive = GetService("Get Card Info");
                        //          int iReceiveCardState = (int)WSProxy.CallWebService("linkWS_Bank", "WS-E3", "CardValid", new object[] { bankSID, ccsend, "IssuerID", ccsendsecurenum, "Card Holder Name", "datetime valid form", "datetime valid to" });
                        //          if(iReceiveCardState == 1)
                        //          {
                        //              cusSend.SoTien -= amount;
                        //              cusReceive.SoTien += amount;
                        //              GhiNhanGiaoDich();
                        //          }
                        //      }
                        //      else
                        //          return 1;
                        //}
                        //else
                        //      return 1;
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
        /// <param name="ccsend">Mã số thẻ gửi</param>
        /// <param name="ccreceive">Mã số thẻ nhận</param>
        /// <param name="amount">Số tiền cần chuyển</param>
        /// <param name="ccsendsecurenum">Mã Secure Number của thẻ gửi</param>
        /// <returns>trả về 3 giá trị 0 : giao dịch thành công; 1 : giao dịch thất bại; 2: các lỗi khác</returns>
        [WebMethod]
        public int TransferMoneyDiffBank(string sid, string ccsend, string ccreceive, float amount, string ccsendsecurenum)
        {
            string bankSendSID = WSProxy.CallWebService("linkWS_Bank","WS-E2","Authentication",new object[] {"OCBCBan", "X2ugS2E37S"}).ToString();
            string bankReceiveSID = WSProxy.CallWebService("linkWS_Bank","WS-E2","Authentication",new object[] {"OCBCBan", "X2ugS2E37S"}).ToString();
            
            if(sid == "123456abcdef")
            {
                //CCard ccSend = GetService("Get Card Info");
                //CCard ccReceive = GetService("Get Card Info");

                int iSendCardState = (int)WSProxy.CallWebService("linkWS_Bank", "WS-E3", "CardValid", new object[] { bankSendSID, ccsend, "IssuerID", ccsendsecurenum, "Card Holder Name", "datetime valid form", "datetime valid to" });

                 switch (iSendCardState)
                {
                    case -1: //Invalid SID
                        return 2; 
                        break;
                    case 0: //Card valid 

                        break;
                    case 1: //Card ID is not valid for this bank 
                        return 1;
                        break;
                    case 2: //Card Type is not valid (Visa/Master) 
                        return 2;
                        break;
                    case 3: //Customer Name not valid
                        return 1;
                        break;
                    case 4: //Secure Number of the Credit card is not valid
                        return 1;
                        break;
                    case 5: //Input Date of user for the credit card are not valid
                        return 1;
                        break;
                    case 6: //Out of valid date from now 
                        return 2;
                        break;
                    case 7: //Card is stolen
                        return 2;
                        break;
                }
            }

            return 0;
        }
    }
}
