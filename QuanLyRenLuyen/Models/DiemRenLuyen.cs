using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace QuanLyRenLuyen.Models
{
    public class DiemRenLuyen
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdDiemRenLuyen { get; set; }

        public int HocKy { get; set; }

        public int TongDiem { get; set; }

        public int IdSinhVien { get; set; }

        public int TrangThai { get; set; }

        public virtual SinhVien SinhVien { get; set; }
    }
}