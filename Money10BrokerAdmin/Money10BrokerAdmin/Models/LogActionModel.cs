using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Money10BrokerAdmin.Models
{
    public class LogActionModel
    {
        public static void LogAct(string email, DateTime thoigian, string banglienquan, string thaotac, string dulieucu, string dulieumoi)
        {
            MoiGioiAdminEntities db = new MoiGioiAdminEntities();

            LogAction lg = new LogAction();
            lg.Email = email;
            lg.ThoiGian = thoigian;
            lg.BangLienQuan = banglienquan;
            lg.ThaoTac = thaotac;
            lg.DuLieuCu = dulieucu;
            lg.DuLieuMoi = dulieumoi;
            lg.TinhTrang = 1;
            db.LogActions.AddObject(lg);
            db.SaveChanges();
        }
    }
}