USE [master]
GO
/****** Object:  Database [GKLTW]    Script Date: 18/10/2021 1:24:28 PM ******/
CREATE DATABASE [GKLTW]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GKLTW', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\GKLTW.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GKLTW_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\GKLTW_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GKLTW] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GKLTW].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GKLTW] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GKLTW] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GKLTW] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GKLTW] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GKLTW] SET ARITHABORT OFF 
GO
ALTER DATABASE [GKLTW] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GKLTW] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [GKLTW] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GKLTW] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GKLTW] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GKLTW] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GKLTW] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GKLTW] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GKLTW] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GKLTW] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GKLTW] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GKLTW] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GKLTW] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GKLTW] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GKLTW] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GKLTW] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GKLTW] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GKLTW] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GKLTW] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GKLTW] SET  MULTI_USER 
GO
ALTER DATABASE [GKLTW] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GKLTW] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GKLTW] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GKLTW] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [GKLTW]
GO
/****** Object:  Table [dbo].[CHITIETDONTHANG]    Script Date: 18/10/2021 1:24:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONTHANG](
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CHITIETDONTHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUDE]    Script Date: 18/10/2021 1:24:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUDE](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 18/10/2021 1:24:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Dathanhtoan] [bit] NULL,
	[Tinhtranggiaohang] [bit] NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 18/10/2021 1:24:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Email] [varchar](50) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 18/10/2021 1:24:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](200) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 18/10/2021 1:24:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[Giaban] [decimal](18, 0) NULL,
	[Khuyenmai] [int] NULL,
	[Mota] [nvarchar](max) NULL,
	[Anhbia] [nvarchar](max) NULL,
	[AnhbiaCT] [nvarchar](max) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Soluongton] [int] NULL,
	[MaCD] [int] NULL,
	[MaNCC] [int] NULL,
	[DaXoa] [bit] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CHUDE] ON 

INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (1, N'Điện Thoại')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (2, N'Máy tính')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (3, N'Tivi')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (4, N'Tủ lạnh')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (5, N'Máy giặt')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (6, N'Điều hòa')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (7, N'Lò vi sóng')
SET IDENTITY_INSERT [dbo].[CHUDE] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (1, N'Minh Thái', N'Tai', N'mk', NULL, NULL, N'Thainhok250701@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (1, N'Apple', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (2, N'Samsung', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (3, N'OPPO', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (4, N'ASUS', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (5, N'Acer', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (6, N'LG', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (7, N'Panasonic', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (8, N'Toshiba', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (1, N'iPhone 12 Pro Max', CAST(29890000 AS Decimal(18, 0)), 5, N'Thương hiệu: Apple
Đứng thứ 75 trong Top 1000 Điện thoại Smartphone bán chạy tháng này', N'https://salt.tikicdn.com/cache/200x200/ts/product/0f/4a/19/e2c1e692c76e5aeb99baa2dcef13cdcb.jpg.webp', N'', NULL, 20, 1, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (2, N'iPhone 13 PRO MAX', CAST(32490000 AS Decimal(18, 0)), 5, N' iPhone mạnh mẽ nhất, nhiều công nghệ nhất cũng được chính thức ra mắt. Chúng ta vẫn có một cụm camera mới với kích thước lớn hơn, tích hợp một loạt những nâng cấp nhằm cho ra những bức ảnh, video tốt hơn. Màn hình Pro Motion 120Hz cũng là điểm nhấn mới của iPhone dòng Pro năm nay bên cạnh thời lượng pin được kéo dài đáng kể.', N'https://www.viendongmobile.com/vnt_upload/product/09_2021/thumbs/250_crop_Blue_1.png', NULL, NULL, 15, 1, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (3, N'iPhone 11 PRO MAX', CAST(15490000 AS Decimal(18, 0)), 5, N' iPhone mạnh mẽ nhất, nhiều công nghệ nhất cũng được chính thức ra mắt. Chúng ta vẫn có một cụm camera mới với kích thước lớn hơn, tích hợp một loạt những nâng cấp nhằm cho ra những bức ảnh, video tốt hơn. Màn hình Pro Motion 120Hz cũng là điểm nhấn mới của iPhone dòng Pro năm nay bên cạnh thời lượng pin được kéo dài đáng kể.', N'data:image/webp;base64,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', NULL, NULL, 10, 1, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (4, N'OPPO A15', CAST(3150000 AS Decimal(18, 0)), 10, N'OPPO - thương hiệu luôn nằm trong top 5 hãng smartphone lớn nhất Việt Nam. Mới đây, hãng đã ra mắt sản phẩm OPPO A15 với thiết kế trẻ trung, mang tính thẩm mỹ cao. Đây là mẫu điện thoại thông minh có tới ba camera AI đẳng cấp mà giá thành lại vô cùng hợp lý.', N'https://cdn.tgdd.vn/Products/Images/42/229885/oppo-a15-white-1-200x200.jpg', NULL, NULL, 20, 1, 3, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (5, N'OPPO Reno6', CAST(12990000 AS Decimal(18, 0)), 10, N'Điện thoại OPPO Reno6 5G là sản phẩm của công nghệ thiết kế vô cùng hoàn hảo và ấn tượng. Các góc cạnh của máy được bo cong mềm mại, uyển chuyển mang đến sự mượt mà và tinh tế. Kích thước máy nhỏ gọn dễ dàng cầm nắm trong quá trình sử dụng', N'https://www.duchuymobile.com/images/detailed/42/oppo-reno-6-5g.jpg', NULL, NULL, 10, 1, 3, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (6, N'OPPO A31', CAST(4290000 AS Decimal(18, 0)), 10, N'Lần đầu cầm Galaxy A31 trên tay, bạn sẽ lập tức bị thu hút bởi màn hình Infinity-U 6.4 inch của chiếc điện thoại này. Cách thiết kế đưa camera selfie vào không gian hiển thị giúp Samsung rút gọn viền bao quanh mặt trước và tạo hiệu ứng màn hình tràn cạnh cuốn hút.', N'https://cdn.tgdd.vn/Products/Images/42/217856/oppo-a31-den-new-600x600-200x200.jpg', NULL, NULL, 15, 1, 3, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (7, N'Samsung Galaxy A12', CAST(4290000 AS Decimal(18, 0)), 5, N'Samsung Galaxy A12 mang diện mạo thân thuộc của những chiếc Samsung tiền nhiệm. Với thiết kế nguyên khối, lớp vỏ máy được đúc bao quanh thân máy chắc chắn, bền chặt. Phần camera trước được đặt trong notch hình giọt nước giúp tăng diện tích cho màn hình.', N'https://cdn.tgdd.vn/Products/Images/42/228151/samsung-galaxy-a12-trang-600x600-1-200x200.jpg', NULL, NULL, 20, 1, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (8, N'Samsung Galaxy A32', CAST(6690000 AS Decimal(18, 0)), 5, N'Samsung Galaxy A32 4G có mặt lưng nhựa cao cấp với thiết kế đơn giản, trang nhã, không chỉ giúp bảo vệ máy mà còn tăng độ bóng bẩy cho smartphone, mang đến vẻ ngoài đẳng cấp cho người sở hữu', N'https://cdn.tgdd.vn/Products/Images/42/234315/samsung-galaxy-a32-4g-thumb-tim-600x600-200x200.jpg', NULL, NULL, 10, 1, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (9, N'Samsung Galaxy S20', CAST(13990000 AS Decimal(18, 0)), 5, N'Samsung Galaxy S20 Ultra 5G (12GB | 128GB) Mỹ Mới 100% được trang bị một màn hình kích thước 6.2 inch độ phân giải 2K sử dụng tấm nền Dynamic AMOLED 2X mới nhất từ nhà sản xuất Samsung.

Màn hình này cho khả năng tái tạo màu sắc đầy đủ và chính xác, đem đến cho bạn những trải nghiệm hình ảnh sống động, chân thực đồng thời giảm lượng ánh sáng xanh bảo vệ sức khỏe người dùng.', N'https://cdn.tgdd.vn/Products/Images/42/217937/samsung-galaxy-s20-ultra-600x600-1-600x600.jpg', NULL, NULL, 20, 1, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (10, N'VivoBook 15', CAST(18990000 AS Decimal(18, 0)), 10, N'Laptop Asus VivoBook 15 A512FA-EJ1171T với bộ vi xử lý Intel Core mới nhất bạn sẽ luôn sẵn sàng giải quyết mọi công việc hằng ngày nhanh chóng nhờ khả năng làm việc đa nhiệm, chỉnh sửa đa phương tiện và chơi game phổ thông. Và với kết nối không dây..', N'https://cdn.techzones.vn/Data/Sites/1/Product/31970/techzones-asus-vivobook-15-a515ea-bq489t-1.png', NULL, NULL, 5, 2, 4, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (11, N'VivoBook 14', CAST(17790000 AS Decimal(18, 0)), 10, N'Vivobook  A415EA là dòng sản phẩm máy tính xách tay với thiết kế độc đáo mới được ra mắt của thương hiệu laptop Asus mang đến sự tiên lợi cho người dùng. Được chăm chút trong từng chi tiết, Asus A415EA với màn hình Nano Edge mỏng 4 cạnh cùng thiết kế bản lề Ergolift mang đến một trải nghiệm hoàn toàn mới cho người dùng.', N'https://cdn.techzones.vn/Data/Sites/1/Product/31589/techzones-asus-vivobook-14-a415ea-eb358t.png', NULL, NULL, 15, 2, 4, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (12, N'VivoBook Flip 14', CAST(15990000 AS Decimal(18, 0)), 15, N'ASUS VivoBook Flip 14 đã quay trở lại — với diện mạo mới đầy táo bạo khiến con tim phải thổn thức. Đây là một chiếc laptop linh hoạt đầy cá tính, với lớp hoàn thiện màu Đen Độc Bản mỏng nhẹ và phím Enter màu sắc tương phản cùng chữ và viền vàng. Được sinh ra cho hiệu năng xuất sắc', N'https://cdn.techzones.vn/Data/Sites/1/Product/31591/techzones-asus-vivobook-flip-14-tp470-1.jpg', NULL, NULL, 10, 2, 4, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (13, N'Nitro 5', CAST(25990000 AS Decimal(18, 0)), 10, N'Acer Nitro 5 2021 đang là chiếc laptop gaming tầm trung bán chạy nhất hiện trên thị trường. Không chỉ bởi giá cả hợp lý mà nó còn mang đến nhiều ưu điểm vượt trội so với người tiền nhiệm. Tuy nhiên thực hư hiệu năng ra sao, liệu rằng có Acer Nitro 5 có phải là “bình cũ, rượu mới “ hay nó có thực sự đáng tiền để mua. Hãy cùng Lapvip tìm hiểu chi tiết trong bài viết dưới đây nhé.

', N'https://cdn.techzones.vn/Data/Sites/1/Product/29498/techzones-acer-nitro-5-2021-4.png', NULL, NULL, 10, 2, 5, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (14, N'Acer Aspire 3', CAST(15590000 AS Decimal(18, 0)), 10, N'Acer Aspire 3 A315 56 58EB i5 (NX.HS5SV.00B) là chiếc laptop mỏng gọn sử dụng chip thế hệ thứ 10 mới hứa hẹn sẽ mang lại trải nghiệm sử dụng tốt cho giới văn phòng và học sinh sinh viên Acer Aspire 3 mang trong mình một thiết kế trang nhã và gọn nhẹ với độ dày chỉ 19.9 mm - trọng lượng 1.7 kg, phù hợp cho các bạn học sinh, sinh viên hay dân văn phòng thường xuyên đi lại.', N'https://cdn.techzones.vn/Data/Sites/1/Product/31975/techzones-acer-aspire-3-a314-35-p6jf-pentium-n6000-4gb-512gb-ssd.jpg', NULL, NULL, 20, 2, 5, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (15, N'Acer Aspire 5 ', CAST(17990000 AS Decimal(18, 0)), 5, N'Laptop Acer Aspire 5 A515-56-54PK sở hữu chip Intel thế hệ 11. RAM 8GB giúp máy có khả năng đa nhiệm tốt. Kết hợp với ổ cứng SSD 512GB NVMe đưa tới tốc độ xử lý dữ liệu đóng/ mở máy/ file cực nhanh. Bộ nhớ dung lượng lớn giúp người dùng lưu trữ được nhiều dữ liệu.

Với cấu hình này Acer Aspire chắc chắn đáp ứng tốt mọi yêu cầu học tập làm việc của bạn. Bạn thoải mái lưu trữ video, hình ảnh, tài liệu cần thiết mà không cần quá lo bị đầy ổ cứng', N'https://cdn.techzones.vn/Data/Sites/1/Product/31254/techzones-acer-aspire-5-a514-54-39ku.png', NULL, NULL, 5, 2, 5, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (16, N'Tivi LG 55UN7000PTA', CAST(15355600 AS Decimal(18, 0)), 5, N'Smart Tivi LG 4K 55 inch 55UP7550PTC có màn hình và đường viền mỏng kết hợp với thiết kế thẩm mỹ sẽ làm đẹp hơn cho bất kỳ không gian nào, giúp bạn tô điểm cho không gian của căn phòng thêm sang trọng và thanh lịch.', N'https://salt.tikicdn.com/cache/100x100/ts/product/a3/1d/90/df7ff52429daaa9f6b58404e6312781d.jpg.webp', NULL, NULL, 15, 3, 6, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (17, N'Tivi LG 49UN7290PTF', CAST(14790000 AS Decimal(18, 0)), 5, N'Smart Tivi LG 4K 49 inch 49UN7290PTFsở hữu đường viền thanh mảnh đẹp mắt, tổng thể hài hòa cùng gam màu đen mạnh mẽ làm tăng thêm sự tinh tế cho không gian giải trí của bạn. Chân đế hình chữ V ngược vững chắc, giúp bạn có thể thoải mái đặt
tivi ở vị trí nào bạn muốn.', N'https://salt.tikicdn.com/cache/400x400/ts/product/99/fb/f2/345a18deab39a78846aae3b3749d123b.jpg.webp', NULL, NULL, 20, 3, 6, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (18, N'Tivi LG 43LM6360PTB', CAST(9990000 AS Decimal(18, 0)), 5, N'Smart Tivi LG 4K 43 inch 43LM6360PTB được thiết kế với viền mỏng và chi tiết hiện đại, chân đế hình chữ V úp ngược giúp cho tivi LG 43LM6360PTB có thể đứng vững trên nhiều vị trí khác nhau. Độ phân giải Full HD mang lại hình ảnh chính xác hơn với độ phân giải tuyệt đẹp và màu sắc sống động. Kích thước màn hình 43 inch, chiếc tivi LG giá rẻ này có thể lắp đặt cho những căn phòng có diện nhỏ và vừa như phòng ngủ, phòng khách nhỏ.', N'https://salt.tikicdn.com/cache/400x400/ts/product/b7/94/15/64c3908858250f1a1891521a2746824d.jpg.webp', NULL, NULL, 20, 3, 6, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (21, N'Tủ lạnh Samsung Inverter', CAST(10544700 AS Decimal(18, 0)), 10, N'Dung tích: 267L Kiểu tủ: Ngăn đá dưới Công nghệ: Digital Inverter Khay: Kính chịu lực Công nghệ làm lạnh vòm giúp duy trì nhiệt độ và độ ẩm Trang bị ngăn đông mềm Optimal Fresh Zone Bộ lọc than hoạt tính giúp tinh lọc không khí bên trong
', N'https://salt.tikicdn.com/cache/400x400/ts/product/9d/a3/bd/0bd899db572a7a3d0f7d7f801c0e7dbc.jpg.webp', NULL, NULL, 15, 4, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (22, N'Tủ lạnh LG Inverter', CAST(9490000 AS Decimal(18, 0)), 5, N'Tủ lạnh LG Inverter 315 lít GN-D315BL thuộc dòng tủ lạnh ngăn đá trên, sở hữu thiết kế nhỏ gọn, tay cầm chìm tinh tế, cùng tông màu đen cá tính, dễ dàng kết hợp với bất kì không gian bếp nào Chiếc tủ lạnh LG này sở hữu dung tích 315 lít, trong đó dung tích ngăn lạnh chiếm 244 lít, ngăn đá là 71 lít sẽ đáp ứng đủ cho nhu cầu dự trữ thực phẩm của gia đình có từ 3 - 4 người', N'https://salt.tikicdn.com/cache/400x400/ts/product/dd/cd/c3/f584fdad5405d641253434b5b42564c7.jpg.webp', NULL, NULL, 5, 4, 6, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (23, N'Tủ lạnh RB27N4010BU', CAST(10390220 AS Decimal(18, 0)), 10, N'Tủ lạnh Samsung thế hệ mới với ngăn đông mềm Optimal Fresh zone giúp giữ thịt cá tươi ngon, trọn dưỡng chất, hoàn toàn không đông đá ở nhiệt độ đông mềm lý tưởng -1°C .

* Dựa trên kiểm tra hiệu năng Intertek đối với RB30N4180B1 ở chế độ cài đặt mặc định. Kết quả có thể khác nhau tùy thuộc vào hoàn cảnh sử dụng thực phẩm, độ tươi của thực phẩm trước khi lưu trữ.', N'https://salt.tikicdn.com/cache/400x400/ts/product/7f/d7/6d/9e60ccad6fd42e366319c4fbfa088e52.jpg.webp', NULL, NULL, 10, 4, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (24, N'Máy giặt AI EcoBubble', CAST(13060222 AS Decimal(18, 0)), 15, N'AI Wash trang bị 4 loại cảm biến để nhận biết khối lượng và độ bẩn áo quần; từ đó tối ưu lượng nước, lượng nước giặt, nước xả và thời gian giặt xả; giúp giặt sạch hoàn hảo mà không phải tốn nhiều công sức hay xử lý trước mỗi lần giặt.', N'https://salt.tikicdn.com/cache/400x400/ts/product/89/a2/66/69f041ba7b0cb97acc01f52ac9ab5c40.jpg.webp', NULL, NULL, 20, 5, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (25, N'Máy giặt NA-F90A4GRV', CAST(6110000 AS Decimal(18, 0)), 5, N'Máy giặt Panasonic NA-F90A4GRV có thiết kế cửa trên đơn giản, dễ dàng kết hợp với mọi kiểu không gian nội thất. Hơn nữa, chiếc máy giặt đến từ thương hiệu Panasonic này có bảng hiển thị bằng tiếng Việt đặt về phía sau, giúp người dùng dễ dàng thao tác, sử dụng máy.', N'https://salt.tikicdn.com/cache/400x400/ts/product/6f/f3/32/f96ca9eac251592e397bbbd6d6a886fb.jpg.webp', NULL, NULL, 10, 5, 7, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (26, N'Máy giặt NA-F80VS9GRV', CAST(6590000 AS Decimal(18, 0)), 5, N'Nhờ công nghệ này, máy giặt Panasonic có thể tạo ra luồng xoáy nước siêu mạnh giúp quần áo di chuyển lên xuống liên tục theo chuyển động chà giặt, tăng cường độ ma sát để có thể làm sạch nhanh chóng.

Với công nghệ giặt chuyên biệt StainMaster với 3 chế độ tích hợp sẵn: Lưu hương - Bùn đất - Nước sốt giúp đánh bật hiệu quả những vết bẩn cứng đầu, phù hợp cho các loại quần áo thể thao, ngoài trời,...', N'https://salt.tikicdn.com/cache/400x400/ts/product/7e/81/26/0a65b20ae09d1dd1f9d4c73ff6ec2e2f.jpg.webp', NULL, NULL, 15, 5, 7, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (27, N'Máy Lạnh Inverter 1 HP', CAST(10400000 AS Decimal(18, 0)), 5, NULL, N'https://salt.tikicdn.com/cache/400x400/ts/product/16/8c/64/946fdf3100c1d1562f3e0f334c39d062.jpg.webp', NULL, NULL, 20, 6, 7, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (28, N'Máy Lạnh Inverter 1.5 HP', CAST(9500000 AS Decimal(18, 0)), 5, N'Panasonic N12WKH-8 là sản phẩm của thương hiệu điều hòa nổi tiếng thế giới và đang chiếm giữ thị phần lớn nhất trong các hãng điều hòa dân dụng tại Việt Nam. Ở Panasonic N12WKH-8, bạn sẽ tìm thấy những đặc điểm nổi bật của điều hòa Panasonic: thiết kế hiện đại, dễ phối hợp với các nội thất khác trong phòng, tiết kiệm điện năng với môi chất làm lạnh thế hệ mới nhất. Panasonic cũng luôn là tiên phong trong áp dụng các công nghệ diệt khuẩn, làm lạnh nhanh mới nhất trong ngành công nghiệp điện lạnh.', N'https://salt.tikicdn.com/cache/400x400/ts/product/5e/e2/7c/9f387f031ff1f80299b2c2f4699b7bf1.png.webp', NULL, NULL, 20, 6, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (29, N'Máy Lạnh Inverter 2 HP', CAST(15990000 AS Decimal(18, 0)), 10, N'Máy lạnh Sharp Inverter 2 HP AH-X18XEW sở hữu thiết kế sang trọng, đường nét cứng cáp mạnh mẽ, cùng với tông màu trắng thanh lịch, làm nổi bật không gian nội thất nhà bạn.Đi kèm công suất lớn 2 HP, máy lạnh phù hợp với những căn phòng có diện tích từ 20 - 30 m2 như phòng khách, phòng họp, phòng ngủ lớn', N'https://salt.tikicdn.com/cache/400x400/ts/product/8b/46/07/23a5ed16552cff491420a4c3e37b218f.png.webp', NULL, NULL, 10, 6, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (30, N'Lò vi sóng NN-ST34HMYUE', CAST(2496500 AS Decimal(18, 0)), 5, N'Thiết kế đẹp mắt, kiểu dáng sang trọng, phù hợp mọi gian bếp. Dung tích 23 lít phù hợp sử dụng gia đình 3 - 4 người. Công suất vi sóng 800 W, công suất nướng 1000 W giúp nấu ăn nhanh chóng. Đa dạng chức năng: Lò có thể nấu, hâm nóng, rã đông, nướng, nướng kết hợp vi sóng... Thương hiệu Panasonic của Nhật Bản, sản xuất tại Trung Quốc', N'https://salt.tikicdn.com/cache/400x400/ts/product/92/e5/2c/6e7564bd665ec55d8e6fe7b396999a06.jpg.webp', NULL, NULL, 15, 7, 7, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (31, N'Lò vi sóng BlueStone MOB-7707', CAST(3250000 AS Decimal(18, 0)), 5, N'Lò vi sóng kèm chức năng nướng là một thiết bị nhà bếp đa năng mang đến nhiều tiện ích cho các chị em. Lò vi sóng Samsung MG23K3575AS/SV-N được phối màu đen bạc đẹp mắt, hạn chế bám bẩn, tôn thêm nét đẹp cho gian bếp nhà bạn.

Dung tích 23 lít đáp ứng cho nhu cầu sử dụng của gia đình từ 3 - 4 thành viên', N'https://salt.tikicdn.com/cache/400x400/media/catalog/producttmp/74/d0/73/27a81ebeb02d6d996b2e33d897fa7c86.jpg.webp', NULL, NULL, 10, 7, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (32, N'Lò Vi Sóng ER-SGS23', CAST(2299000 AS Decimal(18, 0)), 5, N'Dung tích: 23L Công suất: 800W Thiết kế mặt gương đen sang trọng Khoang lò được làm bằng thép tráng men bền đẹp Bảng điều khiển bằng tiếng Việt dễ dàng sử dụng Đa chức năng: hâm, nấu, rã đông nhanh chóng thuận tiện và chức năng nướng tiện lợi', N'https://salt.tikicdn.com/cache/400x400/ts/product/21/d2/16/865a06ae913cf6cae7f8ac1ffc053133.jpg.webp', NULL, NULL, 15, 7, 8, 0)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONDATHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_SACH] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_SACH]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_Chude] FOREIGN KEY([MaCD])
REFERENCES [dbo].[CHUDE] ([MaCD])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_Chude]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_NhaXB] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_NhaXB]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [CK__CHITIETDO__Dongi__440B1D61] CHECK  (([Dongia]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [CK__CHITIETDO__Dongi__440B1D61]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [CK__CHITIETDO__Soluo__4316F928] CHECK  (([Soluong]>(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [CK__CHITIETDO__Soluo__4316F928]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [CK__SANPHAM__Giaban__20C1E124] CHECK  (([Giaban]>=(0)))
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [CK__SANPHAM__Giaban__20C1E124]
GO
USE [master]
GO
ALTER DATABASE [GKLTW] SET  READ_WRITE 
GO
