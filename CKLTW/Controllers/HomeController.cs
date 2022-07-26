using CKLTW.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CKLTW.Controllers
{
    public class HomeController : Controller
    {
        GKLTW12Entities db = new GKLTW12Entities();
        // GET: SanPham
        [ChildActionOnly]
        public ActionResult TaiKhoan()
        {
            var tk = Session["TAIKHOAN"] as List<TaiKhoanModels>;
            ViewBag.TaiKhoan = tk;
            return PartialView("_TaiKhoanPartial");
        }
        public ActionResult Index()
        {
            var sanpham = db.SANPHAM.Where(sp => sp.DaXoa == false)
                .Select(sp => new SanPhamModels
                {

                    MaSanPham = sp.MaSanPham,
                    TenSanPham = sp.TenSanPham,
                    Anhbia = sp.Anhbia,
                    Mota = sp.Mota,
                    Giaban = sp.Giaban,
                    Soluongton = sp.Soluongton,
                    Ngaycapnhat = sp.Ngaycapnhat,
                    MaCD = sp.MaCD,
                    MaNCC = sp.MaNCC,
                    Khuyenmai = sp.Khuyenmai,
                    GiaKhuyenmai = (int)sp.Giaban * (double)(100 - sp.Khuyenmai) / 100

                });
            ViewBag.SanPham = sanpham;
            return View();
        }
        public ActionResult Chitiet(int id)
        {
            var sanpham = db.SANPHAM.Where(sp => sp.DaXoa == false && sp.MaSanPham == id)
                .Select(sp => new SanPhamModels
                {

                    MaSanPham = sp.MaSanPham,
                    TenSanPham = sp.TenSanPham,
                    Anhbia = sp.Anhbia,
                    AnhbiaCT = sp.AnhbiaCT,
                    Mota = sp.Mota,
                    Giaban = sp.Giaban,
                    Soluongton = sp.Soluongton,
                    Ngaycapnhat = sp.Ngaycapnhat,
                    MaCD = sp.MaCD,
                    MaNCC = sp.MaNCC,
                    Khuyenmai = sp.Khuyenmai,
                    GiaKhuyenmai = (int)sp.Giaban * (double)(100 - sp.Khuyenmai) / 100

                })
                .FirstOrDefault();
            ViewBag.SanPham = sanpham;
            return View();
        }
        [HttpGet]
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangKy(TaiKhoanModels model)
        {
            if (ModelState.IsValid)
            {
                KHACHHANG kh = new KHACHHANG();
                kh.MaKH = model.MaKH;
                kh.HoTen = model.HoTen;
                kh.TaiKhoan = model.TaiKhoan;
                kh.MatKhau = model.MatKhau;
                kh.NgaySinh = model.NgaySinh;
                kh.DiaChi = model.DiaChi;
                kh.Email = model.Email;
                kh.DienThoai = model.DienThoai;

                db.KHACHHANG.Add(kh);
                db.SaveChanges();
                return RedirectToAction("DangNhap", "Home");
            }
            else // Nếu nhập sai
            {
                return View();
            }
        }
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangNhap(TaiKhoanModels model)
        {
            var taikhoan = db.KHACHHANG
                .Where(x => x.TaiKhoan == model.TaiKhoan && x.MatKhau == model.MatKhau)
                .FirstOrDefault();
            if (taikhoan != null)
            {
                Session["TAIKHOAN"] = taikhoan;
                return RedirectToAction("Index", "Home");
            }
            return View();
        }
        [ChildActionOnly]
        public ActionResult TenDangNhap()
        {
            var tk = Session["TAIKHOAN"];
            ViewBag.TenDN = tk;
            return PartialView("_TenDangNhapPartial");
        }
        [ChildActionOnly]
        public ActionResult TheLoai()
        {
            var theloai = db.CHUDE.ToList();
            ViewBag.TheLoai = theloai;
            return PartialView("TheLoai");
        }
        public ActionResult Checkout()
        {
            var giohang = Session["GIOHANG"] as List<SanPhamModels>;
            ViewBag.Giohang = giohang;
            return View();
        }
        public ActionResult ThemVaoGio(int id)
        {
            var giohang = Session["GIOHANG"] as List<SanPhamModels>;
            if (giohang == null)
            {
                giohang = new List<SanPhamModels>();
                Session["GIOHANG"] = giohang;

            }
            var timkem = giohang.Find(x => x.MaSanPham == id);
            var tam = db.SANPHAM.Where(x => x.MaSanPham == id).FirstOrDefault();
            var sanpham = new SanPhamModels();
            if(timkem==null)
            {
                            sanpham.MaSanPham = tam.MaSanPham;
                            sanpham.TenSanPham = tam.TenSanPham;
                            sanpham.Anhbia = tam.Anhbia;
                sanpham.GiaKhuyenmai = (int)tam.Giaban * (double)(100 - tam.Khuyenmai) / 100;
                            sanpham.SoLuong = 1;
                sanpham.GiaTong = (double)sanpham.GiaKhuyenmai * sanpham.SoLuong;
               
                giohang.Add(sanpham);
          
            }    
            else
            {
                timkem.SoLuong += 1;
                timkem.GiaTong = (double)timkem.GiaKhuyenmai* timkem.SoLuong;
            }    
            

            return RedirectToAction("Checkout");
        }
        public ActionResult XoaKhoiGio(int id)
        {
            var giohang = Session["GIOHANG"] as List<SanPhamModels>;
            var timkem = giohang.Find(x => x.MaSanPham == id);
            if (timkem != null)
            {
                giohang.RemoveAll(x => x.MaSanPham == id);
            }
            return RedirectToAction("Checkout");
        }
        [ChildActionOnly]
        public ActionResult GioHang()
        {
            var giohang = Session["GIOHANG"] as List<SanPhamModels>;
            ViewBag.GioHang = giohang;
            return PartialView("_GioHangPartial");
        }
        public ActionResult DangXuat()
        {
            Session["TAIKHOAN"] = null;
            Session["GioHang"] = null;
            return RedirectToAction("Index");
        }
        [ChildActionOnly]
        public ActionResult TongSoLuong()
        {
            var giohang = Session["GIOHANG"] as List<SanPhamModels>;
            ViewBag.GioHang = giohang;
            return PartialView("_TongSoLuong");
        }
        public ActionResult ThanhToan()
        {

            return View();
        }
        public ActionResult About()
        {
           

            return View();
        }

        public ActionResult Contact()
        {

            return View();
        }
    }
}