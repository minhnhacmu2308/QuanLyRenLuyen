using QuanLyRenLuyen.Daos;
using QuanLyRenLuyen.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyRenLuyen.Controllers
{
    public class DiemRenLuyenController : Controller
    {
        DiemRenLuyenDao diemRenLuyenDao = new DiemRenLuyenDao();
        // GET: DiemRenLuyen
        public ActionResult Index(string msg)
        {
            ViewBag.MSG = msg;
            var list = diemRenLuyenDao.getAll();
            return View(list);
        }
        public ActionResult Update(DiemRenLuyen diemRenLuyen)
        {
            diemRenLuyenDao.update(diemRenLuyen);
            return RedirectToAction("Index", new { msg = "1" });
        }

        public ActionResult Delete(int id)
        {
            diemRenLuyenDao.delete(id);
            return RedirectToAction("Index", new { msg = "1" });
        }
        public ActionResult XepLoai(FormCollection form)
        {
            var from =form["from"];
            var to = form["to"];
            if ( from != null || to != null)
            {
                var tu = Int32.Parse(from);
                var den = Int32.Parse(to);
                ViewBag.List = diemRenLuyenDao.getFilter(tu, den);
            }
            else
            {
                ViewBag.List = diemRenLuyenDao.getAll();
            }
            return View();
        }

      
    }
}