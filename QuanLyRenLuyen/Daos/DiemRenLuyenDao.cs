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
            return myDb.Set<DiemRenLuyen>().ToList();
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

        public  void Add(List<ChamDiemRenLuyen> chamDiemRenLuyens)
        {
            foreach (var item in chamDiemRenLuyens)
            {
                myDb.ChamDiemRenLuyens.Add(item);
            }
            myDb.SaveChanges();
        }

        public void AddDiem(DiemRenLuyen diemRenLuyen)
        {
            myDb.DiemRenLuyens.Add(diemRenLuyen);
            myDb.SaveChanges();
        }

        public int TongDiem(int idSinhvien , int hocKy)
        {
            int tong = 0;
            tong = myDb.ChamDiemRenLuyens.Where(x => x.IdHocKy == hocKy && x.IdSinhVien == idSinhvien).Select(x => x.Diem).ToList().Sum();         
            return tong;
        }
        public List<ChamDiemRenLuyen> GetByHocKyAndId(int idHocKy, int idSinhVien)
        {
            return myDb.ChamDiemRenLuyens.Where(x => x.IdHocKy == idHocKy && x.IdSinhVien == idSinhVien).ToList();
        }
        public DiemRenLuyen GetDiem(int idHocKy, int idSinhVien)
        {
            return myDb.DiemRenLuyens.FirstOrDefault(x => x.IdHocKy == idHocKy && x.IdSinhVien == idSinhVien);
        }
    }
}