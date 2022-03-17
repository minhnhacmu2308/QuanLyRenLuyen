using QuanLyRenLuyen.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyRenLuyen.Daos
{
    public class HocKyDao
    {
        DbConTextQl myDb = new DbConTextQl();

        public List<HocKy> getHocKyByIdUser(int idUser)
        {
            var listHocKy = myDb.ChamDiemRenLuyens.Where(x => x.IdSinhVien == idUser).Select(x => x.IdHocKy).ToList();
            var list = myDb.HocKies.Where(x => !listHocKy.Contains(x.IdHocKy)).ToList();
            return list;
        }

    }
}