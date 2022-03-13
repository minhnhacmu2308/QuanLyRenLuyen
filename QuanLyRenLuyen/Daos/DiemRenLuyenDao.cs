using QuanLyRenLuyen.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyRenLuyen.Daos
{
    public class DiemRenLuyenDao
    {
        DbConTextQl myDb = new DbConTextQl();
        public List<DiemRenLuyen> getAll()
        {
            return myDb.DiemRenLuyens.ToList();
        }

        public List<DiemRenLuyen> getFilter(int from, int to)
        {
            return myDb.DiemRenLuyens.Where(x => x.TongDiem >= from && x.TongDiem <= to).ToList();
        }

        public void update(DiemRenLuyen diemRenLuyen)
        {
            var obj = myDb.DiemRenLuyens.FirstOrDefault(x => x.IdDiemRenLuyen == diemRenLuyen.IdDiemRenLuyen);
            obj.TongDiem = diemRenLuyen.TongDiem;
            myDb.SaveChanges();
        }
        public void delete(int id)
        {
            var obj = myDb.DiemRenLuyens.FirstOrDefault(x => x.IdDiemRenLuyen == id);
            myDb.DiemRenLuyens.Remove(obj);
            var obj1 = myDb.ChamDiemRenLuyens.Where(x => x.IdSinhVien == obj.IdSinhVien && x.HocKy == obj.HocKy).ToList();
            myDb.ChamDiemRenLuyens.RemoveRange(obj1);
            myDb.SaveChanges();
        }
    }
}