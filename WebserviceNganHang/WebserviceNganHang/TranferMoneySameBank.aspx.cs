using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebserviceNganHang
{
    public partial class TranferMoneySameBank : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Net.ServicePointManager.Expect100Continue = false;
            string UrlWebservice = "http://localhost:1834/WebServiceNganHangMoney10.asmx";
            string ServiceName = "WebServiceNganHangMoney10";
            string MethodName1 = "AuthenticateForTransaction";
            string MethodName2 = "TransferMoneySameBank";

            string sid = "";
            string email = "phanquangkhai@gmail.com";
            string password = "12345678";
            object[] arrOb1 = new object[2];
            arrOb1[0] = email;
            arrOb1[1] = password;
            object obResult1 = WSProxy.CallWebService(UrlWebservice, ServiceName, MethodName1, arrOb1);
            sid = obResult1.ToString();

            
            string card_no_send = CardNoSend.Text;
            string card_no_receive = CardNoReceive.Text;
            string amount = Amount.Text;
            decimal deAmount = decimal.Parse(amount);
            
            object[] arrOb2 = new object[4];
            arrOb2[0] = sid;
            arrOb2[1] = card_no_send;
            arrOb2[2] = card_no_receive;
            arrOb2[3] = deAmount;
            object obResult2 = WSProxy.CallWebService(UrlWebservice, ServiceName, MethodName2, arrOb2);
            if (obResult2 != null)
            {
                int kq = (int)obResult2;
                Response.Write("Ket qua giao dịch: " + kq.ToString() +"   (0: Thành công, 1, 2, 3: Các kết quả khác)");
            }
        }
    }
}