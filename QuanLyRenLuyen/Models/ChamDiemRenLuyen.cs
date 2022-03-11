using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace QuanLyRenLuyen.Models
{
    public class ChamDiemRenLuyen
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdChamDiemRenLuyen{ get; set; }

        public int HocKy { get; set; }

        public int Diem { get; set; }

        [Required]
        public string TieuChi { get; set; }

        public int IdSinhVien { get; set; }

        public int TrangThai { get; set; }

        public virtual SinhVien SinhVien { get; set; }
    }
}