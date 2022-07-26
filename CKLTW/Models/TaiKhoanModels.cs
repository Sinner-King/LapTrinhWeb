using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CKLTW.Models
{
    public class TaiKhoanModels
    {
        public int MaKH { get; set; }

        [Required(ErrorMessage = "Tên không được bỏ trống")]
        [Display(Name = "Tên")]
        public string HoTen { get; set; }
        [Required(ErrorMessage = "Tài khoản không được bỏ trống")]
        [Display(Name = "Tài khoản")]
        public string TaiKhoan { get; set; }
        [Required(ErrorMessage = "Mật khẩu không được bỏ trống")]
        [Display(Name = "Mật khẩu")]
        public string MatKhau { get; set; }

        [Display(Name = "Tên")]
        public DateTime? NgaySinh { get; set; }
        public string DiaChi { get; set; }
        [Display(Name = "Email")]
        public string Email { get; set; }
        public string DienThoai { get; set; }
    }
}