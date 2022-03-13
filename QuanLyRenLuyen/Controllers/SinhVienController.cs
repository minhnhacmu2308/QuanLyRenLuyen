using QuanLyRenLuyen.Daos;
using QuanLyRenLuyen.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyRenLuyen.Controllers
{
    public class SinhVienController : Controller
    {
        SinhVienDao sinhVienDao = new SinhVienDao();
        // GET: SinhVien
        public ActionResult Index(string msg)
        {
            var listStudent = sinhVienDao.getList();
            ViewBag.MSG = msg;
            ViewBag.Lop = sinhVienDao.getLop();
            return View(listStudent);
        }

        public ActionResult ChamDiem()
        {
            return View();
        }

        public ActionResult Add(SinhVien sinhVien)
        {
            sinhVien.TrangThai = 1;
            bool checkExist = sinhVienDao.checkExistMaSV(sinhVien.MaSinhVien);
            if (checkExist)
            {
                return RedirectToAction("Index", new { msg = "2" });
            }
            else
            {
                sinhVienDao.add(sinhVien);
                return RedirectToAction("Index", new { msg = "1" });
            }

        }

        public ActionResult Update(SinhVien sinhVien)
        {
            sinhVienDao.update(sinhVien);
            return RedirectToAction("Index", new { msg = "1" });
        }

        public ActionResult Delete(int id)
        {
            bool check = sinhVienDao.checkDelete(id);
            if (check)
            {
                return RedirectToAction("Index", new { msg = "3" });
            }
            else
            {
                sinhVienDao.delete(id);
                return RedirectToAction("Index", new { msg = "1" });
            }
        }

    }
}