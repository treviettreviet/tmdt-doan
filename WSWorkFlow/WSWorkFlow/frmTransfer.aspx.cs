using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSWorkFlow
{
    public partial class frmTransfer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Transfer_Click(object sender, EventArgs e)
        {
            //public int TransferMoneySameBank(string sid, string ccsend, string creceive, float amount, string ccsendcurenum, string ccreceivesecurenum)
            string sid = txtSID.Text;
            string ccsend = txtCardIDSend.Text;
            string ccreceive = txtCardIDReceive.Text;
            decimal amount = decimal.Parse(txtAmount.Text);
            string ccsendsecurenum = txtSendSecureNum.Text;
            string ccreceivesecurenum = txtReceiveSecureNum.Text;

            string UrlWebservice = "http://localhost:1248/wsTransfer.asmx";
            string ServiceName = "wsTransfer";
            string MethodName = "TransferMoneySameBank";

            object[] arrOb = new object[6];
            arrOb[0] = sid;
            arrOb[1] = ccsend;
            arrOb[2] = ccreceive;
            arrOb[3] = amount;
            arrOb[4] = ccsendsecurenum;
            arrOb[5] = ccreceivesecurenum;

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