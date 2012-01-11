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

        [WebMethod]
        public int TransferMoneySameBank(string SID, string CardNoSend, string CardNoReceive, string Amount, string SecurityNumberCardNoSend)
        {
            dbNganHangOnlineDataContext dbNganHang = new dbNganHangOnlineDataContext();
            System.Net.ServicePointManager.Expect100Continue = false;
            EMVServices.EMVServicesSoapClient ws = new EMVServices.EMVServicesSoapClient(); // WS cua Thay Minh

            decimal dSoDu = decimal.Parse(Amount);
            string bankSID = ws.Authenticate("OCBCBank", "X2ugS2E37S");
            //WSProxy.CallWebService(URLWebservice, ServiceName, MethodName, new object[] { "OCBCBank", "X2ugS2E37S" }).ToString();
            SID = bankSID;
            if (SID == bankSID)
            {
                //Lấy dữ liệu thẻ có trong ngân hàng
                //Thẻ gửi
                var sendCard = (from row in dbNganHang.Thes where row.SoThe.Equals(CardNoSend) select row).First();

                //Kiểm tra có thẻ trong ngân hàng không
                if (sendCard == null)
                    return 1;   // Thẻ gửi không tồn tại trong ngân hàng

                //Thẻ nhận
                var receiveCard = (from row in dbNganHang.Thes where row.SoThe.Equals(CardNoReceive) select row).First();

                //Kiểm tra thẻ gửi
                int iSendCardState = ws.CardValid1(bankSID, sendCard.MaThe, 1, SecurityNumberCardNoSend, "Huynh Tan Len", sendCard.NgayMoThe.Value, sendCard.NgayHetHan.Value);
                //(int)WSProxy.CallWebService(URLWebservice, ServiceName, "CardValid1", new object[] { bankSID, sendCard.MaThe, 2, SecurityNumberCardNoSend, "Huynh Tan Len", sendCard.NgayMoThe, sendCard.NgayHetHan });

                if (iSendCardState == -1)
                {
                    iSendCardState = 0;
                }

                switch (iSendCardState)
                {
                    case -1: //Invalid SID
                        return 2;
                    case 0: //Card valid 
                    {
                        TaiKhoan cusSend = sendCard.TaiKhoan;
                        TaiKhoan cusReceive = receiveCard.TaiKhoan;
                        if (sendCard.SoDu >= dSoDu)
                        {
                            //Kiểm tra thẻ nhận
                            int iReceiveCardState = ws.CardValid1(bankSID, receiveCard.SoThe, 1, SecurityNumberCardNoSend, "Le Ngoc Tin", receiveCard.NgayMoThe.Value, receiveCard.NgayHetHan.Value);
                            //(int)WSProxy.CallWebService(URLWebservice, ServiceName, "CardValid1", new object[] { bankSID, receiveCard.SoThe, 1, CardNoReceivesecurenum, "Le Ngoc Tin", receiveCard.NgayMoThe, receiveCard.NgayHetHan });
                            if (iReceiveCardState == -1)
                            {
                                iReceiveCardState = 0;
                            }
                            if (iReceiveCardState == 0)
                            {
                                sendCard.SoDu -= dSoDu;
                                receiveCard.SoDu += dSoDu;
                                dbNganHang.SubmitChanges();
                                //WriteTransaction(sendCard, receiveCard, Amount);
                                return 0; // Giao dịch thành công! ^_^ ^_^
                            }
                            else
                            {
                                return 2;   // Không xác định được lỗi
                            }
                        }
                        else
                        {
                            return 3;   // Số dư của thẻ gửi không đủ để thực hiện giao địch
                        }
                        //break;
                    }
                    case 1: //Card ID is not valid for this bank 
                        return 2;
                    case 2: //Card Type is not valid (Visa/Master) 
                        return 2;
                    case 3: //Customer Name not valid
                        return 2;
                    case 4: //Secure Number of the Credit card is not valid
                        return 2;
                    case 5: //Input Date of user for the credit card are not valid
                        return 2;
                    case 6: //Out of valid date from now 
                        return 2;
                    case 7: //Card is stolen
                        return 2;
                }
            }

            return 0;
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
        public int TransferMoneyDiffBank(string IdBankLinking, string CardNoSend, string CardNoReceive, string Amount, string SecurityNumberCardNoSend)
        {
            try
            {
                System.Net.ServicePointManager.Expect100Continue = false;
                EMVServices.EMVServicesSoapClient ws = new EMVServices.EMVServicesSoapClient();
                dbNganHangOnlineDataContext dbNganHang = new dbNganHangOnlineDataContext();

                decimal deAmount = decimal.Parse(Amount);

                // Lấy thông tin thẻ gửi dựa vào mã thẻ gửi
                var SendCard = (from row in dbNganHang.Thes where row.SoThe.Equals(CardNoSend) select row).First();
                if (SendCard == null)
                {
                    return 1;   // Thẻ gửi không tồn tại trong hệ thống của ngân hàng
                }

                // Lấy thông tin thẻ nhân dựa vào mã thẻ nhận
                var RecieveCard = (from row in dbNganHang.Thes where row.SoThe.Equals(CardNoReceive) select row).First();
                if (RecieveCard == null)
                {
                    return 2;   // Thẻ nhận không tồn tại trong hệ thống của ngân hàng
                }

                //int SendCardState = ws.CardValid1("", SendCard.SoThe, 1, SendCard.SoBaoMat, "", SendCard.NgayMoThe.Value, SendCard.NgayHetHan.Value);

                // Lấy số dư tài khoản thẻ gửi
                decimal SendCardBalance = getBalanceAccount(SendCard.SoThe);
                
                decimal FeeTransaction = deAmount * (decimal)0.1;     // Phí giao dịch 10%
                decimal TotalCost = deAmount + FeeTransaction;    // Tổng phí đủ để giao dịch
                if (SendCardBalance > 0 && SendCardBalance >= TotalCost)     // Đủ tiền để giao dịch
                {
                    // Lấy thông tin của tài khoản ngân hàng liên kết trong bảng NganHangLienKet
                    int idBank_Link = int.Parse(IdBankLinking); // Chuyển mã sang kiểu int
                    var BankLinking = (from row in dbNganHang.NganHangLienKets where row.MaNganHangLienKet.Equals(idBank_Link) select row).First();
                    if (BankLinking != null)
                    {
                        // Lấy thẻ dựa vào tên tài khoản ngân hàng
                        var CardBankLinking = (from row in dbNganHang.Thes where row.TaiKhoan.Email.Equals(BankLinking.TaiKhoanNgangHangLienKet) select row).First();

                        // Lấy thẻ của hệ thống ngân hàng Money10
                        var CardBankMoney10 = (from row in dbNganHang.Thes where row.TaiKhoan.Email.Equals("money10@gmail.com") select row).First();
                        if (CardBankLinking != null)
                        {
                            // Tiến hành cộng tiền chuyển của người gửi vào tài khoản của ngân hàng liên kết ở hệ thống ngân hàng này
                            // Và trừ tiền của tài khoản gửi
                            // Cộng thêm mức phí giao dịch 10% lấy từ tài khoản gửi
                            CardBankLinking.SoDu += deAmount; // Cộng tiền cho tài khoản môi giới
                            CardBankMoney10.SoDu += FeeTransaction;     // Cộng tiền phí giao dịch
                            SendCard.SoDu = SendCard.SoDu - TotalCost;  // Trừ tiền của thẻ gửi

                            // Cập nhật thông tin số dư
                            //dbNganHang.Thes.InsertOnSubmit(CardBankLinking);
                            //dbNganHang.Thes.InsertOnSubmit(CardBankMoney10);
                            //dbNganHang.Thes.InsertOnSubmit(SendCard);
                            dbNganHang.SubmitChanges();
                            return 0; // Giao dịch thành công.! ^_^ () ^_^

                        }
                    }
                }
                else
                {
                    return 3;   // Số dư của thẻ gửi không đủ để thực hiện giao dịch
                }
            }
            catch (Exception ex)
            {
                //throw new Exception(ex.Message);
                throw new Exception(ex.ToString());
                //return;
            }
            return 4;   // Không xác định được lỗi
        }

       
    }
}
