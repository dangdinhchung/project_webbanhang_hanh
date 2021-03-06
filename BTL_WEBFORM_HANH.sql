USE [master]
GO
/****** Object:  Database [BTL_webformhanh]    Script Date: 5/16/2019 10:45:53 PM ******/
CREATE DATABASE [BTL_webformhanh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BTL_webformhanh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BTL_webformhanh.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BTL_webformhanh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BTL_webformhanh_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BTL_webformhanh] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BTL_webformhanh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BTL_webformhanh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET ARITHABORT OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BTL_webformhanh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BTL_webformhanh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BTL_webformhanh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BTL_webformhanh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET RECOVERY FULL 
GO
ALTER DATABASE [BTL_webformhanh] SET  MULTI_USER 
GO
ALTER DATABASE [BTL_webformhanh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BTL_webformhanh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BTL_webformhanh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BTL_webformhanh] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BTL_webformhanh] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BTL_webformhanh', N'ON'
GO
USE [BTL_webformhanh]
GO
/****** Object:  Table [dbo].[donhang]    Script Date: 5/16/2019 10:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[donhang](
	[madonhang] [int] IDENTITY(1,1) NOT NULL,
	[ngaylap] [date] NULL,
	[manguoidung] [int] NULL,
	[tennguoinhan] [nvarchar](50) NULL,
	[sdt] [nvarchar](11) NULL,
	[diachi] [nvarchar](50) NULL,
	[tinhtrang] [nvarchar](50) NULL CONSTRAINT [donhang_trangthai1]  DEFAULT (N'Da gui'),
	[thanhtoan] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[madonhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Donhang_Sanpham]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhang_Sanpham](
	[madonhang] [int] NOT NULL,
	[masanpham] [int] NOT NULL,
	[soluong] [int] NULL,
	[dongia] [nchar](30) NULL,
 CONSTRAINT [PK_Donhang_Sanpham] PRIMARY KEY CLUSTERED 
(
	[madonhang] ASC,
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hang]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hang](
	[mahang] [int] IDENTITY(1,1) NOT NULL,
	[tenhang] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hang_Loaihang]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang_Loaihang](
	[mahang] [int] NOT NULL,
	[maloaihang] [int] NOT NULL,
 CONSTRAINT [PK_Hang_Loaihang] PRIMARY KEY CLUSTERED 
(
	[mahang] ASC,
	[maloaihang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loaihang]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaihang](
	[maloaihang] [int] IDENTITY(1,1) NOT NULL,
	[tenloaihang] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maloaihang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[quyen]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quyen](
	[maquyen] [int] NOT NULL,
	[tenquyen] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maquyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[masanpham] [int] IDENTITY(1,1) NOT NULL,
	[tensanpham] [nvarchar](50) NULL,
	[soluong] [int] NULL,
	[dongia] [float] NULL,
	[trangthai] [bit] NULL,
	[tenanh] [nvarchar](50) NULL,
	[mahang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[mataikhoan] [int] IDENTITY(1,1) NOT NULL,
	[tentaikhoan] [nvarchar](50) NULL,
	[email] [nchar](30) NULL,
	[ngaysinh] [date] NULL,
	[pass] [nchar](30) NULL,
	[maquyen] [int] NULL CONSTRAINT [taikhoan_quyen]  DEFAULT ((2)),
	[gioitinh] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[mataikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tintuc]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tintuc](
	[mabantin] [int] IDENTITY(1,1) NOT NULL,
	[tieude] [nvarchar](300) NULL,
	[ndtomtat] [nvarchar](300) NULL,
	[noidung] [ntext] NULL,
	[ngaydang] [date] NULL,
	[hinhanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[mabantin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  View [dbo].[vhangloaihang]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create view [dbo].[vhangloaihang]
  as
  select hang.mahang,tenhang,loaihang.maloaihang,tenloaihang 
  from hang,Hang_Loaihang,loaihang
  where hang.mahang=Hang_Loaihang.mahang and
  Hang_Loaihang.maloaihang=loaihang.maloaihang

GO
/****** Object:  View [dbo].[vsanpham]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create view [dbo].[vsanpham]
 as 
 select masanpham,tensanpham,soluong,dongia,trangthai,tenanh,sanpham.mahang,tenhang,loaihang.maloaihang,tenloaihang 
 from sanpham,Hang_Loaihang,hang,loaihang
  where sanpham.mahang=hang.mahang and hang.mahang=Hang_Loaihang.mahang 
  and Hang_Loaihang.maloaihang=loaihang.maloaihang

GO
SET IDENTITY_INSERT [dbo].[donhang] ON 

INSERT [dbo].[donhang] ([madonhang], [ngaylap], [manguoidung], [tennguoinhan], [sdt], [diachi], [tinhtrang], [thanhtoan]) VALUES (1, CAST(N'2019-05-16' AS Date), 2, N'ấ', N'1231212432', N'sâs', N'Dang van chuyen', 0)
INSERT [dbo].[donhang] ([madonhang], [ngaylap], [manguoidung], [tennguoinhan], [sdt], [diachi], [tinhtrang], [thanhtoan]) VALUES (2, CAST(N'2019-05-16' AS Date), 2, N'ấ', N'1231212432', N'sâs', N'Da gui', 0)
INSERT [dbo].[donhang] ([madonhang], [ngaylap], [manguoidung], [tennguoinhan], [sdt], [diachi], [tinhtrang], [thanhtoan]) VALUES (3, CAST(N'2019-05-16' AS Date), 2, N'ấ', N'1231212432', N'sâs', N'Da gui', 0)
INSERT [dbo].[donhang] ([madonhang], [ngaylap], [manguoidung], [tennguoinhan], [sdt], [diachi], [tinhtrang], [thanhtoan]) VALUES (4, CAST(N'2019-05-16' AS Date), 2, N'ấ', N'1231212432', N'sâs', N'Da gui', 1)
INSERT [dbo].[donhang] ([madonhang], [ngaylap], [manguoidung], [tennguoinhan], [sdt], [diachi], [tinhtrang], [thanhtoan]) VALUES (5, CAST(N'2019-05-16' AS Date), 2, N'ấ', N'1231212432', N'sâs', N'Da gui', 1)
INSERT [dbo].[donhang] ([madonhang], [ngaylap], [manguoidung], [tennguoinhan], [sdt], [diachi], [tinhtrang], [thanhtoan]) VALUES (6, CAST(N'2019-05-16' AS Date), 2, N'ấ', N'1231212432', N'sâs', N'Dang van chuyen', 1)
SET IDENTITY_INSERT [dbo].[donhang] OFF
INSERT [dbo].[Donhang_Sanpham] ([madonhang], [masanpham], [soluong], [dongia]) VALUES (1, 2, 2, N'                    5990000.00')
INSERT [dbo].[Donhang_Sanpham] ([madonhang], [masanpham], [soluong], [dongia]) VALUES (2, 2, 2, N'                    5990000.00')
INSERT [dbo].[Donhang_Sanpham] ([madonhang], [masanpham], [soluong], [dongia]) VALUES (3, 2, 2, N'                    5990000.00')
INSERT [dbo].[Donhang_Sanpham] ([madonhang], [masanpham], [soluong], [dongia]) VALUES (4, 2, 2, N'                    5990000.00')
INSERT [dbo].[Donhang_Sanpham] ([madonhang], [masanpham], [soluong], [dongia]) VALUES (5, 2, 2, N'                    5990000.00')
INSERT [dbo].[Donhang_Sanpham] ([madonhang], [masanpham], [soluong], [dongia]) VALUES (6, 2, 2, N'                    5990000.00')
SET IDENTITY_INSERT [dbo].[hang] ON 

INSERT [dbo].[hang] ([mahang], [tenhang]) VALUES (1, N'Đồng hồ Epos Swiss')
INSERT [dbo].[hang] ([mahang], [tenhang]) VALUES (2, N'
Đồng hồ Atlantic Swiss')
INSERT [dbo].[hang] ([mahang], [tenhang]) VALUES (3, N'Đồng hồ Jacques Lemans')
INSERT [dbo].[hang] ([mahang], [tenhang]) VALUES (4, N'Đồng hồ Citizen')
INSERT [dbo].[hang] ([mahang], [tenhang]) VALUES (5, N'Bruno Sohnle Glashutte')
INSERT [dbo].[hang] ([mahang], [tenhang]) VALUES (6, N'Đồng hồ Aries Gold')
INSERT [dbo].[hang] ([mahang], [tenhang]) VALUES (7, N'Dây đồng hồ Epos')
INSERT [dbo].[hang] ([mahang], [tenhang]) VALUES (8, N'Dây đồng hồ Bruno')
SET IDENTITY_INSERT [dbo].[hang] OFF
INSERT [dbo].[Hang_Loaihang] ([mahang], [maloaihang]) VALUES (1, 1)
INSERT [dbo].[Hang_Loaihang] ([mahang], [maloaihang]) VALUES (2, 1)
INSERT [dbo].[Hang_Loaihang] ([mahang], [maloaihang]) VALUES (3, 1)
INSERT [dbo].[Hang_Loaihang] ([mahang], [maloaihang]) VALUES (4, 2)
INSERT [dbo].[Hang_Loaihang] ([mahang], [maloaihang]) VALUES (5, 2)
INSERT [dbo].[Hang_Loaihang] ([mahang], [maloaihang]) VALUES (6, 2)
INSERT [dbo].[Hang_Loaihang] ([mahang], [maloaihang]) VALUES (7, 3)
INSERT [dbo].[Hang_Loaihang] ([mahang], [maloaihang]) VALUES (8, 3)
SET IDENTITY_INSERT [dbo].[loaihang] ON 

INSERT [dbo].[loaihang] ([maloaihang], [tenloaihang]) VALUES (1, N'Đồng Hồ Nam')
INSERT [dbo].[loaihang] ([maloaihang], [tenloaihang]) VALUES (2, N'Đồng Hồ Nữ')
INSERT [dbo].[loaihang] ([maloaihang], [tenloaihang]) VALUES (3, N'Phụ kiện')
SET IDENTITY_INSERT [dbo].[loaihang] OFF
INSERT [dbo].[quyen] ([maquyen], [tenquyen]) VALUES (1, N'admin')
INSERT [dbo].[quyen] ([maquyen], [tenquyen]) VALUES (2, N'thanhvien')
SET IDENTITY_INSERT [dbo].[sanpham] ON 

INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (1, N'Đồng hồ Aries Gold AG-L5032Z G-W', 2, 2990000, NULL, N'image\15.jpg', 6)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (2, N'Atlantic AT-60342.45.11', 1, 8390000, NULL, N'image\05.jpg', 2)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (3, N'Đồng hồ Jacques Lemans JL-40-1D', 2, 2470000, NULL, N'image\07.jpg', 3)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (4, N'Đồng hồ Epos E-7000.701.22.16.26', 3, 14000000, NULL, N'image\01.jpg', 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (5, N'Đồng hồ Epos E-7000.701.20.98.25', 3, 13000000, NULL, N'image\02.jpg', 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (6, N'Đồng hồ Citizen EZ6334-50P', 2, 3840000, NULL, N'image\10.jpg', 4)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (7, N'Đồng hồ Jacques Lemans JL-42-6H', 3, 8670000, NULL, N'image\08.jpg', 3)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (8, N'Đồng hồ Jacques Lemans JL-42-6C', 2, 3090000, NULL, N'image\09.jpg', 3)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (9, N'Đồng hồ Epos E-7000.701.22.15.25', 3, 12600000, NULL, N'image\03.jpg', 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (10, N'Đồng hồ Epos 3390.156.22.20.32', 2, 56000000, NULL, N'image\04.jpg', 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (11, N'Đồng hồ Bruno  BS-17-13185-950', 2, 11200000, NULL, N'image\12.jpg', 5)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (12, N'Đồng hồ Bruno BS-17-23189-292', 3, 7690000, NULL, N'image\13.jpg', 5)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (13, N'Đồng hồ Bruno sohnle BS-17-33192-263', 4, 4390000, NULL, N'image\14.jpg', 5)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (14, N'Đồng hồ Aries Gold AG-L5021 G-MB', 2, 2490000, NULL, N'image\16.jpg', 6)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (15, N'Đồng hồ Atlantic AT-60335.43.28G', 2, 17170000, NULL, N'image\06.jpg', 2)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (16, N'Dây da Bruno D BS Đ-OL20', 3, 190000, NULL, N'image\18.jpg', 8)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (17, N'Đồng hồ Citizen EZ6324-02A', 3, 1500000, NULL, N'image\19.jpg', 4)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (18, N'Dây kim loại mạ vàng epos D EP 5R-RG', 2, 80000, NULL, N'image\17.jpg', 7)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (19, N'Dây kim loại mạ vàng Epos D EP 5S-IG', 1, 120000, NULL, N'image\18.jpg', 7)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (20, N'Đồng hồ Aries Gold AG-L5005Z G-MOP', 2, 2800000, NULL, N'image\20.png', 6)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [soluong], [dongia], [trangthai], [tenanh], [mahang]) VALUES (21, N'Đồng hồ Citizen EJ6083-59E', 12, 3410000, NULL, N'image\11.jpg', 4)
SET IDENTITY_INSERT [dbo].[sanpham] OFF
SET IDENTITY_INSERT [dbo].[taikhoan] ON 

INSERT [dbo].[taikhoan] ([mataikhoan], [tentaikhoan], [email], [ngaysinh], [pass], [maquyen], [gioitinh]) VALUES (1, N'chung', N'dangdinhchung98@gmail.com     ', CAST(N'1998-11-06' AS Date), N'111111                        ', 1, 1)
INSERT [dbo].[taikhoan] ([mataikhoan], [tentaikhoan], [email], [ngaysinh], [pass], [maquyen], [gioitinh]) VALUES (2, N'hung', N'hung@gmail.com                ', CAST(N'1997-12-12' AS Date), N'111111                        ', 2, 1)
SET IDENTITY_INSERT [dbo].[taikhoan] OFF
SET IDENTITY_INSERT [dbo].[tintuc] ON 

INSERT [dbo].[tintuc] ([mabantin], [tieude], [ndtomtat], [noidung], [ngaydang], [hinhanh]) VALUES (2, N'KHÁM PHÁ ĐỒNG HỒ KINYUED', N'Đồng hồ Kinyued của nước nào? Đồng hồ Kinyued có tốt không?', N'Theo thông tin từ Alibaba, sàn thương mại điện tử lớn nhất Trung Quốc, một trong những kênh giao dịch quốc tế có gian hàng chính thức của Kinyued, công ty đồng hồ này có địa chỉ tại Tòa nhà 805 Hongyu, đường Gushu 2, Xixiang, quận Bao’an, Shenzhen, Guangdong, China.

Chuyên ngành chính của Kinyued là kinh doanh đồng hồ thương hiệu Kinyued, sản xuất đồng hồ OEM, ODM, dây đồng hồ. Họ có thể cung cấp sản phẩm cho nam, nữ, cặp đôi với các tùy chọn máy cùng các chất liệu khác nhau.', CAST(N'2019-03-01' AS Date), N'image/tintuc2.jpeg')
SET IDENTITY_INSERT [dbo].[tintuc] OFF
/****** Object:  StoredProcedure [dbo].[capnhapdonhang]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[capnhapdonhang]
   @ma int,
   @tinhtrang nvarchar(50)
   as begin update donhang set tinhtrang=@tinhtrang
   where madonhang=@ma
   end

GO
/****** Object:  StoredProcedure [dbo].[capnhaploaihang]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[capnhaploaihang] 
  @ten nvarchar(50)
  as begin update loaihang set tenloaihang= @ten
  end

GO
/****** Object:  StoredProcedure [dbo].[capnhaptin]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[capnhaptin]
@mabantin int,
  @tieude nvarchar(300),
  @ndtomtat nvarchar(300),
  @nd ntext,
  @ngaydang date,
  @hinhanh nvarchar(50)
  as
  begin
   Update tintuc
   set
   tieude=@tieude,
   ndtomtat=@ndtomtat,noidung=@nd,ngaydang=@ngaydang,hinhanh=@hinhanh
   where mabantin=@mabantin
  END

GO
/****** Object:  StoredProcedure [dbo].[capnhaptk]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[capnhaptk]
 @ma int,
  @ten nvarchar (50),
 @email nchar(30),
 @pass nchar(30),
 @maquyen int,
 @gt bit
 as begin update taikhoan set tentaikhoan=@ten,
 email=@email,pass=@pass,maquyen=@maquyen,gioitinh=@gt 
 where mataikhoan=@ma
 end

GO
/****** Object:  StoredProcedure [dbo].[donhang_byma]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[donhang_byma]
   @ma int
   as begin
   select * from donhang where madonhang=@ma
   end

GO
/****** Object:  StoredProcedure [dbo].[hiendonhang]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[hiendonhang]
   as begin
   select * from donhang
   end

GO
/****** Object:  StoredProcedure [dbo].[hienhangbyma]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[hienhangbyma]
  @ma int
  as begin  select hang.mahang,tenhang,loaihang.maloaihang,tenloaihang 
  from hang,Hang_Loaihang,loaihang
  where hang.mahang=Hang_Loaihang.mahang and
  Hang_Loaihang.maloaihang=loaihang.maloaihang
  and hang.mahang=@ma
  end

GO
/****** Object:  StoredProcedure [dbo].[hienloaihangbyma]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[hienloaihangbyma]
  @ma int
  as begin select * from loaihang where maloaihang=@ma
  end

GO
/****** Object:  StoredProcedure [dbo].[hiennguoidung]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[hiennguoidung]
  as
  begin select * from taikhoan,quyen
  where taikhoan.maquyen=quyen.maquyen
  end

GO
/****** Object:  StoredProcedure [dbo].[hiensanpham]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[hiensanpham]
as
begin
select masanpham,tensanpham,soluong,dongia,tenanh,tenhang,sanpham.mahang,
case trangthai when 'False' then N'Hết hàng' when 'True' then N'Còn hàng' end as trangthai
 from sanpham,hang
where sanpham.mahang=hang.mahang
end

GO
/****** Object:  StoredProcedure [dbo].[hiensanphambyma]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[hiensanphambyma]
@ma int
as
begin
select masanpham,tensanpham,soluong,dongia,trangthai,tenanh,sanpham.mahang,
tenhang,maloaihang
from sanpham,hang,Hang_Loaihang
where masanpham=@ma and
sanpham.mahang=hang.mahang and hang.mahang=Hang_Loaihang.mahang
end

GO
/****** Object:  StoredProcedure [dbo].[hientin]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[hientin]
  as
  begin
  select mabantin,tieude,ndtomtat,ngaydang from tintuc 
  end

GO
/****** Object:  StoredProcedure [dbo].[hientinbyma]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[hientinbyma]
   @matin int
  as
  begin
  select * from tintuc where mabantin=@matin
  end

GO
/****** Object:  StoredProcedure [dbo].[nguoidung_byemail]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[nguoidung_byemail]
  @email nchar(30)
  as
  begin
  select * from taikhoan where email=@email
  end

GO
/****** Object:  StoredProcedure [dbo].[nguoidung_byma]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[nguoidung_byma]
  @ma int 
  as begin select * from taikhoan
  where mataikhoan=@ma
  end

GO
/****** Object:  StoredProcedure [dbo].[nguoidung_bypass]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[nguoidung_bypass]
 @pass nchar(30)
  as
  begin
  select * from taikhoan where pass=@pass
  end

GO
/****** Object:  StoredProcedure [dbo].[nguoidung_bytennd]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[nguoidung_bytennd]
  @tennd nchar(30)
  as
  begin
  select * from taikhoan where tentaikhoan=@tennd
  end

GO
/****** Object:  StoredProcedure [dbo].[them_nguoidung]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[them_nguoidung]
  @tentk nvarchar(50),
  @email nchar(30),
  @pass nchar(30),
  @gioitinh bit
  AS
  begin
  insert into taikhoan(tentaikhoan,email,pass,gioitinh) values(@tentk,@email,@pass,@gioitinh)
  END

GO
/****** Object:  StoredProcedure [dbo].[themdonhang]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[themdonhang]
  @ma int OUTPUT,
   @ngaylap date,
   @matk int,
   @ten nvarchar(50),
   @sdt nvarchar(11),
   @diachi nvarchar(50),
   @thanhtoan bit
   as
   begin 
   insert into donhang (ngaylap,manguoidung,tennguoinhan,sdt,diachi,thanhtoan)
   values(@ngaylap,@matk,@ten,@sdt,@diachi,@thanhtoan)
   set @ma=SCOPE_IDENTITY()
   end

GO
/****** Object:  StoredProcedure [dbo].[themdonhang_sanpham]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[themdonhang_sanpham]
   @ma int,@masp int,@soluong int,@dongia money
   as begin
   insert into Donhang_Sanpham(madonhang,masanpham,soluong,dongia)
   values(@ma,@masp,@soluong,@dongia)
   end

GO
/****** Object:  StoredProcedure [dbo].[themloaihang]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[themloaihang] 
  
  @ten nvarchar(50)
  as begin insert into loaihang (tenloaihang) values (@ten)
  end

GO
/****** Object:  StoredProcedure [dbo].[themsanpham]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[themsanpham]
@tensanpham nvarchar(50),
@soluong int,
@dongia money,
@trangthai bit,
@tenanh nvarchar(50),
@mahang int
as
begin
insert into sanpham(tensanpham,soluong,dongia,tenanh,mahang,trangthai) values
(@tensanpham,@soluong,@dongia,@tenanh,@mahang,@trangthai)
end

GO
/****** Object:  StoredProcedure [dbo].[themtin]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[themtin]
  @tieude nvarchar(300),
  @ndtomtat nvarchar(300),
  @nd ntext,
  @ngaydang date,
  @hinhanh nvarchar(50)
  as
  begin
   insert into tintuc(tieude,ndtomtat,noidung,ngaydang,hinhanh) values(@tieude,@ndtomtat,@nd,@ngaydang,@hinhanh)
  END

GO
/****** Object:  StoredProcedure [dbo].[themtk]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[themtk]
  @ten nvarchar (50),
 @email nchar(30),
 @pass nchar(30),
 @maquyen int,
 @gt bit
 as begin insert into taikhoan (tentaikhoan,email,pass,maquyen,gioitinh) values
 (@ten,@email,@pass,@maquyen,@gt)
 end

GO
/****** Object:  StoredProcedure [dbo].[xoasanpham]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[xoasanpham]
  @ma int
  as begin
  delete sanpham where masanpham=@ma
  end

GO
/****** Object:  StoredProcedure [dbo].[xoatin]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[xoatin]
  @matin int
  as begin
  delete tintuc where mabantin=@matin
  end

GO
/****** Object:  StoredProcedure [dbo].[xoatk]    Script Date: 5/16/2019 10:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[xoatk]
 @ma int
 as begin delete taikhoan where mataikhoan=@ma
 end

GO
USE [master]
GO
ALTER DATABASE [BTL_webformhanh] SET  READ_WRITE 
GO
