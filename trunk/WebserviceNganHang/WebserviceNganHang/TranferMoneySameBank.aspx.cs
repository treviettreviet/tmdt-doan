﻿using System;
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
            string card_no_send = CardNoSend.Text;
            string card_no_receive = CardNoReceive.Text;
            string amount = Amount.Text;
            string security_number_card_no_send = SecurityNumberCardNoSend.Text;
            decimal deAmount = decimal.Parse(amount);
            string UrlWebservice = "http://localhost:1834/WebServiceNganHangMoney10.asmx";
            string ServiceName = "WebServiceNganHangMoney10";
            string MethodName = "TransferMoneySameBank";
            object[] ob = new object[4];
            ob[0] = card_no_send;
            ob[1] = card_no_receive;
            ob[2] = amount;
            ob[3] = security_number_card_no_send;

            //WebServiceNganHangMoney10 ws = new WebServiceNganHangMoney10();

            object ResultTransfer = WSProxy.CallWebService(UrlWebservice, ServiceName, MethodName,ob);
            if (ob != null)
            {
                Response.Write("Ket qua: " + ob.ToString());
            }
        }
    }
}