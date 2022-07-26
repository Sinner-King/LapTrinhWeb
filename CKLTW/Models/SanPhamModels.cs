using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CKLTW.Models
{
    public class SanPhamModels
    {
        public int MaSanPham { get; set; }
        public string TenSanPham { get; set; }
        public decimal? Giaban { get; set; }
        public string Mota { get; set; }
        public string Anhbia { get; set; }
        public string AnhbiaCT { get; set; }
        public DateTime? Ngaycapnhat { get; set; }
        public int? Soluongton { get; set; }
        public int? MaCD { get; set; }
        public int? MaNCC { get; set; }
        public bool? DaXoa { get; set; }
        public int? Khuyenmai { get; set; }
        public double? GiaKhuyenmai { get; set; }
        public double? GiaTong { get; set; }
        public int SoLuong { get; set; }
    }
}