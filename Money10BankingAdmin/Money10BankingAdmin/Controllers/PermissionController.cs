using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Money10BankingAdmin.Models;

namespace Money10BankingAdmin.Controllers
{
    public class PermissionController : Controller
    {
        //
        // GET: /Permission/

        DB_NganHangEntities dbNganHang = new DB_NganHangEntities();               
        public ActionResult DanhSachBang()
        {
            return View();
        }

        public ActionResult Admin()
        {
            List<Admin> ad = (from r in dbNganHang.Admins select r).ToList<Admin>();
            return View(ad);
        }

        public ActionResult Group()
        {
            List<Group> gr = (from r in dbNganHang.Groups select r).ToList<Group>();
            return View(gr);
        }
        public ActionResult Permission()
        {
            List<Permission> per = (from r in dbNganHang.Permissions select r).ToList<Permission>();
            return View(per);
        }
        public ActionResult TaiKhoan()
        {
            List<TaiKhoan> tk = (from r in dbNganHang.TaiKhoans select r).ToList<TaiKhoan>();
            return View(tk);
        }
        public ActionResult KhachHang()
        {
            List<KhachHang> kh = (from r in dbNganHang.KhachHangs select r).ToList<KhachHang>();
            return View(kh);
        }
        public ActionResult MoiGioi()
        {
            List<MoiGioi> mg = (from r in dbNganHang.MoiGiois select r).ToList<MoiGioi>();
            return View(mg);
        }
        public ActionResult DiaChi()
        {
            List<DiaChi> dc = (from r in dbNganHang.DiaChis select r).ToList<DiaChi>();
            return View(dc);
        }
        public ActionResult LoaiGiayPhepKinhDoanh()
        {
            List<LoaiGiayPhepKinhDoanh> lgpkd = (from r in dbNganHang.LoaiGiayPhepKinhDoanhs select r).ToList<LoaiGiayPhepKinhDoanh>();
            return View(lgpkd);
        }
        public ActionResult LoaiTaiKhoan()
        {
            List<LoaiTaiKhoan> ltk = (from r in dbNganHang.LoaiTaiKhoans select r).ToList<LoaiTaiKhoan>();
            return View(ltk);
        }
        public ActionResult The()
        {
            List<The> th = (from r in dbNganHang.Thes select r).ToList<The>();
            return View(th);
        }
        public ActionResult TheTam()
        {
            List<TheTam> temp = (from r in dbNganHang.TheTams select r).ToList<TheTam>();
            return View(temp);
        }
        public ActionResult LoaiThe()
        {
            List<LoaiThe> lthe = (from r in dbNganHang.LoaiThes select r).ToList<LoaiThe>();
            return View(lthe);
        }
        public ActionResult LichSuGiaoDich()
        {
            List<LichSuGiaoDich> lsgd = (from r in dbNganHang.LichSuGiaoDiches select r).ToList<LichSuGiaoDich>();
            return View(lsgd);
        }
        public ActionResult LoaiGiaoDich()
        {
            List<LoaiGiaoDich> lgd = (from r in dbNganHang.LoaiGiaoDiches select r).ToList<LoaiGiaoDich>();
            return View(lgd);
        }
        public ActionResult LogAction()
        {
            List<LogAction> log = (from r in dbNganHang.LogActions select r).ToList<LogAction>();
            return View(log);
        }
        public ActionResult NganHangLienKet()
        {
            List<NganHangLienKet> nhlk = (from r in dbNganHang.NganHangLienKets select r).ToList<NganHangLienKet>();
            return View(nhlk);
        }
        public ActionResult NgonNgu()
        {
            List<NgonNgu> nn = (from r in dbNganHang.NgonNgus select r).ToList<NgonNgu>();
            return View(nn);
        }
        public ActionResult NoiDung()
        {
            List<NoiDung> nd = (from r in dbNganHang.NoiDungs select r).ToList<NoiDung>();
            return View(nd);
        }
        public ActionResult PhiGiaoDich()
        {
            List<PhiGiaoDich> pgd = (from r in dbNganHang.PhiGiaoDiches select r).ToList<PhiGiaoDich>();
            return View(pgd);
        }
        public ActionResult ThamSo()
        {
            List<ThamSo> ts = (from r in dbNganHang.ThamSoes select r).ToList<ThamSo>();
            return View(ts);
        }
        //
        // GET: /Permission/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Permission/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Permission/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /Permission/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Permission/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Permission/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Permission/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
