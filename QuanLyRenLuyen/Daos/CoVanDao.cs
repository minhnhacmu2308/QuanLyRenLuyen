using QuanLyRenLuyen.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyRenLuyen.Daos
{
    public class CoVanDao
    {
        DbConTextQl myDb = new DbConTextQl();
        public bool checkLogin(string macvht,string matkhau)
        {
            var cvht = myDb.CoVanHocTaps.FirstOrDefault(x => x.MaCVHT == macvht && x.MatKhau == matkhau);
            if(cvht != null)
            {
                return true;
            }
            return false;
        }
        public CoVanHocTap getCVByMaCV(string macv)
        {
            return myDb.CoVanHocTaps.FirstOrDefault(x => x.MaCVHT == macv);
        }
    }
}