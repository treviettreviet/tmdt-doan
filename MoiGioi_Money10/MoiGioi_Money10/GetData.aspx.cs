using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoiGioi_Money10
{
    public partial class GetData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //CDonHang cDonHang = (CDonHang)Request.pa.QueryString["DonHang"];
            //CDonHang cDonHang = (CDonHang)Request.Params["DonHang"];
            string MaSanPham = Request.QueryString["MaSanPham"];
            Response.Write("MaSanPham="+MaSanPham);
        }
    }
}