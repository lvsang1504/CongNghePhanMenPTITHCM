USE [master]
GO
/****** Object:  Database [QLY_KTX_Mk3]    Script Date: 6/7/2021 9:24:24 AM ******/
CREATE DATABASE [QLY_KTX_Mk3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLY_KTX_Mk3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLY_KTX_Mk3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLY_KTX_Mk3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLY_KTX_Mk3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLY_KTX_Mk3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLY_KTX_Mk3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLY_KTX_Mk3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET RECOVERY FULL 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET  MULTI_USER 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLY_KTX_Mk3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLY_KTX_Mk3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLY_KTX_Mk3] SET QUERY_STORE = OFF
GO
USE [QLY_KTX_Mk3]
GO
/****** Object:  Table [dbo].[CSVC]    Script Date: 6/7/2021 9:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSVC](
	[Id] [nchar](10) NOT NULL,
	[MaPhong] [nchar](10) NOT NULL,
	[TenVatTu] [nvarchar](100) NOT NULL,
	[NgayThem] [date] NULL,
	[GhiChu] [nvarchar](max) NULL,
	[TinhTrang] [nvarchar](max) NULL,
 CONSTRAINT [PK_CSVC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Day]    Script Date: 6/7/2021 9:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Day](
	[MaDay] [nchar](10) NOT NULL,
	[TenDay] [nchar](10) NOT NULL,
	[GioiTinh] [nchar](10) NOT NULL,
	[TinhTrang] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Khu] PRIMARY KEY CLUSTERED 
(
	[MaDay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/7/2021 9:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nchar](10) NOT NULL,
	[MaPhong] [nchar](10) NOT NULL,
	[NgayTaoHD] [date] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 6/7/2021 9:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong](
	[ID_HopDong] [nchar](10) NOT NULL,
	[IDQuanLy] [nchar](20) NOT NULL,
	[MSSV] [nchar](20) NOT NULL,
	[MaPhong] [nchar](10) NOT NULL,
	[SoTienTra] [int] NOT NULL,
	[HanTra] [date] NOT NULL,
	[TinhTrang] [int] NOT NULL,
	[NgayDangKy] [date] NOT NULL,
	[NgayKetThuc] [date] NOT NULL,
	[NgayRoiDi] [date] NULL,
 CONSTRAINT [PK_HopDong_1] PRIMARY KEY CLUSTERED 
(
	[ID_HopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 6/7/2021 9:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLoaiPhong] [nchar](10) NOT NULL,
	[TenLoaiPhong] [nchar](10) NOT NULL,
	[GiaTien] [int] NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhatSinh]    Script Date: 6/7/2021 9:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhatSinh](
	[MaPS] [nchar](10) NOT NULL,
	[TenPS] [nchar](50) NOT NULL,
	[GiaTienPS] [int] NOT NULL,
	[DonViTinh] [nchar](10) NOT NULL,
 CONSTRAINT [PK_PhatSinh_1] PRIMARY KEY CLUSTERED 
(
	[MaPS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 6/7/2021 9:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [nchar](10) NOT NULL,
	[MaDay] [nchar](10) NOT NULL,
	[ToiThieu] [int] NOT NULL,
	[ToiDa] [int] NOT NULL,
	[TinhTrang] [int] NOT NULL,
	[MaLoaiPhong] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_Phong]    Script Date: 6/7/2021 9:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_Phong](
	[MaPS_Phong] [nchar](10) NOT NULL,
	[MaHD] [nchar](10) NOT NULL,
	[MaPS] [nchar](10) NOT NULL,
	[NgayPS] [date] NOT NULL,
	[SL] [int] NOT NULL,
 CONSTRAINT [PK_PS_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPS_Phong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLy]    Script Date: 6/7/2021 9:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLy](
	[IDQuanLy] [nchar](20) NOT NULL,
	[Ten] [nchar](40) NOT NULL,
	[SDT] [nchar](15) NOT NULL,
	[TTKQuanLy] [nchar](30) NOT NULL,
 CONSTRAINT [PK_QuanLy] PRIMARY KEY CLUSTERED 
(
	[IDQuanLy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/7/2021 9:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID_role] [int] NOT NULL,
	[TenRole] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 6/7/2021 9:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MSSV] [nchar](20) NOT NULL,
	[Ten] [nchar](100) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [nchar](5) NOT NULL,
	[QueQuan] [nchar](50) NOT NULL,
	[SDT] [nchar](15) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[TTKSinhVien] [nchar](30) NOT NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MSSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/7/2021 9:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTK] [nchar](30) NOT NULL,
	[MatKhau] [nchar](10) NOT NULL,
	[Email] [nchar](40) NOT NULL,
	[ID_role] [int] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanNhan]    Script Date: 6/7/2021 9:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanNhan](
	[MSSV] [nchar](20) NOT NULL,
	[TenNgThan] [nchar](20) NOT NULL,
	[DiaChiNgThan] [nchar](100) NOT NULL,
	[SDTNgThan] [nchar](20) NOT NULL,
 CONSTRAINT [PK_ThanNhan] PRIMARY KEY CLUSTERED 
(
	[MSSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CSVC] ([Id], [MaPhong], [TenVatTu], [NgayThem], [GhiChu], [TinhTrang]) VALUES (N'VT7235266 ', N'I03       ', N'Bóng đèn', CAST(N'2021-05-11' AS Date), N'KKK', N'Ai biết')
INSERT [dbo].[CSVC] ([Id], [MaPhong], [TenVatTu], [NgayThem], [GhiChu], [TinhTrang]) VALUES (N'VT7801992 ', N'H01       ', N'Ai biết', CAST(N'2021-05-11' AS Date), N'Kkkk :v', N'Cháy')
GO
INSERT [dbo].[Day] ([MaDay], [TenDay], [GioiTinh], [TinhTrang]) VALUES (N'H         ', N'Dãy H     ', N'Nam       ', N'          ')
INSERT [dbo].[Day] ([MaDay], [TenDay], [GioiTinh], [TinhTrang]) VALUES (N'I         ', N'Dãy I     ', N'Nam       ', N'trống     ')
INSERT [dbo].[Day] ([MaDay], [TenDay], [GioiTinh], [TinhTrang]) VALUES (N'J         ', N'Dãy J     ', N'Nam       ', N'          ')
INSERT [dbo].[Day] ([MaDay], [TenDay], [GioiTinh], [TinhTrang]) VALUES (N'K         ', N'Dãy K     ', N'Nữ        ', N'          ')
INSERT [dbo].[Day] ([MaDay], [TenDay], [GioiTinh], [TinhTrang]) VALUES (N'M         ', N'Dãy M     ', N'Nữ        ', N'          ')
INSERT [dbo].[Day] ([MaDay], [TenDay], [GioiTinh], [TinhTrang]) VALUES (N'N         ', N'Dãy N     ', N'Nữ        ', N'          ')
INSERT [dbo].[Day] ([MaDay], [TenDay], [GioiTinh], [TinhTrang]) VALUES (N'P         ', N'Dãy P     ', N'Nữ        ', N'          ')
INSERT [dbo].[Day] ([MaDay], [TenDay], [GioiTinh], [TinhTrang]) VALUES (N'Q         ', N'Dãy Q     ', N'Nam       ', N'          ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD01      ', N'I01       ', CAST(N'2021-05-12' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD010     ', N'I01       ', CAST(N'2021-06-06' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD02      ', N'I02       ', CAST(N'2021-05-12' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD03      ', N'I03       ', CAST(N'2021-05-12' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD04      ', N'H01       ', CAST(N'2021-05-15' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD05      ', N'I03       ', CAST(N'2021-05-15' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD06      ', N'I01       ', CAST(N'2021-06-06' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD07      ', N'I01       ', CAST(N'2021-06-06' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD08      ', N'I01       ', CAST(N'2021-06-06' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD09      ', N'I01       ', CAST(N'2021-06-06' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD11      ', N'I01       ', CAST(N'2021-06-06' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD12      ', N'I01       ', CAST(N'2021-06-06' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD13      ', N'J01       ', CAST(N'2021-06-06' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD14      ', N'I02       ', CAST(N'2021-06-06' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD15      ', N'I02       ', CAST(N'2021-06-06' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD16      ', N'I01       ', CAST(N'2021-06-06' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD17      ', N'I01       ', CAST(N'2021-06-06' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD18      ', N'I01       ', CAST(N'2021-06-06' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD19      ', N'H01       ', CAST(N'2021-06-06' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD20      ', N'Q01       ', CAST(N'2021-06-06' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaPhong], [NgayTaoHD]) VALUES (N'HD21      ', N'M01       ', CAST(N'2021-06-06' AS Date))
GO
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD1       ', N'admin1              ', N'NDVSDVV             ', N'I03       ', 2100000, CAST(N'2021-05-01' AS Date), 1, CAST(N'2021-04-17' AS Date), CAST(N'2021-09-17' AS Date), NULL)
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD10      ', N'admin               ', N'VBJDFNB             ', N'I03       ', 2100000, CAST(N'2021-05-06' AS Date), 1, CAST(N'2021-04-22' AS Date), CAST(N'2021-09-22' AS Date), NULL)
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD11      ', N'admin               ', N'CDV                 ', N'H01       ', 2100000, CAST(N'2021-05-06' AS Date), 1, CAST(N'2021-04-22' AS Date), CAST(N'2021-09-22' AS Date), NULL)
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD12      ', N'admin               ', N'FEWF                ', N'H01       ', 2100000, CAST(N'2021-05-07' AS Date), 1, CAST(N'2021-04-23' AS Date), CAST(N'2021-09-23' AS Date), NULL)
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD13      ', N'admin               ', N'VSAVAS              ', N'H05       ', 2100000, CAST(N'2021-05-07' AS Date), 1, CAST(N'2021-04-23' AS Date), CAST(N'2021-09-23' AS Date), NULL)
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD14      ', N'admin1              ', N'DQFSC               ', N'K01       ', 2100000, CAST(N'2021-05-13' AS Date), 1, CAST(N'2021-04-29' AS Date), CAST(N'2021-09-29' AS Date), NULL)
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD15      ', N'admin               ', N'N12332              ', N'I02       ', 2100000, CAST(N'2021-06-20' AS Date), 1, CAST(N'2021-06-06' AS Date), CAST(N'2021-11-06' AS Date), NULL)
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD17      ', N'admin               ', N'DGEW DFWE           ', N'I02       ', 2100000, CAST(N'2021-06-20' AS Date), 1, CAST(N'2021-06-06' AS Date), CAST(N'2021-11-06' AS Date), NULL)
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD2       ', N'admin1              ', N'SADASDASD           ', N'I07       ', 600000, CAST(N'2021-05-01' AS Date), 0, CAST(N'2020-04-17' AS Date), CAST(N'2020-09-17' AS Date), NULL)
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD3       ', N'admin               ', N'CSACA               ', N'H01       ', 2100000, CAST(N'2021-05-01' AS Date), 0, CAST(N'2020-04-17' AS Date), CAST(N'2020-09-17' AS Date), NULL)
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD4       ', N'admin               ', N'N18DCCN172          ', N'I05       ', 1650000, CAST(N'2021-05-02' AS Date), 1, CAST(N'2021-04-18' AS Date), CAST(N'2021-09-18' AS Date), NULL)
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD5       ', N'admin               ', N'DBSBSDB             ', N'I03       ', 2100000, CAST(N'2021-05-04' AS Date), 0, CAST(N'2019-04-20' AS Date), CAST(N'2019-09-20' AS Date), NULL)
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD6       ', N'admin               ', N'FQF  FDWRV          ', N'I03       ', 2100000, CAST(N'2021-05-04' AS Date), 1, CAST(N'2021-04-20' AS Date), CAST(N'2021-09-20' AS Date), NULL)
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD7       ', N'admin               ', N'WDQFWVQ GEWB        ', N'I03       ', 2100000, CAST(N'2021-05-04' AS Date), 0, CAST(N'2019-04-20' AS Date), CAST(N'2019-09-20' AS Date), NULL)
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD8       ', N'admin               ', N'WQCQ FQW            ', N'I03       ', 2100000, CAST(N'2021-05-04' AS Date), 1, CAST(N'2021-04-20' AS Date), CAST(N'2021-09-20' AS Date), NULL)
INSERT [dbo].[HopDong] ([ID_HopDong], [IDQuanLy], [MSSV], [MaPhong], [SoTienTra], [HanTra], [TinhTrang], [NgayDangKy], [NgayKetThuc], [NgayRoiDi]) VALUES (N'HD9       ', N'admin               ', N'DWQD                ', N'I05       ', 1650000, CAST(N'2021-05-04' AS Date), 0, CAST(N'2017-04-18' AS Date), CAST(N'2017-09-20' AS Date), NULL)
GO
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [GiaTien]) VALUES (N'L1        ', N'Dịch Vụ 1 ', 420000)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [GiaTien]) VALUES (N'L2        ', N'Dịch Vụ 2 ', 330000)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [GiaTien]) VALUES (N'L3        ', N'Thường    ', 120000)
GO
INSERT [dbo].[PhatSinh] ([MaPS], [TenPS], [GiaTienPS], [DonViTinh]) VALUES (N'PS01      ', N'Điện                                              ', 3000, N'kW        ')
INSERT [dbo].[PhatSinh] ([MaPS], [TenPS], [GiaTienPS], [DonViTinh]) VALUES (N'PS02      ', N'Nước                                              ', 4000, N'm3        ')
INSERT [dbo].[PhatSinh] ([MaPS], [TenPS], [GiaTienPS], [DonViTinh]) VALUES (N'PS03      ', N'Wifi                                              ', 180000, N'tháng     ')
INSERT [dbo].[PhatSinh] ([MaPS], [TenPS], [GiaTienPS], [DonViTinh]) VALUES (N'PS04      ', N'Giữ xe                                            ', 3000, N'ngày      ')
INSERT [dbo].[PhatSinh] ([MaPS], [TenPS], [GiaTienPS], [DonViTinh]) VALUES (N'PS5       ', N'Bia                                               ', 330000, N'thùng     ')
INSERT [dbo].[PhatSinh] ([MaPS], [TenPS], [GiaTienPS], [DonViTinh]) VALUES (N'PS6       ', N'Rượu nếp                                          ', 20000, N'lít       ')
GO
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'H01       ', N'H         ', 6, 10, 1, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'H02       ', N'H         ', 6, 12, 0, N'L3        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'H03       ', N'H         ', 8, 13, 1, N'L2        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'H04       ', N'H         ', 9, 12, 0, N'L3        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'H05       ', N'H         ', 8, 12, 1, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'H06       ', N'H         ', 12, 12, 1, N'L2        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'I01       ', N'I         ', 8, 12, 1, N'L2        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'I02       ', N'I         ', 8, 10, 1, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'I03       ', N'I         ', 8, 10, 1, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'I04       ', N'I         ', 8, 12, 1, N'L2        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'I05       ', N'I         ', 8, 12, 1, N'L2        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'I06       ', N'I         ', 8, 12, 1, N'L3        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'I07       ', N'I         ', 8, 12, 0, N'L3        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'I08       ', N'I         ', 8, 12, 0, N'L3        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'I09       ', N'I         ', 8, 10, 1, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'I10       ', N'I         ', 6, 10, 1, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'J01       ', N'J         ', 10, 12, 1, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'J02       ', N'J         ', 8, 12, 1, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'K01       ', N'K         ', 6, 10, 0, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'K02       ', N'K         ', 12, 12, 1, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'M01       ', N'M         ', 4, 12, 0, N'L3        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'M02       ', N'M         ', 12, 12, 1, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'N01       ', N'N         ', 12, 12, 0, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'N02       ', N'N         ', 12, 12, 1, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'P01       ', N'P         ', 10, 12, 1, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'P02       ', N'P         ', 12, 12, 0, N'L2        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'P03       ', N'P         ', 12, 12, 0, N'L2        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'Q01       ', N'Q         ', 12, 12, 1, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'Q02       ', N'Q         ', 12, 8, 1, N'L1        ')
INSERT [dbo].[Phong] ([MaPhong], [MaDay], [ToiThieu], [ToiDa], [TinhTrang], [MaLoaiPhong]) VALUES (N'Q03       ', N'Q         ', 12, 12, 1, N'L3        ')
GO
INSERT [dbo].[PS_Phong] ([MaPS_Phong], [MaHD], [MaPS], [NgayPS], [SL]) VALUES (N'PSP01     ', N'HD01      ', N'PS01      ', CAST(N'2021-06-06' AS Date), 10)
INSERT [dbo].[PS_Phong] ([MaPS_Phong], [MaHD], [MaPS], [NgayPS], [SL]) VALUES (N'PSP02     ', N'HD13      ', N'PS01      ', CAST(N'2021-06-06' AS Date), 12)
INSERT [dbo].[PS_Phong] ([MaPS_Phong], [MaHD], [MaPS], [NgayPS], [SL]) VALUES (N'PSP03     ', N'HD18      ', N'PS01      ', CAST(N'2021-06-06' AS Date), 12)
INSERT [dbo].[PS_Phong] ([MaPS_Phong], [MaHD], [MaPS], [NgayPS], [SL]) VALUES (N'PSP04     ', N'HD19      ', N'PS01      ', CAST(N'2021-06-06' AS Date), 31)
INSERT [dbo].[PS_Phong] ([MaPS_Phong], [MaHD], [MaPS], [NgayPS], [SL]) VALUES (N'PSP05     ', N'HD20      ', N'PS01      ', CAST(N'2021-06-06' AS Date), 21)
INSERT [dbo].[PS_Phong] ([MaPS_Phong], [MaHD], [MaPS], [NgayPS], [SL]) VALUES (N'PSP06     ', N'HD21      ', N'PS02      ', CAST(N'2021-06-06' AS Date), 123)
GO
INSERT [dbo].[QuanLy] ([IDQuanLy], [Ten], [SDT], [TTKQuanLy]) VALUES (N'admin               ', N'Thầy Thành                              ', N'03125645616    ', N'admin                         ')
INSERT [dbo].[QuanLy] ([IDQuanLy], [Ten], [SDT], [TTKQuanLy]) VALUES (N'admin1              ', N'Sơn                                     ', N'0000002502     ', N'admin1                        ')
INSERT [dbo].[QuanLy] ([IDQuanLy], [Ten], [SDT], [TTKQuanLy]) VALUES (N'SV                  ', N'Sinh Vien                               ', N'4324325252     ', N'SV                            ')
GO
INSERT [dbo].[Role] ([ID_role], [TenRole]) VALUES (0, N'user                ')
INSERT [dbo].[Role] ([ID_role], [TenRole]) VALUES (1, N'admin               ')
GO
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'CDV                 ', N'VÀNG ĐỨC THẮNG                                                                                      ', CAST(N'1232-01-01' AS Date), N'Nam  ', N'Tây Ninh                                          ', N'2343212343     ', N'Tây Ninh', N'cdv                           ')
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'CSACA               ', N'LƯƠNG VĂN GIÀU                                                                                      ', CAST(N'2222-02-02' AS Date), N'Nam  ', N'Cần Thơ                                           ', N'1234567890     ', N'Bến Ninh kiều', N'csaca                         ')
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'DBSBSDB             ', N'MAI THIÊN AN                                                                                        ', CAST(N'2000-02-19' AS Date), N'Nam  ', N'Hà Nội                                            ', N'2561245612     ', N'Hà Nội', N'dbsbsdb                       ')
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'DGEW DFWE           ', N'qgfv  dfv                                                                                           ', CAST(N'2000-02-11' AS Date), N'Nam  ', N'Bình Phước                                        ', N'2554365214     ', N'Bình Phước', N'dgew dfwe                     ')
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'DQFSC               ', N'VÕ ĐẶNG KẾ	ĐỊNH                                                                                     ', CAST(N'2000-01-11' AS Date), N'Nam  ', N'Tp HCM                                            ', N'2562356269     ', N'Tp HCM', N'dqfsc                         ')
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'DWQD                ', N'LÊ TRỌNG ĐẠT                                                                                        ', CAST(N'1230-12-11' AS Date), N'Nam  ', N'Vũng Tàu                                          ', N'1234567890     ', N'Vũng Tàu', N'dwqd                          ')
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'FEWF                ', N'BÙI PHI LONG                                                                                        ', CAST(N'1111-01-01' AS Date), N'Nam  ', N'Cà Mau                                            ', N'2574544538     ', N'Cà Mau', N'fewf                          ')
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'FQF  FDWRV          ', N'NGUYỄN DUY HUY HOÀNG                                                                                ', CAST(N'2000-11-11' AS Date), N'Nữ   ', N'Đắk Lắk                                           ', N'1558245625     ', N'Đắk Lắk', N'fqf  fdwrv                    ')
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'N12332              ', N'NGUYỄN VĂN A                                                                                        ', CAST(N'1999-01-15' AS Date), N'Nữ   ', N'Bình Thuận                                        ', N'1231256425     ', N'Nha Trang', N'n12332                        ')
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'N18DCCN172          ', N'TRỊNH THANH BÌNH                                                                                    ', CAST(N'2000-05-11' AS Date), N'Nam  ', N'Tiền Giang                                        ', N'0816397011     ', N'Cái Bè', N'N18DCCN172                    ')
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'NDVSDVV             ', N'NGUYỄN TRƯƠNG MINH THƯ                                                                              ', CAST(N'2000-04-15' AS Date), N'Nữ   ', N'Đồng Nai                                          ', N'1234567890     ', N'Đồng Nai', N'ndvsdvv                       ')
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'SADASDASD           ', N'NGUYEN THỊ HOA                                                                                      ', CAST(N'2003-01-01' AS Date), N'Nữ   ', N'Bình Thuận                                        ', N'0866512323     ', N'Hang Sơn Đoàng', N'sadasdasd                     ')
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'VBJDFNB             ', N'HUỲNH NGUYỄN QUỐC KHÁNH                                                                             ', CAST(N'2000-02-12' AS Date), N'Nam  ', N'Gia Lai                                           ', N'0123548975     ', N'Gia Lai', N'vbjdfnb                       ')
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'VSAVAS              ', N'ĐINH MINH	THÔNG                                                                                     ', CAST(N'2000-02-15' AS Date), N'Nam  ', N'Quảng Trị                                         ', N'1234545674     ', N'Quảng trị', N'vsavas                        ')
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'WDQFWVQ GEWB        ', N'NGUYỄN THỊ THẢO NGUYÊN                                                                              ', CAST(N'2000-03-23' AS Date), N'Nữ   ', N'Vũng Tàu                                          ', N'1233452562     ', N'Vũng Tàu', N'wdqfwvq gewb                  ')
INSERT [dbo].[SinhVien] ([MSSV], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [SDT], [DiaChi], [TTKSinhVien]) VALUES (N'WQCQ FQW            ', N'ĐỖ THỊ TÂM                                                                                          ', CAST(N'3333-12-12' AS Date), N'Nữ   ', N'Thanh Hóa                                         ', N'2156325945     ', N'Thanh Hóa', N'wqcq fqw                      ')
GO
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'2414                          ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'admin                         ', N'123       ', N'admin@gmail.com                         ', 0)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'admin1                        ', N'123       ', N'admin@gmail.com                         ', 0)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'CDV                           ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'CSACA                         ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'Cuong123                      ', N'123       ', N'cuongnguyen123@gmail.com                ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'ĐÀGDSG                        ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'DBSBSDB                       ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'DGEW DFWE                     ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'DGWBFDERRE                    ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'DQFSC                         ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'DSADASAD                      ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'DWQD                          ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'fafqf                         ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'FEWF                          ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'FQF  FDWRV                    ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'gwagewg                       ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'Hang0203                      ', N'123       ', N'hangnguyen0203@gmail.com                ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'N12332                        ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'N12DCCD123                    ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'N18DCCN111                    ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'N18DCCN112                    ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'N18DCCN172                    ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'n18dckt111                    ', N'123       ', N'n18dcckt111@                            ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'N40DCCN111                    ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'NDVSDVV                       ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'RWQTB UTWE                    ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'SADASDASD                     ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'Sang                          ', N'123       ', N'luongsang010@gmail.com                  ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'savfa                         ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'SAVSAV                        ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'SV                            ', N'123       ', N'                                        ', 0)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'VBJDFNB                       ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'VFDBFDBFD                     ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'vfsvsdvd                      ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'VSAVAS                        ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'vsdv                          ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'WDQFWVQ GEWB                  ', N'123       ', N'                                        ', 1)
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Email], [ID_role]) VALUES (N'WQCQ FQW                      ', N'123       ', N'                                        ', 1)
GO
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'2414                ', N'WETFDH FE           ', N'RGWGB FHE                                                                                           ', N'431545732           ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'cdv                 ', N'dqfwq               ', N'qfve                                                                                                ', N'2132321             ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'csaca               ', N'csacasc             ', N'csacascac                                                                                           ', N'4124141             ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'ĐÀGDSG              ', N'sfafs               ', N'dsfsd                                                                                               ', N'1235648987          ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'dbsbsdb             ', N' a sa               ', N' sa                                                                                                 ', N'1665632             ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'dgew dfwe           ', N'fasf                ', N'Bình Phước                                                                                          ', N'2315684562          ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'dgwbfderre          ', N'cwefe dfberg        ', N'gergefn bre                                                                                         ', N'521443554           ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'dqfsc               ', N'cwqw qwc cav        ', N'c sdcvw cv                                                                                          ', N'256589              ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'dsadasad            ', N'sdwqd               ', N'dqfqf                                                                                               ', N'12321321            ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'dwqd                ', N'cqrc rrrrwe         ', N'ewqwc                                                                                               ', N'41421               ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'fafqf               ', N'qwqffqw             ', N' fqf                                                                                                ', N'2595252852          ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'fewf                ', N'rvrev               ', N'vr3v  re                                                                                            ', N'4725725             ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'fqf  fdwrv          ', N'wdqfvb ebreb        ', N'ewfb rthren ưef                                                                                     ', N'15755               ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'n12332              ', N'Nguyen Van C        ', N'Bình THuận                                                                                          ', N'1235564625          ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'N18DCCN111          ', N'Cha                 ', N'Tây Ninh                                                                                            ', N'16482256356         ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'n18dccn112          ', N'Cha                 ', N'Can Giuoc                                                                                           ', N'0908851752          ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'N18DCCN172          ', N'Ba của Bình         ', N'Cái Răng                                                                                            ', N'0908851752          ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'N40DCCN111          ', N'Dũng Lò Voi         ', N'Bình Dương                                                                                          ', N'1231235689          ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'ndvsdvv             ', N'dsfdsg              ', N'dsgdsg                                                                                              ', N'53252352352         ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'rwqtb utwe          ', N'3bwt3v43bt          ', N'46b543643                                                                                           ', N'b436b               ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'sadasdasd           ', N'ascascas            ', N'ascsacsa acas                                                                                       ', N'1232142141244       ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'savsav              ', N'asv vavva avs       ', N'ava vafvav                                                                                          ', N'1235466             ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'vbjdfnb             ', N'rwgew               ', N'dwgew                                                                                               ', N'bwhgre              ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'vfsvsdvd            ', N'safq dưvwdcw        ', N'fewvdwdvwev                                                                                         ', N'vvevvđvsd           ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'vsavas              ', N'ascsac              ', N'wqc cwqc                                                                                            ', N'41532567            ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'vsdv                ', N'cvwevwe             ', N'cưvwev                                                                                              ', N'vưdvewv             ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'wdqfwvq gewb        ', N'wqfwqv ừgb          ', N'gwegwe fqef                                                                                         ', N'3232523523          ')
INSERT [dbo].[ThanNhan] ([MSSV], [TenNgThan], [DiaChiNgThan], [SDTNgThan]) VALUES (N'wqcq fqw            ', N'ưqrwqr              ', N'qwqrwq                                                                                              ', N'41421               ')
GO
ALTER TABLE [dbo].[CSVC]  WITH CHECK ADD  CONSTRAINT [FK_CSVC_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[CSVC] CHECK CONSTRAINT [FK_CSVC_Phong]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HoaDon_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HoaDon_Phong]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDong_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FK_HopDong_Phong]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDong_QuanLy] FOREIGN KEY([IDQuanLy])
REFERENCES [dbo].[QuanLy] ([IDQuanLy])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FK_HopDong_QuanLy]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDong_SinhVien] FOREIGN KEY([MSSV])
REFERENCES [dbo].[SinhVien] ([MSSV])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FK_HopDong_SinhVien]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_Day] FOREIGN KEY([MaDay])
REFERENCES [dbo].[Day] ([MaDay])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_Day]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[PS_Phong]  WITH CHECK ADD  CONSTRAINT [FK_PS_Phong_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[PS_Phong] CHECK CONSTRAINT [FK_PS_Phong_HoaDon]
GO
ALTER TABLE [dbo].[PS_Phong]  WITH CHECK ADD  CONSTRAINT [FK_PS_Phong_PhatSinh1] FOREIGN KEY([MaPS])
REFERENCES [dbo].[PhatSinh] ([MaPS])
GO
ALTER TABLE [dbo].[PS_Phong] CHECK CONSTRAINT [FK_PS_Phong_PhatSinh1]
GO
ALTER TABLE [dbo].[QuanLy]  WITH CHECK ADD  CONSTRAINT [FK_QuanLy_TaiKhoan] FOREIGN KEY([TTKQuanLy])
REFERENCES [dbo].[TaiKhoan] ([TenTK])
GO
ALTER TABLE [dbo].[QuanLy] CHECK CONSTRAINT [FK_QuanLy_TaiKhoan]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_TaiKhoan] FOREIGN KEY([TTKSinhVien])
REFERENCES [dbo].[TaiKhoan] ([TenTK])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_TaiKhoan]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_Role] FOREIGN KEY([ID_role])
REFERENCES [dbo].[Role] ([ID_role])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_Role]
GO
ALTER TABLE [dbo].[ThanNhan]  WITH NOCHECK ADD  CONSTRAINT [FK_ThanNhan_SinhVien] FOREIGN KEY([MSSV])
REFERENCES [dbo].[SinhVien] ([MSSV])
GO
ALTER TABLE [dbo].[ThanNhan] NOCHECK CONSTRAINT [FK_ThanNhan_SinhVien]
GO
USE [master]
GO
ALTER DATABASE [QLY_KTX_Mk3] SET  READ_WRITE 
GO
