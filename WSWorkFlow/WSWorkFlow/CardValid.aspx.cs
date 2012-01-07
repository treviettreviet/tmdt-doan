using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSWorkFlow
{
    public partial class CardValid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Net.ServicePointManager.Expect100Continue = false; 
            // Gọi WS của Thầy Minh
            string URLWebservice = "http://www.is.fit.hcmus.edu.vn/EMV_Service/EMVServices.asmx";
            string ServiceName = "EMVServices";
            string MethodName = "Authenticate";
            string BankId = "OCBCBank";
            string Password = "X2ugS2E37S";
            //string sid = WSProxy.CallWebService(URLWebservice, ServiceName, MethodName, new object[] {BankId, Password}).ToString();
            EMVServices.EMVServices ws = new EMVServices.EMVServices();
            string sid = ws.Authenticate(BankId, Password);
            //ws.AuthenticateAsync(BankId, Password);
            string CardId = "5119318702648034";
            int IssuerID = 0;
            string CardSecureNumber = "31A2A"; 
            string CardHolderName = "Len";
            //DateTime ValidFromDate = DateTime.Parse("29/12/2011");
            //DateTime ValidToDate = DateTime.Parse("18/01/2012");

            DateTime ValidFromDate = DateTime.Parse("2011-12-29");
            DateTime ValidToDate = DateTime.Parse("2012-01-18");

            string MethodName2 = "CardValid1";
            string MethodName3 = "CardValid3";
            //object ob = WSProxy.CallWebService(URLWebservice, ServiceName, MethodName2, new object[] { sid, CardId, IssuerID, CardSecureNumber, CardHolderName, ValidFromDate, ValidToDate}).ToString();
            object ob = WSProxy.CallWebService(URLWebservice, ServiceName, MethodName3, new object[] { sid, CardId, IssuerID, CardHolderName }).ToString();
            
            int state = ws.CardValid1(sid, CardId, IssuerID, CardSecureNumber, CardHolderName, ValidFromDate, ValidToDate);
            //int result = (int)ob;
            Response.Write("Ket qua: "+ ob.ToString());

        }
    }
}