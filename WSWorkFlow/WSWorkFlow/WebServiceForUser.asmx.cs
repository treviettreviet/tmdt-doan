using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WSWorkFlow
{
    /// <summary>
    /// Summary description for WebServiceForUser
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebServiceForUser : System.Web.Services.WebService
    {
        private dbNganHangDataContext dbNganHang = new dbNganHangDataContext();

        [WebMethod]
        public string Authenticate(string UserName, string Password)
        {
            string SID = "";
            try
            {
                var result = from row in dbNganHang.KhachHangs where row.Email.Equals(UserName) && row.MatKhau.Equals(Password) select row;
                foreach (KhachHang kh in result)
                {
                    string strTime = DateTime.Now.ToString();
                    string strInput = UserName + strTime;
                    SID = Hash.MD5_Hash(strInput);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            return SID;
        }
    }
}
