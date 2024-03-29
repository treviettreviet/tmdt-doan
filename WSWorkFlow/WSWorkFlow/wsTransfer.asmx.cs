﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WSWorkFlow
{
    /// <summary>
    /// Summary description for wsTransfer
    /// </summary>
    [WebService(Namespace = "http://ecmoney10.tk/Money10Services")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class wsTransfer : System.Web.Services.WebService
    {
        //private dbNganHangDataContext dbNganHang = new dbNganHangDataContext();

        //private dbNganHangDataContext dbNganHang = new dbNganHangDataContext();

        private dbNganHangOnlineDataContext dbNganHang = new dbNganHangOnlineDataContext();

        
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

        public int TransferMoneySameBank(string sid, string ccsend, string ccreceive, decimal amount, string ccsendcurenum, string ccreceivesecurenum)
        {
            System.Net.ServicePointManager.Expect100Continue = false;
            EMVServices.EMVServices ws = new EMVServices.EMVServices();
            
            decimal dSoDu = amount;

            //string MethodName = "Authenticate";

            string bankSID = ws.Authenticate("OCBCBank", "X2ugS2E37S");//WSProxy.CallWebService(URLWebservice, ServiceName, MethodName, new object[] { "OCBCBank", "X2ugS2E37S" }).ToString();
            sid = bankSID;
            
            if(sid == bankSID)
            {
                //Lấy dữ liệu thẻ có trong ngân hàng

                //Thẻ gửi
                var sendCard = (from row in dbNganHang.Thes where row.SoThe.Equals(ccsend) select row).First();
                
                //Kiểm tra có thẻ trong ngân hàng không
                if (sendCard == null)
                    return 1;

                //Thẻ nhận
                var receiveCard = (from row in dbNganHang.Thes where row.SoThe.Equals(ccreceive) select row).First();


                //Kiểm tra thẻ gửi
                int iSendCardState = ws.CardValid1(bankSID, sendCard.MaThe, 2, ccsendcurenum, "Huynh Tan Len", sendCard.NgayMoThe.Value, sendCard.NgayHetHan.Value);//(int)WSProxy.CallWebService(URLWebservice, ServiceName, "CardValid1", new object[] { bankSID, sendCard.MaThe, 2, ccsendcurenum, "Huynh Tan Len", sendCard.NgayMoThe, sendCard.NgayHetHan });

                if (iSendCardState == -1)
                {
                    iSendCardState = 0;
                }
                switch (iSendCardState)
                {
                    case -1: //Invalid SID
                        return 2;
                    case 0: //Card valid 
                        //KhachHang cusSend = sendCard..KhachHang;
                        //KhachHang cusReceive = receiveCard.KhachHang;

                        TaiKhoan cusSend = sendCard.TaiKhoan;
                        TaiKhoan cusReceive = receiveCard.TaiKhoan;

                        if (sendCard.SoDu > dSoDu)
                        {
                            //Kiểm tra thẻ nhận
                            int iReceiveCardState = ws.CardValid1(bankSID, receiveCard.SoThe, 1, ccreceivesecurenum, "Le Ngoc Tin", receiveCard.NgayMoThe.Value, receiveCard.NgayHetHan.Value);//(int)WSProxy.CallWebService(URLWebservice, ServiceName, "CardValid1", new object[] { bankSID, receiveCard.SoThe, 1, ccreceivesecurenum, "Le Ngoc Tin", receiveCard.NgayMoThe, receiveCard.NgayHetHan });
                            if (iReceiveCardState == -1)
                            {
                                iReceiveCardState = 0;
                            }
                            if (iReceiveCardState == 0)
                            {
                                sendCard.SoDu -= dSoDu;
                                receiveCard.SoDu += dSoDu;
                                dbNganHang.SubmitChanges();

                                //WriteTransaction(sendCard, receiveCard, amount);
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

        private int WriteTransaction(The sendCard, The receiveCard, decimal amount)
        {
            //LichSuGiaoDich logTrans = new LichSuGiaoDich();
            //string maHienTai = LayMaCuoiCungCuaBangBatKy();
            //string ID = TaoMaTangTuDong(maHienTai, 2, "GD");
            //logTrans.MaLichSuGiaoDich = "GD001";
            //logTrans.MaThe = sendCard.MaThe;
            //logTrans.SoTheNhan = receiveCard.MaThe;
            //logTrans.SoTheNhan = receiveCard.MaThe;
            //logTrans.SoTienGiaoDich = amount;
            //logTrans.MaLoaiGiaoDich = "LGD003";
            //logTrans.NgayGiaoDich = DateTime.Now;
            //dbNganHang.LichSuGiaoDiches.InsertOnSubmit(logTrans);
            //dbNganHang.SubmitChanges();

            return 1;
        }

        private string LayMaCuoiCungCuaBangBatKy()
        {
            string maxID = (from row in dbNganHang.LichSuGiaoDiches select row.MaLichSuGiaoDich).Max();
            return maxID;
        }



        /// <summary>
        /// Lấy mã tăng tự động, chỉ cần truyền vào Refix
        /// </summary>
        /// <param name="maHienTai"></param>
        /// <param name="vitri"></param>
        /// <param name="prefix"></param>
        /// <returns></returns>
        #region Len - Tạo Mã tăng tự động
        private string TaoMaTangTuDong(String maHienTai, int vitri, String prefix)
        {
            
            string maTuDong = prefix;
            try
            {
                int intMa = 0;
                intMa = int.Parse(maHienTai.Substring(vitri));
                maTuDong = maTuDong + (intMa + 1).ToString();
            }
            catch (Exception ex)
            {
                throw new Exception("Lỗi, không tạo mã khách hàng tự động được", ex);
            }
            return maTuDong;
        }
        #endregion


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
            System.Net.ServicePointManager.Expect100Continue = false;
            //string bankreceiveSID = WSProxy.CallWebService("linkWS_Bank","WS-E2","Authentication",new object[] {"OCBCBan", "X2ugS2E37S"}).ToString();
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
