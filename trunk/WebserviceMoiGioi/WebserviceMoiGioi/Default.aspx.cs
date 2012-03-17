using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebserviceNganHang;

namespace WebserviceMoiGioi
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Redirect("http://localhost:16108/Transaction/ThanhToanTrucTuyen/1");
            System.Net.ServicePointManager.Expect100Continue = false;
            string UrlWebservice = "http://ecmoney10.tk/WebserviceMoiGioi/WebserviceMoiGioiMoney10.asmx";
            string ServiceName = "WebServiceMoiGioiMoney10";
            string MethodName = "GhiNhanDonHang";

            string MaDonHang = "2";
            int SoLuong = 2;
            decimal TongThanhToan = 500000;
            string TenChuTaiKhoan = "Trần Trịnh Khôi Nguyên";
            int TinhTrang = 1;
            string Email = "trantrinhkhoinguyen@gmail.com";
            string DienThoai = "0914123456";
            string DiaChi = "135 Nguyễn Văn Cừ";
            object[] arrOb = new object[8];
            arrOb[0] = MaDonHang;
            arrOb[1] = SoLuong;
            arrOb[2] = TongThanhToan;
            arrOb[3] = TenChuTaiKhoan;
            arrOb[4] = TinhTrang;
            arrOb[5] = Email;
            arrOb[6] = DienThoai;
            arrOb[7] = DiaChi;
            object obResult = WSProxy.CallWebService(UrlWebservice, ServiceName, MethodName, arrOb);
            int result = (int)obResult;
            if (result == 0)
            {
                Response.Write("Ghi nhận đơn hàng thành công...!");
            }
            else
            {
                Response.Write("Có lỗi: "+result.ToString());
            }
        }
    }
}