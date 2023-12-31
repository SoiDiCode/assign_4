USE [master]
GO
/****** Object:  Database [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041]    Script Date: 7/29/2023 11:23:50 AM ******/
CREATE DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET ARITHABORT OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET  MULTI_USER 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET QUERY_STORE = OFF
GO
USE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041]
GO
/****** Object:  Table [dbo].[ChiTietSP]    Script Date: 7/29/2023 11:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSP](
	[Id] [uniqueidentifier] NOT NULL,
	[IdSP] [uniqueidentifier] NULL,
	[IdNsx] [uniqueidentifier] NULL,
	[IdMauSac] [uniqueidentifier] NULL,
	[IdDongSP] [uniqueidentifier] NULL,
	[NamBH] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[GiaNhap] [decimal](20, 0) NULL,
	[GiaBan] [decimal](20, 0) NULL,
	[ImgUrl] [varchar](max) NULL,
 CONSTRAINT [PK__ChiTietS__3214EC074759FE3D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 7/29/2023 11:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 7/29/2023 11:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongSP]    Script Date: 7/29/2023 11:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongSP](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 7/29/2023 11:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id] [uniqueidentifier] NOT NULL,
	[IdKH] [uniqueidentifier] NULL,
	[IdNV] [uniqueidentifier] NULL,
	[Ma] [varchar](20) NULL,
	[NgayTao] [date] NULL,
	[NgayThanhToan] [date] NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	[TinhTrang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHangChiTiet]    Script Date: 7/29/2023 11:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHangChiTiet](
	[IdGioHang] [uniqueidentifier] NOT NULL,
	[IdChiTietSP] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](20, 0) NULL,
	[DonGiaKhiGiam] [decimal](20, 0) NULL,
 CONSTRAINT [PK_GioHangCT] PRIMARY KEY CLUSTERED 
(
	[IdGioHang] ASC,
	[IdChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 7/29/2023 11:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [uniqueidentifier] NOT NULL,
	[IdKH] [uniqueidentifier] NULL,
	[IdNV] [uniqueidentifier] NULL,
	[Ma] [varchar](max) NULL,
	[NgayTao] [date] NULL,
	[NgayThanhToan] [date] NULL,
	[NgayShip] [date] NULL,
	[NgayNhan] [date] NULL,
	[TinhTrang] [int] NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	[tongTien] [decimal](20, 0) NULL,
 CONSTRAINT [PK__HoaDon__3214EC07E8568A5C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 7/29/2023 11:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[IdHoaDon] [uniqueidentifier] NOT NULL,
	[IdChiTietSP] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](20, 0) NULL,
 CONSTRAINT [PK_HoaDonCT] PRIMARY KEY CLUSTERED 
(
	[IdHoaDon] ASC,
	[IdChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/29/2023 11:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[TenDem] [nvarchar](30) NULL,
	[Ho] [nvarchar](30) NULL,
	[NgaySinh] [date] NULL,
	[Sdt] [varchar](30) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
	[MatKhau] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 7/29/2023 11:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 7/29/2023 11:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[TenDem] [nvarchar](30) NULL,
	[Ho] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	[MatKhau] [varchar](max) NULL,
	[IdCH] [uniqueidentifier] NULL,
	[IdCV] [uniqueidentifier] NULL,
	[IdGuiBC] [uniqueidentifier] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSX]    Script Date: 7/29/2023 11:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSX](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/29/2023 11:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](max) NULL,
 CONSTRAINT [PK__SanPham__3214EC0743C906E2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'da3f97ef-2e37-4fc6-b89a-017ae83c693d', N'83f2aa92-fca1-4e29-a2c2-ebeb3d7f51f6', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'f505f38e-bb7c-459f-8166-279899289bc2', 2, N'Với thiết kế nỉ , mẫu mã hiện đại , logo đa đang hoodie teelab đang là 1 sự lựa chọn hàng đầu cho nhưng chiếc hoodie mà trong 
  tủ đồ của bạn phải có', 200, CAST(169000 AS Decimal(20, 0)), CAST(540000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/kem2.jpg?v=1668004276000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'c2c14fd3-6eef-4845-91bb-04ec105c3fd0', N'1fe8cd4d-3881-4d32-9eb5-5715496231c7', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'7154dd13-1803-4760-a84a-34a80e1b207e', 2, N'Áo Polo trẻ trung , năng động phù hợp với nhưng buổi dã ngoại , đi chơi', 200, CAST(169000 AS Decimal(20, 0)), CAST(270000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/ahu2keci-1-iirh-hinh-mat-sau-0xanhla-2c9a23e0-db5a-4635-981f-0f33cf1c2801.jpg?v=1683193308000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'c84b370f-15e0-4a46-abf9-06f93308daeb', N'f97d7b4f-5320-4efa-87b3-87ea364b8abb', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'7154dd13-1803-4760-a84a-34a80e1b207e', 2, N'Áo Polo trẻ trung , năng động phù hợp với nhưng buổi dã ngoại , đi chơi', 200, CAST(169000 AS Decimal(20, 0)), CAST(280000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/nta126-8tsinztt-1-3smo-hinh-mat-sau0.jpg?v=1681179431000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'247ae014-8d00-47e6-822d-0f30c900f814', N'0ca35f2e-df3e-4a2a-84a4-b934ac8e514b', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'7154dd13-1803-4760-a84a-34a80e1b207e', 2, N'Áo Polo trẻ trung , năng động phù hợp với nhưng buổi dã ngoại , đi chơi', 200, CAST(169000 AS Decimal(20, 0)), CAST(275000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/344774288-156909667100970-5228520632248828312-n.jpg?v=1683192956000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'efe94b93-6cff-4c75-b23f-15868672a244', N'817bba69-d40d-4146-91ea-3eccff17cdfb', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'7154dd13-1803-4760-a84a-34a80e1b207e', 2, N'Áo Polo trẻ trung , năng động phù hợp với nhưng buổi dã ngoại , đi chơi', 200, CAST(169000 AS Decimal(20, 0)), CAST(210000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/2-a70ad418-0941-46d7-ac03-df3c7b56c41a.jpg?v=1689841606000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'29750344-d4d4-4812-8009-230b745846b6', N'e47b992f-784a-4215-96f5-9dc6110ec02f', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'd1dd5549-026b-4c18-b1cb-8dd9fa8b2cf8', 2, N'Mưa đã có ô , nắng đã có mũ , cảm cúm đã có tipi , lạnh đối với dân fa là 1 nỗi buồn nhưng
  đừng lo đã có teelab , không cấp gấu 37 độ cho bạn nhưng sẽ làm bạn quên đi cái lạnh bằng nhưng chiếc áo khoác ấm áp', 200, CAST(169000 AS Decimal(20, 0)), CAST(435000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/go8503-vsn0dzpl-1-swme-hinh-mat-sau-0.jpg?v=1684232997000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'8fd27586-0e5a-4281-9c7c-23225c459989', N'564c39ba-263e-440e-8bb7-772a794ac91a', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'd1dd5549-026b-4c18-b1cb-8dd9fa8b2cf8', 2, N'Mưa đã có ô , nắng đã có mũ , cảm cúm đã có tipi , lạnh đối với dân fa là 1 nỗi buồn nhưng
  đừng lo đã có teelab , không cấp gấu 37 độ cho bạn nhưng sẽ làm bạn quên đi cái lạnh bằng nhưng chiếc áo khoác ấm áp', 200, CAST(169000 AS Decimal(20, 0)), CAST(415000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/z3946753832710-aca8900cac1f2e7effb77076b5d4f539.jpg?v=1689740012000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'ec944bb7-7e6f-4dcf-a0f4-2f0c9a6eeece', N'a91578cb-09d9-4df7-a676-10d44f1ac564', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'f505f38e-bb7c-459f-8166-279899289bc2', 2, N'Với thiết kế nỉ , mẫu mã hiện đại , logo đa đang hoodie teelab đang là 1 sự lựa chọn hàng đầu cho nhưng chiếc hoodie mà trong 
  tủ đồ của bạn phải có', 200, CAST(169000 AS Decimal(20, 0)), CAST(500000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/kem1-866de065-9387-4775-9189-15769cd607b6.jpg?v=1689667980000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'2c5cb7ca-8bce-4e14-b939-30f4f5efe15e', N'59db74bc-90c0-4082-aff8-89acca733b9d', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'77e981c2-7579-4e63-8dc6-6cea9b0223a2', 2, N'Áo Sơ mi trang trọng , lịch sự  , 1 mẫu quần áo mà ai cũng phải có trong tủ đồ', 200, CAST(169000 AS Decimal(20, 0)), CAST(245000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/2-56431c6a-8a22-4163-80e5-1cbd27dc19dd.jpg?v=1688544547000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'1c2fe13d-62e9-4c69-9384-4125e760a2ba', N'8faf1186-f860-4124-8167-2bf2410bbb9f', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'f505f38e-bb7c-459f-8166-279899289bc2', 2, N'Với thiết kế nỉ , mẫu mã hiện đại , logo đa đang hoodie teelab đang là 1 sự lựa chọn hàng đầu cho nhưng chiếc hoodie mà trong 
  tủ đồ của bạn phải có', 200, CAST(169000 AS Decimal(20, 0)), CAST(595000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/yxnkih3p-1-cxsp-hinh-mat-sau-0.jpg?v=1667816496000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'9c686a18-9f69-49dd-918a-42373f757921', N'7c1c4848-e018-412a-ba00-62455cf07a14', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'77e981c2-7579-4e63-8dc6-6cea9b0223a2', 2, N'Áo Sơ mi trang trọng , lịch sự  , 1 mẫu quần áo mà ai cũng phải có trong tủ đồ', 200, CAST(169000 AS Decimal(20, 0)), CAST(315000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/den1-0e09b7cd-6b1f-4436-9314-f5e55573ec92.jpg?v=1689660508000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'1f7dfb52-b8b5-4f55-a1cf-4d9abf25376e', N'fbf91fdd-3a74-46f0-91c5-049f20ddd84e', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'77e981c2-7579-4e63-8dc6-6cea9b0223a2', 2, N'Áo Sơ mi trang trọng , lịch sự  , 1 mẫu quần áo mà ai cũng phải có trong tủ đồ', 200, CAST(169000 AS Decimal(20, 0)), CAST(310000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/te9006-8tsinztt-1-fe0f-hinh-mat-truoc-0.jpg?v=1681195530000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'da26ac01-2972-458c-b99f-505da1b55aaa', N'1cee4538-81d9-4b13-abe3-1cdccd2458b7', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'b73be8ac-b96c-46d9-9db3-cc9bd0b2a9d8', 2, N'Thoáng mát phù hợp cho mùa thu , mùa hè , kết hợp với vải thấm hút', 200, CAST(149000 AS Decimal(20, 0)), CAST(199000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/nta101-otdh1mb0-1-vjde-hinh-mat-sau-0.jpg?v=1689835932000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'9e7eb21f-7d81-4429-a2ac-516f0ccc38a3', N'4ada1a9d-c9d8-4ae4-bf1b-33b13ef2f7cd', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'77e981c2-7579-4e63-8dc6-6cea9b0223a2', 2, N'Áo Sơ mi trang trọng , lịch sự  , 1 mẫu quần áo mà ai cũng phải có trong tủ đồ', 200, CAST(169000 AS Decimal(20, 0)), CAST(300000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/f8f760a2-0e41-4738-9d64-3de8eee9ba0a.jpg?v=1689658977000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'32ac2ab3-4e8e-4ce8-b742-531517849576', N'b51b3afb-aace-4dd2-9e2e-782c42d4bb71', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'b73be8ac-b96c-46d9-9db3-cc9bd0b2a9d8', 2, N'Thoáng mát phù hợp cho mùa thu , mùa hè , kết hợp với vải thấm hút', 200, CAST(149000 AS Decimal(20, 0)), CAST(199000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/te9177-vsn0dzpl-1-btm3-hinh-mat-sau-0-9e3840e7-3a94-433e-97a1-7234f4e2ebbb.jpg?v=1686898846000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'd812510c-c7d2-47bc-b432-54300c446472', N'9c55bfc0-f83e-4d26-8228-98edee83a212', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'b73be8ac-b96c-46d9-9db3-cc9bd0b2a9d8', 2, N'Thoáng mát phù hợp cho mùa thu , mùa hè , kết hợp với vải thấm hút', 200, CAST(149000 AS Decimal(20, 0)), CAST(199000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/trang-2-82b64210-2751-4ff5-b20e-d0b96c472a7c.jpg?v=1686652980000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'efbffe4e-5318-4d9a-b29f-5fb222fa0011', N'b4aafc87-728a-454b-a02f-ce8cb6229e58', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'f505f38e-bb7c-459f-8166-279899289bc2', 2, N'Với thiết kế nỉ , mẫu mã hiện đại , logo đa đang hoodie teelab đang là 1 sự lựa chọn hàng đầu cho nhưng chiếc hoodie mà trong 
  tủ đồ của bạn phải có', 200, CAST(169000 AS Decimal(20, 0)), CAST(560000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/2.jpg?v=1680511220000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'41487bfa-23ba-46cf-adb8-68c92b22783e', N'e527c690-62a2-402e-a043-773648eaa574', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'77e981c2-7579-4e63-8dc6-6cea9b0223a2', 2, N'Áo Sơ mi trang trọng , lịch sự  , 1 mẫu quần áo mà ai cũng phải có trong tủ đồ', 200, CAST(169000 AS Decimal(20, 0)), CAST(245000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/ta9049-zogku2pg-1-0uit-hinh-mat-truoc-0.jpg?v=1689847762000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'cf9ea25d-4780-4ed1-a400-6a86ca7ffeee', N'208c1e58-f90c-4420-a5a7-70c7621ad33b', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'77e981c2-7579-4e63-8dc6-6cea9b0223a2', 2, N'Áo Sơ mi trang trọng , lịch sự  , 1 mẫu quần áo mà ai cũng phải có trong tủ đồ', 200, CAST(169000 AS Decimal(20, 0)), CAST(330000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/a33d329e-420e-4427-9b11-ca5018db7d72.jpg?v=1689661905000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'8c7d9c86-32b0-4165-afaf-6bae6c8fa32a', N'f468237f-eda3-4f34-a50a-ee50812afd1d', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'd1dd5549-026b-4c18-b1cb-8dd9fa8b2cf8', 2, N'Mưa đã có ô , nắng đã có mũ , cảm cúm đã có tipi , lạnh đối với dân fa là 1 nỗi buồn nhưng
  đừng lo đã có teelab , không cấp gấu 37 độ cho bạn nhưng sẽ làm bạn quên đi cái lạnh bằng nhưng chiếc áo khoác ấm áp', 200, CAST(169000 AS Decimal(20, 0)), CAST(420000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/2-fcc6c2cc-0fc5-4388-abee-c73f97de83f4.jpg?v=1683190092000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'9e49184d-dd9c-4d6e-90d5-75827467e50b', N'48f31163-92dd-4fa8-9ea9-b8a6939c28b0', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'b73be8ac-b96c-46d9-9db3-cc9bd0b2a9d8', 2, N'Thoáng mát phù hợp cho mùa thu , mùa hè , kết hợp với vải thấm hút', 200, CAST(149000 AS Decimal(20, 0)), CAST(199000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/te9177-vsn0dzpl-1-btm3-hinh-mat-sau-0-e8596f8f-ba70-4096-a862-7d3f0d5e6a5d.jpg?v=1684227937000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'b35f8579-2ac1-40e4-a804-7b040f347bde', N'c9c05f1a-ce9d-4fb8-a2c4-7df6675a4b7d', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'b73be8ac-b96c-46d9-9db3-cc9bd0b2a9d8', 2, N'Thoáng mát phù hợp cho mùa thu , mùa hè , kết hợp với vải thấm hút', 200, CAST(149000 AS Decimal(20, 0)), CAST(199000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/te9177-vsn0dzpl-1-zdnb-hinh-mat-sau-0.jpg?v=1685432918000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'd8fcc702-ddfe-4a78-9d3b-7c447bcb5220', N'516c52eb-0855-4b01-b9cc-ded5eefccae8', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'7154dd13-1803-4760-a84a-34a80e1b207e', 2, N'Áo Polo trẻ trung , năng động phù hợp với nhưng buổi dã ngoại , đi chơi', 200, CAST(169000 AS Decimal(20, 0)), CAST(240000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/nta126-8tsinztt-1-3smo-hinh-mat-sau01.jpg?v=1686296659000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'1a6dbe1f-e95e-4d63-ad28-7fcca8f7c5d2', N'3e2825bc-5922-432c-b4a9-1cc16929d229', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'b73be8ac-b96c-46d9-9db3-cc9bd0b2a9d8', 2, N'Thoáng mát phù hợp cho mùa thu , mùa hè , kết hợp với vải thấm hút', 200, CAST(159000 AS Decimal(20, 0)), CAST(200000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/te9177-vsn0dzpl-1-btm3-hinh-mat-truoc-0.jpg?v=1689751300000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'94711056-2f80-4402-a377-8091c3362606', N'4be2ba81-c03e-4593-a20f-23476c41b4e4', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'b73be8ac-b96c-46d9-9db3-cc9bd0b2a9d8', 2, N'Thoáng mát phù hợp cho mùa thu , mùa hè , kết hợp với vải thấm hút', 200, CAST(149000 AS Decimal(20, 0)), CAST(199000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/2-4319c285-ac94-4d5f-aac0-c61038576ef4.jpg?v=1686651156000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'f75fcca1-e623-426b-b38a-821121d745b2', N'419ea2e6-e54c-4f68-aab9-b7f023ac6cf1', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'7154dd13-1803-4760-a84a-34a80e1b207e', 2, N'Áo Polo trẻ trung , năng động phù hợp với nhưng buổi dã ngoại , đi chơi', 200, CAST(169000 AS Decimal(20, 0)), CAST(230000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/a-378edf02-e7d6-4251-8c4f-9050b66e7500.jpg?v=1686298131000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'36873aed-d689-4d32-bf16-824e3383f6cf', N'20344486-b97e-4c56-9284-eae773b0820f', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'd1dd5549-026b-4c18-b1cb-8dd9fa8b2cf8', 2, N'Mưa đã có ô , nắng đã có mũ , cảm cúm đã có tipi , lạnh đối với dân fa là 1 nỗi buồn nhưng
  đừng lo đã có teelab , không cấp gấu 37 độ cho bạn nhưng sẽ làm bạn quên đi cái lạnh bằng nhưng chiếc áo khoác ấm áp', 200, CAST(169000 AS Decimal(20, 0)), CAST(435000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/y629bxbe-1-6bi3-hinh-mat-sau-0.jpg?v=1689737232000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'995ace73-f10a-490f-a914-838c6e0ed88b', N'ebc87577-bd9d-4785-9632-286e14eb4449', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'7154dd13-1803-4760-a84a-34a80e1b207e', 2, N'Áo Polo trẻ trung , năng động phù hợp với nhưng buổi dã ngoại , đi chơi', 200, CAST(169000 AS Decimal(20, 0)), CAST(230000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/2-70a65c96-8fa9-4bbb-a0c4-ebdb9f699c3e.jpg?v=1689839870000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'713b0d80-2bae-4a23-9d62-87d0b5b2df0f', N'79e28e4a-97fe-40ea-b4ef-56d0e34c508d', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'd1dd5549-026b-4c18-b1cb-8dd9fa8b2cf8', 2, N'Mưa đã có ô , nắng đã có mũ , cảm cúm đã có tipi , lạnh đối với dân fa là 1 nỗi buồn nhưng
  đừng lo đã có teelab , không cấp gấu 37 độ cho bạn nhưng sẽ làm bạn quên đi cái lạnh bằng nhưng chiếc áo khoác ấm áp', 200, CAST(169000 AS Decimal(20, 0)), CAST(435000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/m0w2iuvv-1-1hxj-hinh-mat-truoc-0asa-ff1c5085-57d8-46cc-9549-6b72c94fc107.jpg?v=1670313483000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'9bd794dd-7559-4d59-a4a4-8bb11e190b20', N'e17a0a80-d780-4894-bea2-f9e862add42d', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'f505f38e-bb7c-459f-8166-279899289bc2', 2, N'Với thiết kế nỉ , mẫu mã hiện đại , logo đa đang hoodie teelab đang là 1 sự lựa chọn hàng đầu cho nhưng chiếc hoodie mà trong 
  tủ đồ của bạn phải có', 200, CAST(169000 AS Decimal(20, 0)), CAST(536000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/1a-5b386299-1f40-41d0-be5d-c8729aadae21.jpg?v=1664869431000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'c4cc11a5-6a46-4e03-a70c-9c878e4aa3cc', N'5c73b249-b477-4b5c-bc7b-5569a21e52ec', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'd1dd5549-026b-4c18-b1cb-8dd9fa8b2cf8', 2, N'Mưa đã có ô , nắng đã có mũ , cảm cúm đã có tipi , lạnh đối với dân fa là 1 nỗi buồn nhưng
  đừng lo đã có teelab , không cấp gấu 37 độ cho bạn nhưng sẽ làm bạn quên đi cái lạnh bằng nhưng chiếc áo khoác ấm áp', 200, CAST(169000 AS Decimal(20, 0)), CAST(460000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/m0w2iuvv-1-1hxj-hinh-mat-truoc-01a.jpg?v=1664011460000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'6f57704c-47cd-49d6-bb35-a02736572249', N'60519481-c8d4-4c39-b55e-5bd5910b41f6', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'f505f38e-bb7c-459f-8166-279899289bc2', 2, N'Với thiết kế nỉ , mẫu mã hiện đại , logo đa đang hoodie teelab đang là 1 sự lựa chọn hàng đầu cho nhưng chiếc hoodie mà trong 
  tủ đồ của bạn phải có', 200, CAST(169000 AS Decimal(20, 0)), CAST(520000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/3me61sc4-1-9w28-hinh-mat-sau-0.jpg?v=1670303453000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'642d0d9c-ba45-4ab7-9d00-a37e406e7cfc', N'd5c94809-c2de-4ffa-ab4d-4a1f52eb8472', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'77e981c2-7579-4e63-8dc6-6cea9b0223a2', 2, N'Áo Sơ mi trang trọng , lịch sự  , 1 mẫu quần áo mà ai cũng phải có trong tủ đồ', 200, CAST(169000 AS Decimal(20, 0)), CAST(320000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/te9059-se8il753-1-34gn-hinh-mat-sau-0.jpg?v=1684764902000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'3cd4bf0a-41be-4e6a-b912-aceaeea2ae8c', N'37741fbd-fba4-432d-b219-231cea9f395e', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'b73be8ac-b96c-46d9-9db3-cc9bd0b2a9d8', 2, N'Thoáng mát phù hợp cho mùa thu , mùa hè , kết hợp với vải thấm hút', 200, CAST(159000 AS Decimal(20, 0)), CAST(210000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/den2-be232f26-5a10-4e53-8232-d4a6b11d6dfd.jpg?v=1686650114000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'9dbd7733-b7d2-4e32-af1c-b23c5468c45f', N'5e6a8294-02af-43f1-bdbe-0add27b5aa53', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'7154dd13-1803-4760-a84a-34a80e1b207e', 2, N'Áo Polo trẻ trung , năng động phù hợp với nhưng buổi dã ngoại , đi chơi', 200, CAST(169000 AS Decimal(20, 0)), CAST(230000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/nta126-8tsinztt-1-3smo-hinh-mat-sau01.jpg?v=1686296659000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'bd3e1ff5-b0d2-4910-9e81-b60f04e99a78', N'981b48d8-c3da-4edf-858c-36f0265e0ed7', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'd1dd5549-026b-4c18-b1cb-8dd9fa8b2cf8', 2, N'Mưa đã có ô , nắng đã có mũ , cảm cúm đã có tipi , lạnh đối với dân fa là 1 nỗi buồn nhưng
  đừng lo đã có teelab , không cấp gấu 37 độ cho bạn nhưng sẽ làm bạn quên đi cái lạnh bằng nhưng chiếc áo khoác ấm áp', 200, CAST(169000 AS Decimal(20, 0)), CAST(415000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/z3982377678457-24c30d652a228a206dea08dd8cd635e7.jpg?v=1671781505000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'c4779e25-71a6-4431-b37e-ba7ea9cd3c53', N'926f2082-d5db-481d-b747-25e7e99dc3d1', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'7154dd13-1803-4760-a84a-34a80e1b207e', 2, N'Áo Polo trẻ trung , năng động phù hợp với nhưng buổi dã ngoại , đi chơi', 200, CAST(169000 AS Decimal(20, 0)), CAST(245000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/z4252203944416-e9d006d117191dec031f14a36e3e8eb5.jpg?v=1689754817000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'583f2684-f55c-4f24-aafc-bc640d0a8619', N'f5e3f232-0a13-4782-bcac-878f21af3812', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'f505f38e-bb7c-459f-8166-279899289bc2', 2, N'Với thiết kế nỉ , mẫu mã hiện đại , logo đa đang hoodie teelab đang là 1 sự lựa chọn hàng đầu cho nhưng chiếc hoodie mà trong 
  tủ đồ của bạn phải có', 200, CAST(169000 AS Decimal(20, 0)), CAST(535000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/z3665576642921-afc0cfca4f7393d4e01b36394aec71dd-1.jpg?v=1689669171000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'41a7a843-23da-4801-979d-c5ed98a213ef', N'c09d3cd0-3519-4e5c-8590-0c7df687e887', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'77e981c2-7579-4e63-8dc6-6cea9b0223a2', 2, N'Áo Sơ mi trang trọng , lịch sự  , 1 mẫu quần áo mà ai cũng phải có trong tủ đồ', 200, CAST(169000 AS Decimal(20, 0)), CAST(310000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/wnps7417-1-lh6m-hinh-mat-truoc-0.jpg?v=1689669173000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'75807301-9812-4764-ba6a-d1da175a0b8d', N'76a12a70-56e9-4edc-bb03-a0efd6f6f4b4', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'f505f38e-bb7c-459f-8166-279899289bc2', 2, N'Với thiết kế nỉ , mẫu mã hiện đại , logo đa đang hoodie teelab đang là 1 sự lựa chọn hàng đầu cho nhưng chiếc hoodie mà trong 
  tủ đồ của bạn phải có', 200, CAST(169000 AS Decimal(20, 0)), CAST(530000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/yxnkih3p-1-luay-hinh-mat-truoc-0a-b0d74741-be6e-4709-b876-575b16534a09.jpg?v=1670832191000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'bfe14ea2-d9ca-415a-b1c6-dbebffe334a9', N'ff78939c-ede2-4100-b3dc-fe1c33dc122a', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'b73be8ac-b96c-46d9-9db3-cc9bd0b2a9d8', 2, N'Thoáng mát phù hợp cho mùa thu , mùa hè , kết hợp với vải thấm hút', 200, CAST(159000 AS Decimal(20, 0)), CAST(200000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/special-collection-den-front-2-834f66cf-00c1-4209-b45b-bc8ac83b83c6.jpg?v=1689843498000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'4e7cb856-3b4b-478f-8266-dd6510e2c23c', N'694c1a5e-3b98-4844-9511-f1f017c31550', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'b73be8ac-b96c-46d9-9db3-cc9bd0b2a9d8', 2, N'Thoáng mát phù hợp cho mùa thu , mùa hè , kết hợp với vải thấm hút', 200, CAST(149000 AS Decimal(20, 0)), CAST(199000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/te9178-11k7zwk1-1-o908-hinh-mat-truoc-0.jpg?v=1689854461000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'44f02b8d-16dc-48db-9dd7-e377303a3dcb', N'80b36cb9-44c0-44fc-bd7d-7f2bee0385dc', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'd1dd5549-026b-4c18-b1cb-8dd9fa8b2cf8', 2, N'Mưa đã có ô , nắng đã có mũ , cảm cúm đã có tipi , lạnh đối với dân fa là 1 nỗi buồn nhưng
  đừng lo đã có teelab , không cấp gấu 37 độ cho bạn nhưng sẽ làm bạn quên đi cái lạnh bằng nhưng chiếc áo khoác ấm áp', 200, CAST(169000 AS Decimal(20, 0)), CAST(425000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/z4141552626468-aa0e3fc2765d25e4e047c3bcc32cf471.jpg?v=1677485021000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'5f847dae-ba48-4461-975f-e6ccceeb64ed', N'2a3779c3-db14-4258-ae71-c897b581220f', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'd1dd5549-026b-4c18-b1cb-8dd9fa8b2cf8', 2, N'Mưa đã có ô , nắng đã có mũ , cảm cúm đã có tipi , lạnh đối với dân fa là 1 nỗi buồn nhưng
  đừng lo đã có teelab , không cấp gấu 37 độ cho bạn nhưng sẽ làm bạn quên đi cái lạnh bằng nhưng chiếc áo khoác ấm áp', 200, CAST(169000 AS Decimal(20, 0)), CAST(430000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/z3979194936839-915f26036fe224bca6da68f69387d5d4.jpg?v=1671683892000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'f0b0b3b6-0aca-4a17-ab94-f09558ebb38e', N'b5065837-aef6-40fe-8b26-2463750708cd', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'd1dd5549-026b-4c18-b1cb-8dd9fa8b2cf8', 2, N'Mưa đã có ô , nắng đã có mũ , cảm cúm đã có tipi , lạnh đối với dân fa là 1 nỗi buồn nhưng
  đừng lo đã có teelab , không cấp gấu 37 độ cho bạn nhưng sẽ làm bạn quên đi cái lạnh bằng nhưng chiếc áo khoác ấm áp', 200, CAST(169000 AS Decimal(20, 0)), CAST(435000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/942pl4px-1-udxr-hinh-mat-truoc-0-2.jpg?v=1689750727000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'02199070-d194-4e96-8596-f3b3f1ff51d8', N'ab163361-8dff-478c-a2db-e487a5eecbd5', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'f505f38e-bb7c-459f-8166-279899289bc2', 2, N'Với thiết kế nỉ , mẫu mã hiện đại , logo đa đang hoodie teelab đang là 1 sự lựa chọn hàng đầu cho nhưng chiếc hoodie mà trong 
  tủ đồ của bạn phải có', 200, CAST(169000 AS Decimal(20, 0)), CAST(565000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/yxnkih3p-1-luay-hinh-mat-sau-0a.jpg?v=1667817114000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'e489703e-6743-4902-8955-f7a6d862b75b', N'4e65ea82-ff69-411c-a492-b825e3793faa', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'77e981c2-7579-4e63-8dc6-6cea9b0223a2', 2, N'Áo Sơ mi trang trọng , lịch sự  , 1 mẫu quần áo mà ai cũng phải có trong tủ đồ', 200, CAST(169000 AS Decimal(20, 0)), CAST(335000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/z4105233008337-015f16f642a8a913072f5c4d6b3db735-1.jpg?v=16897608880000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'5d1eada5-07f9-4caf-81f0-fa6fcc19a50c', N'0336cd09-76e8-446f-b972-dc5da6e8271b', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'7154dd13-1803-4760-a84a-34a80e1b207e', 2, N'Áo Polo trẻ trung , năng động phù hợp với nhưng buổi dã ngoại , đi chơi', 200, CAST(169000 AS Decimal(20, 0)), CAST(290000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/nta126-se8il753-1-gr82-hinh-mat-sau-0.jpg?v=1684763887000')
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [ImgUrl]) VALUES (N'e32ebd4d-ae60-486e-b3ef-ffc9224fa45c', N'03dc72f4-1b2a-4271-bf6e-2b3d9432a4c3', N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'f505f38e-bb7c-459f-8166-279899289bc2', 2, N'Với thiết kế nỉ , mẫu mã hiện đại , logo đa đang hoodie teelab đang là 1 sự lựa chọn hàng đầu cho nhưng chiếc hoodie mà trong 
  tủ đồ của bạn phải có', 200, CAST(169000 AS Decimal(20, 0)), CAST(510000 AS Decimal(20, 0)), N'https://bizweb.dktcdn.net/thumb/large/100/415/697/products/z3989488554102-2f027a5054156f5eec192af6383fd239.jpg?v=1672036997000')
GO
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (N'2871f813-1b1f-4e4f-92d1-0685e7f07e43', N'NVBH', N'Nhân viên bán hàng')
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (N'5b8dc9e7-2f40-9b4d-8c3f-89b415b793ae', N'TVV', N'Tạp Vụ Vip')
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (N'1cd10828-e919-4959-900f-d7b0cb2be297', N'CHT', N'Cửa hàng trưởng')
GO
INSERT [dbo].[CuaHang] ([Id], [Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia]) VALUES (N'f1489b52-c657-4865-9d3e-04f885967c29', N'CH01', N'Vinmart+', N'Cầu Giấy', N'Hà Nội', N'Việt Nam')
INSERT [dbo].[CuaHang] ([Id], [Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia]) VALUES (N'c06148f8-4ecc-c444-9d3d-c4382c4ad571', N'CH04', N'Cicrle K', N'Hà Đông', N'Hà Nội', N'Việt Nam')
INSERT [dbo].[CuaHang] ([Id], [Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia]) VALUES (N'3a50fede-4118-4f9b-9d9e-df11f59cc52f', N'CH02', N'CO.OP Mart', N'Thanh Trì', N'Hà Nội', N'Việt Nam')
GO
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'f505f38e-bb7c-459f-8166-279899289bc2', N'DSP5', N'Hoodie')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'7154dd13-1803-4760-a84a-34a80e1b207e', N'DSP1', N'Áo Polo')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'77e981c2-7579-4e63-8dc6-6cea9b0223a2', N'DSP3', N'Áo Sơ Mi')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'd1dd5549-026b-4c18-b1cb-8dd9fa8b2cf8', N'DSP4', N'Áo Khoác')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'b73be8ac-b96c-46d9-9db3-cc9bd0b2a9d8', N'DSP2', N'Áo Thun')
GO
INSERT [dbo].[GioHang] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [DiaChi], [Sdt], [TinhTrang]) VALUES (N'dbed3928-4df1-4852-ae3c-d0ae4bf6a24f', N'fe316b99-8ba5-410d-99c7-98c10cfcab30', NULL, N'GH001', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt], [tongTien]) VALUES (N'c8055215-56c9-44fe-a6f7-066b7fa42392', N'9665d3a8-d6a3-4fd9-af27-c4cdcbd6630d', N'6ed155a6-1903-4bdf-8868-8ea90cd00e91', N'HD003', CAST(N'2023-02-18' AS Date), NULL, NULL, NULL, -1, N'Cam', N'Hà Nội', N'123456', CAST(1000000 AS Decimal(20, 0)))
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt], [tongTien]) VALUES (N'c88cb2cd-d7a8-4f12-ae1b-6f1487d203ba', NULL, NULL, N'MaHD270720231690406138986', CAST(N'2023-02-27' AS Date), NULL, NULL, NULL, 0, N'hoang', N'hn', N'555', CAST(200000 AS Decimal(20, 0)))
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt], [tongTien]) VALUES (N'842bdb28-80ba-8040-bb1d-76617d503909', N'9665d3a8-d6a3-4fd9-af27-c4cdcbd6630d', N'6e941a83-c6b7-4af6-8b6b-2f9dcbd90318', N'HD1676917902555', CAST(N'2023-03-07' AS Date), CAST(N'2023-02-21' AS Date), NULL, NULL, 1, N'Cam', N'Hà Nội', N'12345', CAST(0 AS Decimal(20, 0)))
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt], [tongTien]) VALUES (N'be532fd3-2ff5-f244-a4f7-8761b8e8b76b', N'9665d3a8-d6a3-4fd9-af27-c4cdcbd6630d', N'6e941a83-c6b7-4af6-8b6b-2f9dcbd90318', N'HD1676917948809', CAST(N'2023-04-17' AS Date), NULL, NULL, NULL, 0, N'Cam', N'Hà Nội', N'12345', CAST(2269000 AS Decimal(20, 0)))
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt], [tongTien]) VALUES (N'6e1fe5f7-bcfe-4706-bf03-9c90ddf4d899', NULL, NULL, N'MaHD270720231690398063798', CAST(N'2023-07-27' AS Date), NULL, NULL, NULL, 0, N'hoang', N'Hà Nội', N'123', CAST(1890000 AS Decimal(20, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'be532fd3-2ff5-f244-a4f7-8761b8e8b76b', N'c2c14fd3-6eef-4845-91bb-04ec105c3fd0', 6, CAST(270000 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'be532fd3-2ff5-f244-a4f7-8761b8e8b76b', N'ec944bb7-7e6f-4dcf-a0f4-2f0c9a6eeece', 1, CAST(169000 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'be532fd3-2ff5-f244-a4f7-8761b8e8b76b', N'd8fcc702-ddfe-4a78-9d3b-7c447bcb5220', 2, CAST(240000 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'6e1fe5f7-bcfe-4706-bf03-9c90ddf4d899', N'da3f97ef-2e37-4fc6-b89a-017ae83c693d', 3, CAST(540000 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'6e1fe5f7-bcfe-4706-bf03-9c90ddf4d899', N'c2c14fd3-6eef-4845-91bb-04ec105c3fd0', 1, CAST(270000 AS Decimal(20, 0)))
GO
INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [TenDem], [Ho], [NgaySinh], [Sdt], [DiaChi], [ThanhPho], [QuocGia], [MatKhau]) VALUES (N'fe316b99-8ba5-410d-99c7-98c10cfcab30', N'KH002', N'B', N'Văn', N'Nguyễn', CAST(N'2000-03-03' AS Date), N'55555', N'Cầu Giấy', N'Hà Nội', N'Việt Nam', N'123a')
INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [TenDem], [Ho], [NgaySinh], [Sdt], [DiaChi], [ThanhPho], [QuocGia], [MatKhau]) VALUES (N'9665d3a8-d6a3-4fd9-af27-c4cdcbd6630d', N'KH001', N'A', N'Văn', N'Nguyễn', CAST(N'2000-01-01' AS Date), N'0123450', N'Hà Đông', N'Hà Nội', N'Việt Nam', N'123a')
GO
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten]) VALUES (N'06667d2e-cc97-4824-a9bc-4a2f0d712c42', N'MS1', N'Basic')
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten]) VALUES (N'7f62e2ed-5ae0-481d-bdfe-ba8b151bb038', N'MS2', N'Colorful')
GO
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [TenDem], [Ho], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [MatKhau], [IdCH], [IdCV], [IdGuiBC], [TrangThai]) VALUES (N'155cfdb0-7cdd-c14e-bfa5-09e48eaf760c', N'NV1675271106679', N'Bưởi', N'Văn', N'Nguyễn', N'Nam', CAST(N'1999-08-21' AS Date), N'Hoàng mai, Hà Nội', N'0985654321', N'123a', N'f1489b52-c657-4865-9d3e-04f885967c29', N'2871f813-1b1f-4e4f-92d1-0685e7f07e43', N'6ed155a6-1903-4bdf-8868-8ea90cd00e91', 0)
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [TenDem], [Ho], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [MatKhau], [IdCH], [IdCV], [IdGuiBC], [TrangThai]) VALUES (N'6e941a83-c6b7-4af6-8b6b-2f9dcbd90318', N'NV001', N'Cam', N'Văn', N'Hoàng', N'Nam', CAST(N'2000-11-20' AS Date), N'Cầu Giấy, Hà Nội', N'0988123456', N'123a', N'c06148f8-4ecc-c444-9d3d-c4382c4ad571', N'1cd10828-e919-4959-900f-d7b0cb2be297', N'6e941a83-c6b7-4af6-8b6b-2f9dcbd90318', 0)
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [TenDem], [Ho], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [MatKhau], [IdCH], [IdCV], [IdGuiBC], [TrangThai]) VALUES (N'6e941a83-c6b7-4af6-8b6b-2f9dcbd90319', N'NV003', N'Trang', N'Huyền', N'Trần', N'Nữ', CAST(N'1998-10-01' AS Date), N'Cầu Giấy, Hà Nội', N'0988123456', N'123a', N'3a50fede-4118-4f9b-9d9e-df11f59cc52f', N'5b8dc9e7-2f40-9b4d-8c3f-89b415b793ae', N'6e941a83-c6b7-4af6-8b6b-2f9dcbd90318', 0)
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [TenDem], [Ho], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [MatKhau], [IdCH], [IdCV], [IdGuiBC], [TrangThai]) VALUES (N'6ed155a6-1903-4bdf-8868-8ea90cd00e91', N'NV002', N'Đào', N'Thúy Quỳnh', N'Nguyễn', N'Nam', CAST(N'1999-08-21' AS Date), N'Hoàng mai, Hà Nội', N'0985654321', N'123a', N'f1489b52-c657-4865-9d3e-04f885967c29', N'2871f813-1b1f-4e4f-92d1-0685e7f07e43', N'6ed155a6-1903-4bdf-8868-8ea90cd00e91', 0)
GO
INSERT [dbo].[NSX] ([Id], [Ma], [Ten]) VALUES (N'8e2f281a-5411-4d72-af7b-abf9dae8d300', N'TL', N'Teelab')
GO
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'fbf91fdd-3a74-46f0-91c5-049f20ddd84e', N'SP27', N'Áo Sơ Mi Nhung Tăm Dài Tay Form Rộng Teelab Local Brand Unisex Brown Mix SS039')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'5e6a8294-02af-43f1-bdbe-0add27b5aa53', N'SP14', N'Áo Polo Teelab Tyrannosaurus AP035')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'c09d3cd0-3519-4e5c-8590-0c7df687e887', N'SP23', N'Áo Sơ Mi Teelab Tay ngắn Basic Logo typo Unisex Local brand SS046')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'a91578cb-09d9-4df7-a676-10d44f1ac564', N'SP41', N'Áo Hoodie Teelab Certified Lover Premium Boxy Fit HD057')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'3e2825bc-5922-432c-b4a9-1cc16929d229', N'SP8', N'Áo Thun Baby Tee Teelab Studio Dakota BT004')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'1cee4538-81d9-4b13-abe3-1cdccd2458b7', N'SP1', N'Áo Thun Teelab Raglan Tay Lỡ Basic Logo TS192')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'37741fbd-fba4-432d-b219-231cea9f395e', N'SP10', N'Áo Thun Teelab Studio Mirror Raglan T-shirt TS179')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'4be2ba81-c03e-4593-a20f-23476c41b4e4', N'SP2', N'Áo Thun Teelab Wave Line TS188')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'b5065837-aef6-40fe-8b26-2463750708cd', N'SP36', N'Áo Khoác Gió Teelab Local Brand Unisex Studio A/W 2022 Jacket AK055')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'926f2082-d5db-481d-b747-25e7e99dc3d1', N'SP20', N'Áo Polo Teelab Local Brand Unisex Grey Stripe Lines AP028')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'ebc87577-bd9d-4785-9632-286e14eb4449', N'SP12', N'Áo Polo Teelab Straight Shoulder Line Dark Blue AP041')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'03dc72f4-1b2a-4271-bf6e-2b3d9432a4c3', N'SP42', N'Áo Hoodie Teelab Tet Holiday 2023 HD056')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'8faf1186-f860-4124-8167-2bf2410bbb9f', N'SP46', N'Áo Hoodie Teelab x TGOD Local Brand Unisex Wooden Horse Warrior HD047')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'4ada1a9d-c9d8-4ae4-bf1b-33b13ef2f7cd', N'SP26', N'Áo Sơ Mi Đũi Cộc Tay Form Rộng Teelab Local Brand Unisex SS038')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'981b48d8-c3da-4edf-858c-36f0265e0ed7', N'SP33', N'Áo Khoác Gió Teelab Local Brand Unisex Year of the Cat AK064')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'817bba69-d40d-4146-91ea-3eccff17cdfb', N'SP11', N'Áo Polo Teelab Straight Shoulder Line Phối Đen Trắng AP042')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'd5c94809-c2de-4ffa-ab4d-4a1f52eb8472', N'SP24', N'Áo Sơ Mi Ngắn Tay Teelab American Dream SS045')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'5c73b249-b477-4b5c-bc7b-5569a21e52ec', N'SP39', N'Áo Khoác Gió Teelab Local Brand Unisex Private Collection Jacket AK047')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'79e28e4a-97fe-40ea-b4ef-56d0e34c508d', N'SP38', N'Áo Khoác Gió Teelab Local Brand Unisex  Sporty A/W 2022 Jacket AK048')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'1fe8cd4d-3881-4d32-9eb5-5715496231c7', N'SP18', N'Áo Polo Teelab Local Brand Unisex Legacy Monogram Green AP030')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'60519481-c8d4-4c39-b55e-5bd5910b41f6', N'SP43', N'Áo Hoodie Teelab Studio Twenty Four Seven Collection HD054')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'7c1c4848-e018-412a-ba00-62455cf07a14', N'SP28', N'Áo Sơ Mi Lụa Dài Tay Form Rộng Teelab Local Brand Unisex SS040')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'208c1e58-f90c-4420-a5a7-70c7621ad33b', N'SP25', N'Áo Sơ Mi Nhung Tăm Dài Tay Form Rộng Teelab Local Brand Unisex SS037')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'564c39ba-263e-440e-8bb7-772a794ac91a', N'SP34', N'Áo Khoác Varsity Teelab Studio Premium Jacket AK053')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'e527c690-62a2-402e-a043-773648eaa574', N'SP22', N'Áo Sơ Mi Teelab Symbol Basic Logo SS047')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'b51b3afb-aace-4dd2-9e2e-782c42d4bb71', N'SP4', N'Áo Thun Babytee flaming fire BT011')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'c9c05f1a-ce9d-4fb8-a2c4-7df6675a4b7d', N'SP5', N'Áo Thun Baby Tee Teelab Studio Tducky BT007')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'80b36cb9-44c0-44fc-bd7d-7f2bee0385dc', N'SP32', N'Áo Khoác Gió Teelab Local Brand Unisex Active-Jacket AK063')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'f5e3f232-0a13-4782-bcac-878f21af3812', N'SP45', N'Áo Hoodie Teelab Local Brand Unisex Journey Icons HD052')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'f97d7b4f-5320-4efa-87b3-87ea364b8abb', N'SP17', N'Áo Polo Teelab Local Brand Unisex Graphic Hanoi Famous AP031')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'59db74bc-90c0-4082-aff8-89acca733b9d', N'SP21', N'Áo Sơ Mi Ngắn Tay Teelab Graffiti Oversize Shirt SS049')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'9c55bfc0-f83e-4d26-8228-98edee83a212', N'SP3', N'Áo Thun Teelab Summer Time TS189')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'e47b992f-784a-4215-96f5-9dc6110ec02f', N'SP30', N'Áo Khoác Gió Teelab Local Brand Unisex Split AK068')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'76a12a70-56e9-4edc-bb03-a0efd6f6f4b4', N'SP44', N'Áo Hoodie Teelab Local Brand Unisex Hà Nội "Dân Tổ" Retro Style HD055')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'419ea2e6-e54c-4f68-aab9-b7f023ac6cf1', N'SP15', N'Áo Polo Teelab Summer Old School AP036')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'4e65ea82-ff69-411c-a492-b825e3793faa', N'SP29', N'Áo Sơ Mi Kaki Khoác Ngoài Teelab Local Brand Unisex Design Studio SS036')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'48f31163-92dd-4fa8-9ea9-b8a6939c28b0', N'SP6', N'Áo Thun Baby Tee Teelab Studio Checkmate BT006')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'0ca35f2e-df3e-4a2a-84a4-b934ac8e514b', N'SP19', N'Áo Polo Teelab Local Brand Unisex Legacy Monogram Black AP029')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'2a3779c3-db14-4258-ae71-c897b581220f', N'SP35', N'Áo Khoác Varsity Teelab Studio Winter Collection Jacket AK054')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'b4aafc87-728a-454b-a02f-ce8cb6229e58', N'SP40', N'Áo Hoodie Teelab Local Brand Unisex Painter HD058')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'0336cd09-76e8-446f-b972-dc5da6e8271b', N'SP16', N'Áo Polo Zip Teelab Local Brand Unisex B&W Mix AP033')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'516c52eb-0855-4b01-b9cc-ded5eefccae8', N'SP13', N'Áo Polo Teelab New Essentials Zipped Polo Shirts AP038')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'ab163361-8dff-478c-a2db-e487a5eecbd5', N'SP47', N'Áo Hoodie Teelab x TGOD Local Brand Unisex Gameboy HD048')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'20344486-b97e-4c56-9284-eae773b0820f', N'SP37', N'Áo Khoác Nhung Tăm Teelab Local Brand Unisex Jacket AK050')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'83f2aa92-fca1-4e29-a2c2-ebeb3d7f51f6', N'SP49', N'Áo Hoodie Teelab Local Brand Unisex Special Collection Premium HD044')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'f468237f-eda3-4f34-a50a-ee50812afd1d', N'SP31', N'Áo Khoác Gió Teelab Local Brand Unisex Techwear AK065')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'694c1a5e-3b98-4844-9511-f1f017c31550', N'SP7', N'Áo Thun Baby Tee Teelab Studio signature logo BT001')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'e17a0a80-d780-4894-bea2-f9e862add42d', N'SP48', N'Áo Hoodie Washed Teelab Local Brand Unisex Happiness HD046')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'ff78939c-ede2-4100-b3dc-fe1c33dc122a', N'SP9', N'Áo Thun Teelab Pop Art Style Girl Face TS181')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ChucVu__3214CC9EBDBEDA96]    Script Date: 7/29/2023 11:23:50 AM ******/
ALTER TABLE [dbo].[ChucVu] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CuaHang__3214CC9E2A0A88F2]    Script Date: 7/29/2023 11:23:50 AM ******/
ALTER TABLE [dbo].[CuaHang] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DongSP__3214CC9E1D88C177]    Script Date: 7/29/2023 11:23:50 AM ******/
ALTER TABLE [dbo].[DongSP] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__GioHang__3214CC9E169D6309]    Script Date: 7/29/2023 11:23:50 AM ******/
ALTER TABLE [dbo].[GioHang] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__3214CC9EA3589413]    Script Date: 7/29/2023 11:23:50 AM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__MauSac__3214CC9E558A4F7A]    Script Date: 7/29/2023 11:23:50 AM ******/
ALTER TABLE [dbo].[MauSac] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__3214CC9E5A83C0AB]    Script Date: 7/29/2023 11:23:50 AM ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NSX__3214CC9E5EB6954F]    Script Date: 7/29/2023 11:23:50 AM ******/
ALTER TABLE [dbo].[NSX] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SanPham__3214CC9EBD657B90]    Script Date: 7/29/2023 11:23:50 AM ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [UQ__SanPham__3214CC9EBD657B90] UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  CONSTRAINT [DF__ChiTietSP__Id__7F2BE32F]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  CONSTRAINT [DF__ChiTietSP__NamBH__00200768]  DEFAULT (NULL) FOR [NamBH]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  CONSTRAINT [DF__ChiTietSP__MoTa__01142BA1]  DEFAULT (NULL) FOR [MoTa]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  CONSTRAINT [DF__ChiTietSP__GiaNh__02084FDA]  DEFAULT ((0)) FOR [GiaNhap]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  CONSTRAINT [DF__ChiTietSP__GiaBa__02FC7413]  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [ThanhPho]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [QuocGia]
GO
ALTER TABLE [dbo].[DongSP] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (NULL) FOR [NgayThanhToan]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (NULL) FOR [TenNguoiNhan]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[GioHangChiTiet] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[GioHangChiTiet] ADD  DEFAULT ((0)) FOR [DonGiaKhiGiam]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__Id__5BE2A6F2]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__NgayTao__5CD6CB2B]  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__NgayThan__5DCAEF64]  DEFAULT (NULL) FOR [NgayThanhToan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__NgayShip__5EBF139D]  DEFAULT (NULL) FOR [NgayShip]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__NgayNhan__5FB337D6]  DEFAULT (NULL) FOR [NgayNhan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__TinhTran__60A75C0F]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__TenNguoi__619B8048]  DEFAULT (NULL) FOR [TenNguoiNhan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__DiaChi__628FA481]  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__Sdt__6383C8BA]  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [TenDem]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [Ho]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [ThanhPho]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [QuocGia]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [MatKhau]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [TenDem]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Ho]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [MatKhau]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[NSX] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF__SanPham__Id__70DDC3D8]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietSP__IdDon__17036CC0] FOREIGN KEY([IdDongSP])
REFERENCES [dbo].[DongSP] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK__ChiTietSP__IdDon__17036CC0]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietSP__IdMau__160F4887] FOREIGN KEY([IdMauSac])
REFERENCES [dbo].[MauSac] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK__ChiTietSP__IdMau__160F4887]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietSP__IdNsx__151B244E] FOREIGN KEY([IdNsx])
REFERENCES [dbo].[NSX] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK__ChiTietSP__IdNsx__151B244E]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietSP__IdSP__14270015] FOREIGN KEY([IdSP])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK__ChiTietSP__IdSP__14270015]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([IdKH])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK8q7oyrucwvydsy8h6t5tj2rxq] FOREIGN KEY([IdNV])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK8q7oyrucwvydsy8h6t5tj2rxq]
GO
ALTER TABLE [dbo].[GioHangChiTiet]  WITH CHECK ADD  CONSTRAINT [FK1_IdGioHang] FOREIGN KEY([IdGioHang])
REFERENCES [dbo].[GioHang] ([Id])
GO
ALTER TABLE [dbo].[GioHangChiTiet] CHECK CONSTRAINT [FK1_IdGioHang]
GO
ALTER TABLE [dbo].[GioHangChiTiet]  WITH CHECK ADD  CONSTRAINT [FK2_IdChiTietSP] FOREIGN KEY([IdChiTietSP])
REFERENCES [dbo].[ChiTietSP] ([Id])
GO
ALTER TABLE [dbo].[GioHangChiTiet] CHECK CONSTRAINT [FK2_IdChiTietSP]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__IdKH__114A936A] FOREIGN KEY([IdKH])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__IdKH__114A936A]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__IdNV__1332DBDC] FOREIGN KEY([IdNV])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__IdNV__1332DBDC]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK1] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK1]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK2] FOREIGN KEY([IdChiTietSP])
REFERENCES [dbo].[ChiTietSP] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK2]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IdCH])
REFERENCES [dbo].[CuaHang] ([Id])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IdCV])
REFERENCES [dbo].[ChucVu] ([Id])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IdGuiBC])
REFERENCES [dbo].[NhanVien] ([Id])
GO
USE [master]
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET  READ_WRITE 
GO
