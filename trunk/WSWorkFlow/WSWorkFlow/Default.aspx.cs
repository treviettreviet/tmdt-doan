using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;
using System.Text;
using System.IO;

namespace WSWorkFlow
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                System.Net.ServicePointManager.Expect100Continue = false; 
                string id = txtBankID.Text;
                string pass = txtPassword.Text;
                object[] ob = new object[2];
                ob[0] = id;
                ob[1] = pass;
                //string URLWebservice = "http://localhost:1248/WebServiceForUser.asmx";
                //string ServiceName = "WebServiceForUser";
                //string MethodName = "Authenticate";

                // Gọi WS của Thầy Minh
                string URLWebservice = "http://www.is.fit.hcmus.edu.vn/EMV_Service/EMVServices.asmx";
                string ServiceName = "EMVServices";
                string MethodName = "Authenticate";

                object obResult = WSProxy.CallWebService(URLWebservice, ServiceName, MethodName, ob);
                if (!obResult.Equals(""))
                {
                    string SID = obResult.ToString();
                    lbtKetQua.Text = "SID: " + SID;
                }
                else
                {
                    lbtKetQua.Text = "Login thất bại";
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public T ConvertType<T>(object input)
        {

            XmlSerializer serializer = new XmlSerializer(input.GetType(), "http://tempuri.org/");
            XmlSerializer deserializer = new XmlSerializer(typeof(T), "http://tempuri.org/");

            StringBuilder sb = new StringBuilder();
            using (StringWriter sw = new StringWriter(sb))
            {
                serializer.Serialize(sw, input);
            }

            using (StringReader sr = new StringReader(sb.ToString()))
            {
                return (T)deserializer.Deserialize(sr);
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                System.Net.ServicePointManager.Expect100Continue = false;
                string id = txtBankID.Text;
                //string pass = txtPassword.Text;
                object[] ob = new object[1];
                ob[0] = id;
                //ob[1] = pass;
                //string URLWebservice = "http://localhost:1248/WebServiceForUser.asmx";
                //string ServiceName = "WebServiceForUser";
                //string MethodName = "Authenticate";

                // Gọi WS của Thầy Minh
                string URLWebservice = "http://www.is.fit.hcmus.edu.vn/EMV_Service/EMVServices.asmx";
                string ServiceName = "EMVServices";
                string MethodName = "GetBankCommercialNameOfCreditCard";

                object obResult = WSProxy.CallWebService(URLWebservice, ServiceName, MethodName, ob);
                if (!obResult.Equals(""))
                {
                    string SID = obResult.ToString();                    
                    lbtKetQua.Text = "Name: " + SID;
                }
                else
                {
                    lbtKetQua.Text = "Ko co";
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        //public ActionResult CallWebserviceDynamic(string txtLinkWS, string txtFunctionName, string cboParameter1, string txtParameter1, bool chkParameter1, string cboParameter2, string txtParameter2, bool chkParameter2, string cboParameter3, string txtParameter3, bool chkParameter3, string cboParameterResult, string txtParameterResult)
        //{
        //    try
        //    {
        //        object[] para = new object[3];
        //        int dem = 0;
        //        if (chkParameter1 == true)
        //        {
        //            //para[0] = int.Parse(txtParameter1);
        //            // Chỗ này mình ko cần phải Parse kiểu dữ liệu ra. Nếu mún part thì mình phải xem là cboParameter1 nó chọn là gì? rồi mới parse nó ra đúng dc.
        //            // Ông mặc định parse ra kiểu int là ko ổn. Chỗ này tui sẽ bổ sung bằng cách cho Switch case các cái kiểu dữ liệu, rồi mới Parse
        //            para[0] = txtParameter1;
        //            dem++;
        //        }

        //        if (chkParameter2 == true)
        //        {
        //            //para[1] = int.Parse(txtParameter2);
        //            para[1] = txtParameter2;
        //            dem++;
        //        }

        //        if (chkParameter3 == true)
        //        {
        //            //para[2] = int.Parse(txtParameter2);
        //            para[2] = txtParameter3;
        //            dem++;
        //        }

        //        object[] ob = new object[dem];
        //        for (int i = 0; i < ob.Length; i++)
        //        {
        //            ob[i] = para[i];
        //        }

        //        object result = null;
        //        if (!txtLinkWS.Equals(""))
        //        {
        //            string NameWS = LayTenWebservice(txtLinkWS);
        //            result = WSProxy.CallWebService(txtLinkWS, NameWS, txtFunctionName, ob);
        //        }
        //        //object result = WSProxy.CallWebService(txtLinkWS, "WebService1", txtFunctionName, ob);
        //        //ViewData["KetQua"] = result.ToString();
        //        ViewData["KetQua"] = result;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new Exception(ex.Message);
        //    }
        //    return View();
        //}

    }
}