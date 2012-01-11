using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebserviceNganHang
{
    public partial class TranferMoneyDiffBank : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Transfer_Click(object sender, EventArgs e)
        {
            string IdBankLinking = txtIdBankLinking.Text;
            string ccsend = txtCardIDSend.Text;
            string ccreceive = txtCardIDReceive.Text;
            decimal amount = decimal.Parse(txtAmount.Text);
            string ccsendsecurenum = txtSendSecureNum.Text;

            string UrlWebservice = "http://localhost/WebServiceNganHangMoney10.asmx";
            string ServiceName = "WebServiceNganHangMoney10";
            string MethodName = "TransferMoneyDiffBank";

            object[] arrOb = new object[5];
            arrOb[0] = IdBankLinking;
            arrOb[1] = ccsend;
            arrOb[2] = ccreceive;
            arrOb[3] = amount;
            arrOb[4] = ccsendsecurenum;

            int result = -404;
            object obResult = WSProxy.CallWebService(UrlWebservice, ServiceName, MethodName, arrOb);
            if (!obResult.Equals(""))
            {
                result = (int)obResult;
                Response.Write("Ket qua giao dịch: " + result.ToString() + "(0: là giao dịch thành công | -1: là giao dịch thất bại)");
            }
            else
            {
                Response.Write(obResult.ToString());
            }
        }
    }
}