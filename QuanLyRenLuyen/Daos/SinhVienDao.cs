using QuanLyRenLuyen.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyRenLuyen.Daos
{
    public class SinhVienDao
    {
        DbConTextQl myDb = new DbConTextQl();
        public bool checkLogin(string masv, string matkhau)
        {
            var cvht = myDb.SinhViens.FirstOrDefault(x => x.MaSinhVien == masv && x.MatKhau == matkhau);
            if (cvht != null)
            {
                return true;
            }
            return false;
        }
        public SinhVien getSVByMaSV(string masv)
        {
            return myDb.SinhViens.FirstOrDefault(x => x.MaSinhVien == masv);
        }
        public SinhVien getSVById(int id)
        {
            return myDb.SinhViens.FirstOrDefault(x => x.IdSinhVien == id);
        }

        public List<SinhVien> getList() { return myDb.SinhViens.OrderByDescending(x =>x.IdSinhVien).ToList(); }

        public void add(SinhVien sinhVien)
        {
            myDb.SinhViens.Add(sinhVien);
            myDb.SaveChanges();
        }

        public bool checkExistMaSV(string masv)
        {
            var obj = getSVByMaSV(masv);
            if (obj != null) { return true; }
            return false;
        }

        public bool checkDelete(int id)
        {
            var obj = myDb.ChamDiemRenLuyens.Where(x => x.IdSinhVien == id).ToList();
            if (obj.Count > 0) { return true; }
            return false;
        }

        public void delete(int id)
        {
            var obj = getSVById(id);
            myDb.SinhViens.Remove(obj);
            myDb.SaveChanges();
        }

        public void update(SinhVien sinhVien)
        {
            var obj = getSVById(sinhVien.IdSinhVien);
            obj.HoTen = sinhVien.HoTen;
            obj.NgaySinh = sinhVien.NgaySinh;
            obj.SoDienThoai = sinhVien.SoDienThoai;
            obj.DiaChi = sinhVien.DiaChi;
            obj.IdLopTaiChinh = sinhVien.IdLopTaiChinh;
            myDb.SaveChanges();
        }
        
        public List<LopTaiChinh> getLop()
        {
            return myDb.LopTaiChinhs.ToList();
        }
    }
}