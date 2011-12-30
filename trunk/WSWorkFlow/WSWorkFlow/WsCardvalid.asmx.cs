using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WSWorkFlow
{
    /// <summary>
    /// Summary description for WsCardvalid
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WsCardvalid : System.Web.Services.WebService
    {

        private dbNganHangDataContext dbNganHang = new dbNganHangDataContext();

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public int Cardvalid1(string sid, string cardId, string IssuerId, string holderName, DateTime dateFrom, DateTime dateTo, float totalPayMoney)
        {
            //Lấy sid của ngân hàng cấp
            string bankSID = WSProxy.CallWebService("linkWS_Bank", "WS-E2", "Authentication", new object[] { "OCBCBan", "X2ugS2E37S" }).ToString();

            if (sid != "123456abcdef")
            {
                //return  ;
                return -1;
            }
            
            var card = from row in dbNganHang.Thes where row.MaSoThe.Equals(cardId) select row;
                foreach(The th in card)
                {
                    var tenThe = from the in dbNganHang.Thes
                                 from loaithe in dbNganHang.LoaiThes
                                 where loaithe.MaLoaiThe == the.MaLoaiThe
                                 select loaithe.TenLoaiThe;                   

                     if(tenThe.Equals(IssuerId)!=true)
                     {
                         return 2;
                     }
                   
                }

                return 0;
        }
    }
}
