USE [master]
GO
/****** Object:  Database [Trade4]    Script Date: 20.09.2022 12:48:27 ******/
CREATE DATABASE [Trade4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Trade4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Trade4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Trade4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Trade4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Trade4] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Trade4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Trade4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Trade4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Trade4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Trade4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Trade4] SET ARITHABORT OFF 
GO
ALTER DATABASE [Trade4] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Trade4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Trade4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Trade4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Trade4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Trade4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Trade4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Trade4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Trade4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Trade4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Trade4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Trade4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Trade4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Trade4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Trade4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Trade4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Trade4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Trade4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Trade4] SET  MULTI_USER 
GO
ALTER DATABASE [Trade4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Trade4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Trade4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Trade4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Trade4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Trade4] SET QUERY_STORE = OFF
GO
USE [Trade4]
GO
/****** Object:  View [dbo].[View_LaboratoryWork1]    Script Date: 20.09.2022 12:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_LaboratoryWork1]
AS
SELECT sys.sysfilegroups.groupid, sys.sysfilegroups.allocpolicy, sys.sysfilegroups.status, sys.sysfilegroups.groupname, sys.sysfiles.fileid, sys.sysfiles.groupid AS Expr1, sys.sysfiles.size, sys.sysfiles.maxsize, sys.sysfiles.growth, 
                  sys.sysfiles.status AS Expr2, sys.sysfiles.perf, sys.sysfiles.name, sys.sysfiles.filename
FROM     sys.sysfilegroups CROSS JOIN
                  sys.sysfiles
GO
/****** Object:  Table [dbo].[Order]    Script Date: 20.09.2022 12:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[ClientFullName] [nvarchar](100) NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderStatusID] [int] NOT NULL,
	[OrderPickupPointID] [int] NOT NULL,
	[OrderGetCode] [int] NOT NULL,
 CONSTRAINT [PK__Order__C3905BAF3F825AD8] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 20.09.2022 12:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK__OrderPro__817A266260BD11EF] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdPickupPoint]    Script Date: 20.09.2022 12:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdPickupPoint](
	[ID] [int] NOT NULL,
	[PickupPoint] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_OrdPickupPoint] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdStatus]    Script Date: 20.09.2022 12:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdStatus](
	[ID] [int] NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_OrdStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrCategory]    Script Date: 20.09.2022 12:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrCategory](
	[ID] [int] NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PrCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrManufacturer]    Script Date: 20.09.2022 12:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrManufacturer](
	[ID] [int] NOT NULL,
	[ManufacturerName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PrManufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrMeasure]    Script Date: 20.09.2022 12:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrMeasure](
	[ID] [int] NOT NULL,
	[MeasureName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PrMeasure] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20.09.2022 12:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[ProductPhoto] [image] NULL,
	[ProductManufacturerID] [int] NOT NULL,
	[ProductSupplierID] [int] NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductDiscountAmount] [tinyint] NULL,
	[ProductMaxDiscount] [tinyint] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductMeasureID] [int] NOT NULL,
	[ProductStatusID] [int] NOT NULL,
 CONSTRAINT [PK__Product__2EA7DCD597EACE7B] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrStatus]    Script Date: 20.09.2022 12:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrStatus](
	[ID] [int] NOT NULL,
	[StatusName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PrStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrSupplier]    Script Date: 20.09.2022 12:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrSupplier](
	[ID] [int] NOT NULL,
	[SupplierName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PrSupplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 20.09.2022 12:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 20.09.2022 12:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [ClientFullName], [OrderDate], [OrderDeliveryDate], [OrderStatusID], [OrderPickupPointID], [OrderGetCode]) VALUES (1, N'Архипова Оливия Дмитриевна', CAST(N'2022-05-01T00:00:00.000' AS DateTime), CAST(N'2022-05-07T00:00:00.000' AS DateTime), 1, 2, 111)
INSERT [dbo].[Order] ([OrderID], [ClientFullName], [OrderDate], [OrderDeliveryDate], [OrderStatusID], [OrderPickupPointID], [OrderGetCode]) VALUES (2, N'', CAST(N'2022-05-02T00:00:00.000' AS DateTime), CAST(N'2022-05-08T00:00:00.000' AS DateTime), 1, 8, 112)
INSERT [dbo].[Order] ([OrderID], [ClientFullName], [OrderDate], [OrderDeliveryDate], [OrderStatusID], [OrderPickupPointID], [OrderGetCode]) VALUES (3, N'', CAST(N'2022-05-03T00:00:00.000' AS DateTime), CAST(N'2022-05-09T00:00:00.000' AS DateTime), 1, 10, 113)
INSERT [dbo].[Order] ([OrderID], [ClientFullName], [OrderDate], [OrderDeliveryDate], [OrderStatusID], [OrderPickupPointID], [OrderGetCode]) VALUES (4, N'', CAST(N'2022-05-04T00:00:00.000' AS DateTime), CAST(N'2022-05-10T00:00:00.000' AS DateTime), 2, 12, 114)
INSERT [dbo].[Order] ([OrderID], [ClientFullName], [OrderDate], [OrderDeliveryDate], [OrderStatusID], [OrderPickupPointID], [OrderGetCode]) VALUES (5, N'', CAST(N'2022-05-05T00:00:00.000' AS DateTime), CAST(N'2022-05-11T00:00:00.000' AS DateTime), 1, 15, 115)
INSERT [dbo].[Order] ([OrderID], [ClientFullName], [OrderDate], [OrderDeliveryDate], [OrderStatusID], [OrderPickupPointID], [OrderGetCode]) VALUES (6, N'Никонова Татьяна Захаровна', CAST(N'2022-05-06T00:00:00.000' AS DateTime), CAST(N'2022-05-12T00:00:00.000' AS DateTime), 1, 18, 116)
INSERT [dbo].[Order] ([OrderID], [ClientFullName], [OrderDate], [OrderDeliveryDate], [OrderStatusID], [OrderPickupPointID], [OrderGetCode]) VALUES (7, N'', CAST(N'2022-05-07T00:00:00.000' AS DateTime), CAST(N'2022-05-13T00:00:00.000' AS DateTime), 2, 20, 117)
INSERT [dbo].[Order] ([OrderID], [ClientFullName], [OrderDate], [OrderDeliveryDate], [OrderStatusID], [OrderPickupPointID], [OrderGetCode]) VALUES (8, N'', CAST(N'2022-05-08T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 1, 25, 118)
INSERT [dbo].[Order] ([OrderID], [ClientFullName], [OrderDate], [OrderDeliveryDate], [OrderStatusID], [OrderPickupPointID], [OrderGetCode]) VALUES (9, N'', CAST(N'2022-05-09T00:00:00.000' AS DateTime), CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 30, 119)
INSERT [dbo].[Order] ([OrderID], [ClientFullName], [OrderDate], [OrderDeliveryDate], [OrderStatusID], [OrderPickupPointID], [OrderGetCode]) VALUES (10, N'Рябова Диана Павловна', CAST(N'2022-05-10T00:00:00.000' AS DateTime), CAST(N'2022-05-16T00:00:00.000' AS DateTime), 1, 36, 120)
SET IDENTITY_INSERT [dbo].[Order] OFF
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (1, N'F933T5', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (1, N'K478R4', 10)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (2, N'D034T5', 6)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (2, N'S563T4', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (3, N'D826T5', 11)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (3, N'K083T5', 11)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (4, N'B037T5', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (4, N'D832R2', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (5, N'D044T5', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (5, N'R922T5', 7)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (6, N'F933T5', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (6, N'V783T5', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (7, N'H937R3', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (7, N'S039T5', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (8, N'F903T5', 4)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (8, N'F937R4', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (9, N'D826T5', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (9, N'R836R5', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (10, N'D044T5', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (10, N'D832R2', 5)
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (1, N'344288, г. Ковров, ул. Чехова, 1')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (2, N'614164, г.Ковров,  ул. Степная, 30')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (3, N'394242, г. Ковров, ул. Коммунистическая, 43')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (4, N'660540, г. Ковров, ул. Солнечная, 25')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (5, N'125837, г. Ковров, ул. Шоссейная, 40')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (6, N'125703, г. Ковров, ул. Партизанская, 49')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (7, N'625283, г. Ковров, ул. Победы, 46')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (8, N'614611, г. Ковров, ул. Молодежная, 50')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (9, N'454311, г.Ковров, ул. Новая, 19')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (10, N'660007, г.Ковров, ул. Октябрьская, 19')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (11, N'603036, г. Ковров, ул. Садовая, 4')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (12, N'450983, г.Ковров, ул. Комсомольская, 26')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (13, N'394782, г. Ковров, ул. Чехова, 3')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (14, N'603002, г. Ковров, ул. Дзержинского, 28')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (15, N'450558, г. Ковров, ул. Набережная, 30')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (16, N'394060, г.Ковров, ул. Фрунзе, 43')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (17, N'410661, г. Ковров, ул. Школьная, 50')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (18, N'625590, г. Ковров, ул. Коммунистическая, 20')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (19, N'625683, г. Ковров, ул. 8 Марта')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (20, N'400562, г. Ковров, ул. Зеленая, 32')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (21, N'614510, г. Ковров, ул. Маяковского, 47')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (22, N'410542, г. Ковров, ул. Светлая, 46')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (23, N'620839, г. Ковров, ул. Цветочная, 8')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (24, N'443890, г. Ковров, ул. Коммунистическая, 1')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (25, N'603379, г. Ковров, ул. Спортивная, 46')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (26, N'603721, г. Ковров, ул. Гоголя, 41')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (27, N'410172, г. Ковров, ул. Северная, 13')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (28, N'420151, г. Ковров, ул. Вишневая, 32')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (29, N'125061, г. Ковров, ул. Подгорная, 8')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (30, N'630370, г. Ковров, ул. Шоссейная, 24')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (31, N'614753, г. Ковров, ул. Полевая, 35')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (32, N'426030, г. Ковров, ул. Маяковского, 44')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (33, N'450375, г. Ковров ул. Клубная, 44')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (34, N'625560, г. Ковров, ул. Некрасова, 12')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (35, N'630201, г. Ковров, ул. Комсомольская, 17')
INSERT [dbo].[OrdPickupPoint] ([ID], [PickupPoint]) VALUES (36, N'190949, г. Ковров, ул. Мичурина, 26')
INSERT [dbo].[OrdStatus] ([ID], [Status]) VALUES (1, N'Новый')
INSERT [dbo].[OrdStatus] ([ID], [Status]) VALUES (2, N'Завершен')
INSERT [dbo].[PrCategory] ([ID], [CategoryName]) VALUES (1, N'Ароматы для дома')
INSERT [dbo].[PrCategory] ([ID], [CategoryName]) VALUES (2, N'Вазы')
INSERT [dbo].[PrCategory] ([ID], [CategoryName]) VALUES (3, N'Горшки и подставки')
INSERT [dbo].[PrCategory] ([ID], [CategoryName]) VALUES (4, N'Интерьерные аксессуары')
INSERT [dbo].[PrCategory] ([ID], [CategoryName]) VALUES (5, N'Картины и фоторамки')
INSERT [dbo].[PrCategory] ([ID], [CategoryName]) VALUES (6, N'Свечи')
INSERT [dbo].[PrCategory] ([ID], [CategoryName]) VALUES (7, N'Часы')
INSERT [dbo].[PrCategory] ([ID], [CategoryName]) VALUES (8, N'Шкатулки и подставки')
INSERT [dbo].[PrManufacturer] ([ID], [ManufacturerName]) VALUES (1, N'Aroma')
INSERT [dbo].[PrManufacturer] ([ID], [ManufacturerName]) VALUES (2, N'Cube Color')
INSERT [dbo].[PrManufacturer] ([ID], [ManufacturerName]) VALUES (3, N'Esteban')
INSERT [dbo].[PrManufacturer] ([ID], [ManufacturerName]) VALUES (4, N'Gallery')
INSERT [dbo].[PrManufacturer] ([ID], [ManufacturerName]) VALUES (5, N'Home Philosophy')
INSERT [dbo].[PrManufacturer] ([ID], [ManufacturerName]) VALUES (6, N'Kersten')
INSERT [dbo].[PrManufacturer] ([ID], [ManufacturerName]) VALUES (7, N'Miksdo')
INSERT [dbo].[PrManufacturer] ([ID], [ManufacturerName]) VALUES (8, N'True Scents')
INSERT [dbo].[PrManufacturer] ([ID], [ManufacturerName]) VALUES (9, N'Umbra')
INSERT [dbo].[PrManufacturer] ([ID], [ManufacturerName]) VALUES (10, N'Valley')
INSERT [dbo].[PrManufacturer] ([ID], [ManufacturerName]) VALUES (11, N'Весна')
INSERT [dbo].[PrMeasure] ([ID], [MeasureName]) VALUES (1, N'шт.')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'B025Y5', N'Блюдо', N'Блюдо декоративное flower 35 см Home Philosophy', 4, NULL, 5, 2, CAST(1890.0000 AS Decimal(19, 4)), 3, 5, 8, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'B037T5', N'Блюдо', N'Блюдо декоративное Flower 35 см', 4, NULL, 5, 2, CAST(690.0000 AS Decimal(19, 4)), 2, 5, 14, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'D034T5', N'Диффузор', N'Диффузор Mikado intense Апельсин с корицей', 1, NULL, 7, 1, CAST(800.0000 AS Decimal(19, 4)), 2, 20, 15, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'D044T5', N'Декор настенный', N'Декор настенный Фантазия 45х45х1 см', 4, NULL, 5, 2, CAST(1790.0000 AS Decimal(19, 4)), 3, 5, 7, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'D826T5', N'Диффузор', N'Диффузор True Scents 45 мл манго', 1, NULL, 8, 1, CAST(600.0000 AS Decimal(19, 4)), 2, 5, 13, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'D832R2', N'Растение', N'Декоративное растение 102 см', 4, NULL, 5, 2, CAST(1000.0000 AS Decimal(19, 4)), 3, 10, 15, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'D947R5', N'Диффузор', N'Диффузор Aroma Harmony Lavender', 1, NULL, 1, 1, CAST(500.0000 AS Decimal(19, 4)), 4, 5, 6, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'F837T5', N'Фоторамка', N'Шкатулка для украшений из дерева Stowit', 5, NULL, 4, 1, CAST(999.0000 AS Decimal(19, 4)), 2, 5, 15, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'F903T5', N'Фоторамка', N'Фоторамка Gallery 20х30 см', 5, NULL, 4, 1, CAST(600.0000 AS Decimal(19, 4)), 2, 15, 3, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'F928T5', N'Фоторамка', N'Фоторамка Prisma 10х10 см', 5, NULL, 9, 2, CAST(1590.0000 AS Decimal(19, 4)), 2, 25, 13, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'F933T5', N'Кашпо', N'Настольное кашпо с автополивом Cube Color', 3, NULL, 2, 1, CAST(1400.0000 AS Decimal(19, 4)), 4, 20, 23, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'F937R4', N'Фоторамка', N'Фоторамка 10х15 см Gallery серый с патиной/золотой', 5, NULL, 4, 1, CAST(359.0000 AS Decimal(19, 4)), 4, 15, 17, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'H023R8', N'Часы', N'Часы настенные Ribbon 30,5 см', 7, NULL, 9, 2, CAST(5600.0000 AS Decimal(19, 4)), 2, 15, 6, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'H937R3', N'Часы', N'Часы настенные 6500 30,2 см', 7, NULL, 9, 1, CAST(999.0000 AS Decimal(19, 4)), 3, 10, 4, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'K083T5', N'Аромат', N'Сменный аромат Figue noire 250 мл', 1, NULL, 3, 2, CAST(2790.0000 AS Decimal(19, 4)), 2, 20, 6, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'K478R4', N'Аромат', N'Аромат для декобукета Esteban', 1, NULL, 3, 2, CAST(3500.0000 AS Decimal(19, 4)), 4, 30, 4, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'K937T4', N'Аромат', N'Деко-букет Кедр 250 мл', 1, NULL, 3, 2, CAST(7900.0000 AS Decimal(19, 4)), 2, 25, 17, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'P846R4', N'Подставка', N'Подставка для цветочных горшков 55x25x35 см Valley', 3, NULL, 10, 2, CAST(1400.0000 AS Decimal(19, 4)), 3, 15, 12, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'P927R2', N'Подставка', N'Подставка для цветочных горшков Valley', 3, NULL, 10, 2, CAST(4000.0000 AS Decimal(19, 4)), 2, 15, 4, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'P936E4', N'Подставка', N'Подставка для газет и журналов Zina', 3, NULL, 9, 2, CAST(3590.0000 AS Decimal(19, 4)), 4, 15, 9, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'R836R5', N'Шкатулка', N'Шкатулка для украшений из дерева Stowit', 8, NULL, 9, 2, CAST(8000.0000 AS Decimal(19, 4)), 5, 30, 3, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'R922T5', N'Шкатулка', N'Шкатулка из керамики Lana 6х7 см', 8, NULL, 5, 2, CAST(690.0000 AS Decimal(19, 4)), 2, 10, 4, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'S039T5', N'Свеча', N'Свеча True Moods Feel happy', 6, NULL, 8, 1, CAST(250.0000 AS Decimal(19, 4)), 2, 10, 18, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'S563T4', N'Свеча', N'Свеча в стакане True Scents', 6, NULL, 8, 1, CAST(1000.0000 AS Decimal(19, 4)), 3, 20, 12, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'S936Y5', N'Свеча', N'Свеча в стакане True Scents', 1, NULL, 8, 1, CAST(299.0000 AS Decimal(19, 4)), 3, 15, 4, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'S937T5', N'Подсвечник', N'Подсвечник 37 см', 1, NULL, 6, 2, CAST(2600.0000 AS Decimal(19, 4)), 3, 10, 23, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'V432R6', N'Ваза', N'Ваза из фаянса 28,00 x 9,50 x 9,50 см', 2, NULL, 6, 2, CAST(1990.0000 AS Decimal(19, 4)), 3, 10, 30, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'V483R7', N'Ваза', N'Ваза «Весна» 18 см стекло, цвет прозрачный', 2, NULL, 11, 1, CAST(100.0000 AS Decimal(19, 4)), 3, 15, 7, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'V783T5', N'Ваза', N'Ваза из керамики Betty', 2, NULL, 5, 2, CAST(1300.0000 AS Decimal(19, 4)), 2, 25, 13, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductMeasureID], [ProductStatusID]) VALUES (N'V937E4', N'Ваза', N'Ваза 18H2535S 30,5 см', 2, NULL, 6, 1, CAST(1999.0000 AS Decimal(19, 4)), 3, 15, 21, 1, 1)
INSERT [dbo].[PrStatus] ([ID], [StatusName]) VALUES (1, N'В наличии')
INSERT [dbo].[PrStatus] ([ID], [StatusName]) VALUES (2, N'Отсутствует')
INSERT [dbo].[PrSupplier] ([ID], [SupplierName]) VALUES (1, N'Hoff')
INSERT [dbo].[PrSupplier] ([ID], [SupplierName]) VALUES (2, N'Стокманн')
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Алексеев', N'Владислав', N'Аркадьевич', N'DEbct2018', N'Qg3gff', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Никонов', N'Мэлс', N'Лукьевич', N'DEuro2018', N'a1MIcO', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Горшкова', N'Агафья', N'Онисимовна', N'DEpst2018', N'0CyGnX', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Савельева', N'Евфросиния', N'Арсеньевна', N'DEvtg2018', N'ETMNzL', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Горбачёв', N'Пантелеймон', N'Германович', N'DEpsu2018', N'Vx9cQ{', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Ершова', N'Иванна', N'Максимовна', N'DEzqs2018', N'qM9p7i', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Туров', N'Денис', N'Геласьевич', N'DEioe2018', N'yMPu&2', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Носова', N'Наина', N'Эдуардовна', N'DEcmk2018', N'3f+b0+', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Куликов', N'Андрей', N'Святославович', N'DEfsp2018', N'&dtlI+', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Нестеров', N'Агафон', N'Георгьевич', N'DExcd2018', N'SZXZNL', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (11, N'Козлов', N'Геласий', N'Христофорович', N'DEvlf2018', N'O5mXc2', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (12, N'Борисова', N'Анжелика', N'Анатольевна', N'DEanv2018', N'Xiq}M3', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (13, N'Суханов', N'Станислав', N'Фролович', N'DEzde2018', N'tlO3x&', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (14, N'Тетерина', N'Феврония', N'Эдуардовна', N'DEriv2018', N'GJ2mHL', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (15, N'Муравьёва', N'Александра', N'Ростиславовна', N'DEhcp2018', N'n2nfRl', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (16, N'Новикова', N'Лукия', N'Ярославовна', N'DEwjv2018', N'ZfseKA', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (17, N'Агафонова', N'Лариса', N'Михаиловна', N'DEiry2018', N'5zu7+}', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (18, N'Сергеева', N'Агата', N'Юрьевна', N'DEgbr2018', N'}+Ex1*', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (19, N'Колобова', N'Елена', N'Евгеньевна', N'DExxv2018', N'+daE|T', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (20, N'Ситников', N'Николай', N'Филатович', N'DEbto2018', N'b1iYMI', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (21, N'Белов', N'Роман', N'Иринеевич', N'DEfbs2018', N'v90Rep', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (22, N'Волкова', N'Алла', N'Лукьевна', N'DEple2018', N'WlW+l8', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (23, N'Кудрявцева', N'Таисия', N'Игоревна', N'DEhhx2018', N'hmCHeQ', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (24, N'Семёнова', N'Октябрина', N'Христофоровна', N'DEayn2018', N'Ka2Fok', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (25, N'Смирнов', N'Сергей', N'Яковович', N'DEwld2018', N'y9HStF', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (26, N'Брагина', N'Алина', N'Валерьевна', N'DEhuu2018', N'X31OEf', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (27, N'Евсеев', N'Игорь', N'Донатович', N'DEmjb2018', N'5mm{ch', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (28, N'Суворов', N'Илья', N'Евсеевич', N'DEdgp2018', N'1WfJjo', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (29, N'Котов', N'Денис', N'Мартынович', N'DEgyi2018', N'|7nYPc', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (30, N'Бобылёва', N'Юлия', N'Егоровна', N'DEmvn2018', N'Mrr9e0', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (31, N'Брагин', N'Бронислав', N'Георгьевич', N'DEfoj2018', N'nhGc+D', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (32, N'Александров', N'Владимир', N'Дамирович', N'DEuuo2018', N'42XmH1', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (33, N'Фокин', N'Ириней', N'Ростиславович', N'DEhsj2018', N's+jrMW', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (34, N'Воронов', N'Митрофан', N'Антонович', N'DEvht2018', N'zMyS8Z', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (35, N'Маслов', N'Мстислав', N'Антонинович', N'DEeqo2018', N'l5CBqA', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (36, N'Щербаков', N'Георгий', N'Богданович', N'DExrf2018', N'mhpRIT', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (37, N'Кириллова', N'Эмилия', N'Федосеевна', N'DEfku2018', N'a1m+8c', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (38, N'Васильев', N'Серапион', N'Макарович', N'DExix2018', N'hzxtnn', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (39, N'Галкина', N'Олимпиада', N'Владленовна', N'DEqrf2018', N'mI8n58', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (40, N'Яковлева', N'Ксения', N'Онисимовна', N'DEhlk2018', N'g0jSed', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (41, N'Калашникова', N'Александра', N'Владимировна', N'DEwoe2018', N'yOtw2F', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (42, N'Медведьева', N'Таисия', N'Тихоновна', N'DExyu2018', N'7Fg}9p', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (43, N'Карпова', N'Ольга', N'Лукьевна', N'DEcor2018', N'2cIrC8', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (44, N'Герасимов', N'Мстислав', N'Дамирович', N'DEqon2018', N'YeFbh6', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (45, N'Тимофеева', N'Ксения', N'Валерьевна', N'DEyfd2018', N'8aKdb0', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (46, N'Горбунов', N'Вячеслав', N'Станиславович', N'DEtto2018', N'qXYDuu', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (47, N'Кошелева', N'Кира', N'Владиславовна', N'DEdal2018', N'cJWXL0', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (48, N'Панфилова', N'Марина', N'Борисовна', N'DEbjs2018', N'Xap2ct', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (49, N'Кудрявцев', N'Матвей', N'Игоревич', N'DEdof2018', N'kD|LRU', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (50, N'Зуев', N'Эдуард', N'Пантелеймонович', N'DEsnh2018', N'#ИМЯ?', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrdPickupPoint] FOREIGN KEY([OrderPickupPointID])
REFERENCES [dbo].[OrdPickupPoint] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrdPickupPoint]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrdStatus] FOREIGN KEY([OrderStatusID])
REFERENCES [dbo].[OrdStatus] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrdStatus]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__OrderProd__Order__403A8C7D] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK__OrderProd__Order__403A8C7D]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__OrderProd__Produ__412EB0B6] FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK__OrderProd__Produ__412EB0B6]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_PrCategory] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[PrCategory] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_PrCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_PrManufacturer] FOREIGN KEY([ProductManufacturerID])
REFERENCES [dbo].[PrManufacturer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_PrManufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_PrMeasure] FOREIGN KEY([ProductMeasureID])
REFERENCES [dbo].[PrMeasure] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_PrMeasure]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_PrStatus] FOREIGN KEY([ProductStatusID])
REFERENCES [dbo].[PrStatus] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_PrStatus]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_PrSupplier] FOREIGN KEY([ProductSupplierID])
REFERENCES [dbo].[PrSupplier] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_PrSupplier]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "sysfiles (sys)"
            Begin Extent = 
               Top = 1
               Left = 71
               Bottom = 272
               Right = 272
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sysfilegroups (sys)"
            Begin Extent = 
               Top = 7
               Left = 320
               Bottom = 170
               Right = 521
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_LaboratoryWork1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_LaboratoryWork1'
GO
USE [master]
GO
ALTER DATABASE [Trade4] SET  READ_WRITE 
GO
