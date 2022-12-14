USE [master]
GO
/****** Object:  Database [Trade9]    Script Date: 05.10.2022 22:34:53 ******/
CREATE DATABASE [Trade9]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Trade', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Trade.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Trade_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Trade_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Trade9] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Trade9].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Trade9] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Trade9] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Trade9] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Trade9] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Trade9] SET ARITHABORT OFF 
GO
ALTER DATABASE [Trade9] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Trade9] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Trade9] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Trade9] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Trade9] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Trade9] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Trade9] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Trade9] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Trade9] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Trade9] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Trade9] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Trade9] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Trade9] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Trade9] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Trade9] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Trade9] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Trade9] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Trade9] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Trade9] SET  MULTI_USER 
GO
ALTER DATABASE [Trade9] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Trade9] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Trade9] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Trade9] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Trade9] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Trade9] SET QUERY_STORE = OFF
GO
USE [Trade9]
GO
/****** Object:  View [dbo].[View_LaboratoryWork1]    Script Date: 05.10.2022 22:34:53 ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 05.10.2022 22:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatusID] [int] NOT NULL,
	[OrderCreationDate] [datetime] NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPointID] [int] NOT NULL,
	[OrderCodeToGet] [int] NOT NULL,
	[ClientFullName] [nvarchar](100) NULL,
 CONSTRAINT [PK__Order__C3905BAF74EEE58E] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderPickupPoint]    Script Date: 05.10.2022 22:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderPickupPoint](
	[ID] [int] NOT NULL,
	[OrderPickupPoint] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_OrderPickupPoint] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 05.10.2022 22:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK__OrderPro__817A266237D54AD5] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 05.10.2022 22:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[ID] [int] NOT NULL,
	[OrderStatusName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05.10.2022 22:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[ProductImage] [nvarchar](100) NULL,
	[ProductManufacturerID] [int] NOT NULL,
	[ProductSupplierID] [int] NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductDiscountAmount] [tinyint] NULL,
	[ProductMaxDiscount] [tinyint] NOT NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductUnitOfMeasureID] [int] NOT NULL,
	[ProductStatusID] [int] NOT NULL,
 CONSTRAINT [PK__Product__2EA7DCD5C7F84579] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 05.10.2022 22:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [int] NOT NULL,
	[ProductCategoryName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductManufacturer]    Script Date: 05.10.2022 22:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductManufacturer](
	[ID] [int] NOT NULL,
	[ProductManufacturerName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ProductManufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductStatus]    Script Date: 05.10.2022 22:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductStatus](
	[ID] [int] NOT NULL,
	[ProductStatusName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ProductStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSupplier]    Script Date: 05.10.2022 22:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSupplier](
	[ID] [int] NOT NULL,
	[ProductSupplierName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ProductSupplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductUnitOfMeasure]    Script Date: 05.10.2022 22:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductUnitOfMeasure](
	[ID] [int] NOT NULL,
	[ProductUnitOfMeasureName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ProductUnitOfMeasure] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 05.10.2022 22:34:53 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 05.10.2022 22:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
 CONSTRAINT [PK__User__1788CCAC95FD9282] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderCreationDate], [OrderDeliveryDate], [OrderPickupPointID], [OrderCodeToGet], [ClientFullName]) VALUES (1, 2, CAST(N'2022-05-10T00:00:00.000' AS DateTime), CAST(N'2022-05-16T00:00:00.000' AS DateTime), 27, 811, N'Маслов Максим Иванович')
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderCreationDate], [OrderDeliveryDate], [OrderPickupPointID], [OrderCodeToGet], [ClientFullName]) VALUES (2, 2, CAST(N'2022-05-11T00:00:00.000' AS DateTime), CAST(N'2022-05-17T00:00:00.000' AS DateTime), 5, 812, N'')
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderCreationDate], [OrderDeliveryDate], [OrderPickupPointID], [OrderCodeToGet], [ClientFullName]) VALUES (3, 2, CAST(N'2022-05-12T00:00:00.000' AS DateTime), CAST(N'2022-05-18T00:00:00.000' AS DateTime), 29, 813, N'')
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderCreationDate], [OrderDeliveryDate], [OrderPickupPointID], [OrderCodeToGet], [ClientFullName]) VALUES (4, 2, CAST(N'2022-05-13T00:00:00.000' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), 10, 814, N'')
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderCreationDate], [OrderDeliveryDate], [OrderPickupPointID], [OrderCodeToGet], [ClientFullName]) VALUES (5, 2, CAST(N'2022-05-14T00:00:00.000' AS DateTime), CAST(N'2022-05-20T00:00:00.000' AS DateTime), 31, 815, N'Симонов Михаил Тимурович')
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderCreationDate], [OrderDeliveryDate], [OrderPickupPointID], [OrderCodeToGet], [ClientFullName]) VALUES (6, 2, CAST(N'2022-05-15T00:00:00.000' AS DateTime), CAST(N'2022-05-21T00:00:00.000' AS DateTime), 32, 816, N'')
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderCreationDate], [OrderDeliveryDate], [OrderPickupPointID], [OrderCodeToGet], [ClientFullName]) VALUES (7, 2, CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 20, 817, N'')
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderCreationDate], [OrderDeliveryDate], [OrderPickupPointID], [OrderCodeToGet], [ClientFullName]) VALUES (8, 1, CAST(N'2022-05-17T00:00:00.000' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), 34, 818, N'Павлова Ксения Михайловна')
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderCreationDate], [OrderDeliveryDate], [OrderPickupPointID], [OrderCodeToGet], [ClientFullName]) VALUES (9, 2, CAST(N'2022-05-18T00:00:00.000' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), 35, 819, N'Трифонов Григорий Юрьевич')
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderCreationDate], [OrderDeliveryDate], [OrderPickupPointID], [OrderCodeToGet], [ClientFullName]) VALUES (10, 1, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 36, 820, N'')
SET IDENTITY_INSERT [dbo].[Order] OFF
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (1, N'344288, г. Кропоткин, ул. Чехова, 1')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (2, N'614164, г.Кропоткин,  ул. Степная, 30')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (3, N'394242, г. Кропоткин, ул. Коммунистическая, 43')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (4, N'660540, г. Кропоткин, ул. Солнечная, 25')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (5, N'125837, г. Кропоткин, ул. Шоссейная, 40')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (6, N'125703, г. Кропоткин, ул. Партизанская, 49')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (7, N'625283, г. Кропоткин, ул. Победы, 46')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (8, N'614611, г. Кропоткин, ул. Молодежная, 50')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (9, N'454311, г.Кропоткин, ул. Новая, 19')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (10, N'660007, г.Кропоткин, ул. Октябрьская, 19')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (11, N'603036, г. Кропоткин, ул. Садовая, 4')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (12, N'450983, г.Кропоткин, ул. Комсомольская, 26')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (13, N'394782, г. Кропоткин, ул. Чехова, 3')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (14, N'603002, г. Кропоткин, ул. Дзержинского, 28')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (15, N'450558, г. Кропоткин, ул. Набережная, 30')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (16, N'394060, г.Кропоткин, ул. Фрунзе, 43')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (17, N'410661, г. Кропоткин, ул. Школьная, 50')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (18, N'625590, г. Кропоткин, ул. Коммунистическая, 20')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (19, N'625683, г. Кропоткин, ул. 8 Марта')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (20, N'400562, г. Кропоткин, ул. Зеленая, 32')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (21, N'614510, г. Кропоткин, ул. Маяковского, 47')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (22, N'410542, г. Кропоткин, ул. Светлая, 46')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (23, N'620839, г. Кропоткин, ул. Цветочная, 8')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (24, N'443890, г. Кропоткин, ул. Коммунистическая, 1')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (25, N'603379, г. Кропоткин, ул. Спортивная, 46')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (26, N'603721, г. Кропоткин, ул. Гоголя, 41')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (27, N'410172, г. Кропоткин, ул. Северная, 13')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (28, N'420151, г. Кропоткин, ул. Вишневая, 32')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (29, N'125061, г. Кропоткин, ул. Подгорная, 8')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (30, N'630370, г. Кропоткин, ул. Шоссейная, 24')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (31, N'614753, г. Кропоткин, ул. Полевая, 35')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (32, N'426030, г. Кропоткин, ул. Маяковского, 44')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (33, N'450375, г. Кропоткин ул. Клубная, 44')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (34, N'625560, г. Кропоткин, ул. Некрасова, 12')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (35, N'630201, г. Кропоткин, ул. Комсомольская, 17')
INSERT [dbo].[OrderPickupPoint] ([ID], [OrderPickupPoint]) VALUES (36, N'190949, г. Кропоткин, ул. Мичурина, 26')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (1, N'B111C5', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (1, N'T238C7', 7)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (2, N'E112C6', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (2, N'T238C7', 9)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (3, N'L293S9', 8)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (3, N'M112C8', 4)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (4, N'M294G9', 6)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (4, N'S384K2', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (5, N'Q836H4', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (5, N'W874J3', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (6, N'O947D8', 4)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (6, N'R983K4', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (7, N'H497J3', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (7, N'N394K2', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (8, N'P495H8', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (8, N'X846D3', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (9, N'K284U8', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (9, N'V378J3', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (10, N'I483H3', 7)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (10, N'N387I8', 6)
INSERT [dbo].[OrderStatus] ([ID], [OrderStatusName]) VALUES (1, N'Завершен')
INSERT [dbo].[OrderStatus] ([ID], [OrderStatusName]) VALUES (2, N'Новый')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'B111C5', N'Поплин «Розовый жемчуг»', N'Поплин «Розовый жемчуг» шириной 220 см с изображением на ткани — крупные цветы, чайная роза; цветовая гамма: бледно-розовая.', 2, N'products\B111C5.JPEG
', 1, 3, CAST(8500.0000 AS Decimal(19, 4)), 4, 5, 6, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'C384D8', N'Сатин «Дымчатая роза» однотонный', N'Сатин «Дымчатая роза» однотонный шириной 250 см с изображением на ткани цветовая гамма: розовый зефир.', 2, N'products\M112C8.JPG
', 2, 3, CAST(1133.0000 AS Decimal(19, 4)), 3, 10, 4, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'D938K3', N'Фланель однотонная светлая', N'Фланель однотонная светлая оптом шириной 90 см с изображением на ткани — однотонное; цветовая гамма: голубая, желтая, розовая, сирень, фисташка.', 3, N'products\T238C7.JPG
', 4, 1, CAST(1300.0000 AS Decimal(19, 4)), 4, 10, 10, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'E112C6', N'Муслин «Bej»', N'Муслин «Bej» однотонный шириной 140+/-5 см с изображением на ткани — однотонный; цветовая гамма: кофе с молоком.', 1, N'products\E112C6.JPG
', 2, 2, CAST(10500.0000 AS Decimal(19, 4)), 3, 15, 13, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'F374S8', N'Фланель рубашечная', N'Фланель рубашечная шириной 150 см с изображением на ткани — клетка; цветовая гамма: светло-коричневая, синий-королевский.', 3, N'products\M294G9.JPG
', 1, 3, CAST(2100.0000 AS Decimal(19, 4)), 2, 5, 5, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'H483D9', N'Фланель детская H483D9', N'Фланель детская 21212-2 шириной 90 см с изображением на ткани — россыпь звездочек; цветовая гамма: баклажан, оранжевый, розовая.', 1, N'products\N283K3.JPG
', 3, 2, CAST(318.0000 AS Decimal(19, 4)), 2, 5, 18, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'H497J3', N'Ситец детский', N'Ситец детский шириной 95 см с изображением на ткани — котята, сердечки; цветовая гамма: белоземельная, оранжевый.', 1, N'products\L293S9.JPG
', 1, 1, CAST(523.0000 AS Decimal(19, 4)), 2, 5, 8, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'I483H3', N'Ткань поплин «Вивьен»', N'Ткань поплин «Вивьен» шириной 220 см с изображением на ткани — горошек; цветовая гамма: синяя, фисташка.', 2, N'products\M398S9.JPG
', 1, 2, CAST(11300.0000 AS Decimal(19, 4)), 2, 10, 5, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'K284U8', N'Бязь детская «Самолеты»', N'Бязь детская «Самолеты» шириной 150 см с изображением на ткани — игрушки, самолетики; цветовая гамма: белая, зеленая, синяя.', 1, N'products\S384K2.JPG
', 2, 1, CAST(5100.0000 AS Decimal(19, 4)), 3, 25, 2, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'K839K3', N'Плюш белый в клетку', N'Плюш белый в клетку шириной 180 см с изображением на ткани — клетка, однотонный; цветовая гамма: белая, однотонная.', 1, N'products\K839K3.JPG
', 2, 1, CAST(765.0000 AS Decimal(19, 4)), 2, 5, 3, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'L293S9', N'Плюш розовый гладкий', N'Плюш розовый гладкий шириной 180 см с изображением на ткани — однотонный; цветовая гамма: однотонная, розовая.', 1, NULL, 3, 3, CAST(30000.0000 AS Decimal(19, 4)), 3, 40, 2, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'M112C8', N'Бязь детская «Совята»', N'Бязь детская «Совята» шириной 150 см с изображением на ткани — совы; цветовая гамма: бордо, желтая, салатовая.', 1, NULL, 2, 3, CAST(26000.0000 AS Decimal(19, 4)), 2, 20, 14, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'M294G9', N'Полотно вафельное «8 марта»', N'Полотно вафельное «8 марта» шириной 50 см с изображением на ткани — белые розы; цветовая гамма: розовая.', 3, NULL, 2, 3, CAST(5130.0000 AS Decimal(19, 4)), 2, 5, 1, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'M398S9', N'Поплин Мокко', N'Поплин Мокко 220 см шириной 220 см с изображением на ткани — однотонное; цветовая гамма: коричневая, кофе, шоколад.', 2, NULL, 4, 1, CAST(1800.0000 AS Decimal(19, 4)), 2, 15, 6, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'N283K3', N'Сатин «Миндальный» однотонный', N'Сатин «Миндальный» однотонный шириной 250 см с изображением на ткани цветовая гамма: миндаль.', 2, NULL, 3, 3, CAST(6500.0000 AS Decimal(19, 4)), 3, 5, 7, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'N385L2', N'Сатин «Фисташковый» однотонный', N'Сатин «Фисташковый» однотонный шириной 250 см с изображением на ткани цветовая гамма: фисташка.', 2, NULL, 1, 1, CAST(7000.0000 AS Decimal(19, 4)), 2, 20, 2, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'N387I8', N'Полотно вафельное «Кухня»', N'Полотно вафельное «Кухня» шириной 50 см с изображением на ткани — кухня; цветовая гамма: желтая, малина.', 3, NULL, 1, 2, CAST(1000.0000 AS Decimal(19, 4)), 3, 15, 5, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'N394K2', N'Ткань поплин «Лакшери»', N'Ткань поплин «Лакшери» шириной 220 см с изображением на ткани — надписи, сердечки; цветовая гамма: белая, красная, черная.', 2, NULL, 2, 2, CAST(30660.0000 AS Decimal(19, 4)), 4, 10, 15, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'O947D8', N'Ткань для скатертей под рогожку', N'Ткань для скатертей под рогожку «рис 18825» шириной 150 см с изображением на ткани — ромашки, россыпь цветов; цветовая гамма: красная, синяя.', 3, NULL, 4, 2, CAST(3550.0000 AS Decimal(19, 4)), 3, 10, 9, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'P495H8', N'Поплин «Густав»', N'Поплин «Густав» шириной 220 см с изображением на ткани — листья, папортник; цветовая гамма: зеленая, светло-серая.', 2, NULL, 3, 3, CAST(1000.0000 AS Decimal(19, 4)), 2, 15, 14, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'Q836H4', N'Фланель рубашечная', N'Фланель арт 535 рубашечная шириной 150 см с изображением на ткани — клетка; цветовая гамма: светло-коричневая, синий-королевский.', 3, NULL, 4, 3, CAST(1350.0000 AS Decimal(19, 4)), 4, 5, 7, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'R748K3', N'Поплин Морская волна', N'Поплин Морская волна 220 см шириной 220 см с изображением на ткани — однотонное; цветовая гамма: аквамарин, бирюзовая.', 2, NULL, 4, 1, CAST(2300.0000 AS Decimal(19, 4)), 2, 15, 6, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'R983K4', N'Сатин «Серо-бежевый» однотонный', N'Сатин «Серо-бежевый» однотонный шириной 250 см с изображением на ткани цветовая гамма: серо-бежевая.', 2, NULL, 2, 2, CAST(1645.0000 AS Decimal(19, 4)), 2, 15, 13, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'S384K2', N'Фланель черная', N'Фланель черная оптом шириной 90 см с изображением на ткани — однотонное; цветовая гамма: черная.', 3, NULL, 1, 1, CAST(69000.0000 AS Decimal(19, 4)), 4, 40, 2, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'T238C7', N'Муслин «Gri»', N'Муслин «Gri» однотонный шириной 140+/-5 см с изображением на ткани — однотонный; цветовая гамма: серая.', 1, NULL, 1, 2, CAST(6500.0000 AS Decimal(19, 4)), 2, 15, 12, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'U947E9', N'Муслин белый горошек на однотонном фоне', N'Муслин белый горошек на однотонном фоне шириной 150 см с изображением на ткани — мелкий горошек; цветовая гамма: желтая.', 1, NULL, 2, 1, CAST(3411.0000 AS Decimal(19, 4)), 3, 10, 4, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'V378J3', N'Ситец детский', N'Ситец детский шириной 95 см с изображением на ткани — котенок, облака, полумесяц, радуга; цветовая гамма: бледно-розовая, голубая, салатовая, серо-бежевая.', 1, NULL, 3, 1, CAST(2400.0000 AS Decimal(19, 4)), 3, 15, 14, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'W874J3', N'Ткань поплин «Натурель»', N'Ткань поплин «Натурель» шириной 220 см с изображением на ткани — мелкие цветы; цветовая гамма: пепельная, розовая.', 2, NULL, 1, 1, CAST(1600.0000 AS Decimal(19, 4)), 3, 5, 9, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'X846D3', N'Ситец детский', N'Ситец детский шириной 95 см с изображением на ткани — жираф, полумесяц, пчелки; цветовая гамма: темно-фиолетовая.', 1, NULL, 2, 3, CAST(9300.0000 AS Decimal(19, 4)), 3, 25, 5, 1, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductImage], [ProductManufacturerID], [ProductSupplierID], [ProductCost], [ProductDiscountAmount], [ProductMaxDiscount], [ProductQuantityInStock], [ProductUnitOfMeasureID], [ProductStatusID]) VALUES (N'Z937S2', N'Поплин Голубой', N'Поплин Голубой 220 см шириной 220 см с изображением на ткани — однотонное; цветовая гамма: голубая.', 2, NULL, 1, 3, CAST(9000.0000 AS Decimal(19, 4)), 2, 10, 15, 1, 1)
INSERT [dbo].[ProductCategory] ([ID], [ProductCategoryName]) VALUES (1, N'Детские ткани')
INSERT [dbo].[ProductCategory] ([ID], [ProductCategoryName]) VALUES (2, N'Постельные ткани')
INSERT [dbo].[ProductCategory] ([ID], [ProductCategoryName]) VALUES (3, N'Ткани для изделий')
INSERT [dbo].[ProductManufacturer] ([ID], [ProductManufacturerName]) VALUES (1, N'БТК Текстиль')
INSERT [dbo].[ProductManufacturer] ([ID], [ProductManufacturerName]) VALUES (2, N'Империя ткани')
INSERT [dbo].[ProductManufacturer] ([ID], [ProductManufacturerName]) VALUES (3, N'Комильфо')
INSERT [dbo].[ProductManufacturer] ([ID], [ProductManufacturerName]) VALUES (4, N'Май Фабрик')
INSERT [dbo].[ProductStatus] ([ID], [ProductStatusName]) VALUES (1, N'В наличии')
INSERT [dbo].[ProductStatus] ([ID], [ProductStatusName]) VALUES (2, N'Закончился')
INSERT [dbo].[ProductSupplier] ([ID], [ProductSupplierName]) VALUES (1, N'ГК Петров')
INSERT [dbo].[ProductSupplier] ([ID], [ProductSupplierName]) VALUES (2, N'ООО Афо-Тек')
INSERT [dbo].[ProductSupplier] ([ID], [ProductSupplierName]) VALUES (3, N'Раута')
INSERT [dbo].[ProductUnitOfMeasure] ([ID], [ProductUnitOfMeasureName]) VALUES (1, N'Рулон')
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Якушев', N'Евсей', N'Лукьевич', N'DEdcx2018', N'TYlFkM', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Фёдоров', N'Святослав', N'Григорьевич', N'DEnsa2018', N'LdqH+T', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Борисов', N'Герман', N'Дамирович', N'DErxm2018', N'8EavEy', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Ситников', N'Серапион', N'Фролович', N'DEaic2018', N'X2adoa', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Третьяков', N'Валерьян', N'Иринеевич', N'DEwul2018', N'uK&3Zr', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Комиссарова', N'Мария', N'Владимировна', N'DEjgl2018', N'++04Tb', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Меркушева', N'Раиса', N'Владленовна', N'DEgtk2018', N'pNWXhi', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Калашникова', N'Венера', N'Якуновна', N'DEvrd2018', N'S7N9hz', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Комиссаров', N'Семён', N'Павлович', N'DExky2018', N'Kt9EAS', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Денисов', N'Митрофан', N'Егорович', N'DExnj2018', N'IJDdP0', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (11, N'Матвиенко', N'Дамир', N'Богданович', N'DEnbu2018', N'86uDLd', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (12, N'Кириллов', N'Константин', N'Алексеевич', N'DEiik2018', N'gKt2zV', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (13, N'Медведьев', N'Фёдор', N'Мэлсович', N'DEwyi2018', N'9eskgK', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (14, N'Карпов', N'Евгений', N'Лукьевич', N'DEpfr2018', N'mW1Q36', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (15, N'Маркова', N'Евдокия', N'Артёмовна', N'DEjct2018', N'3WpoK9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (16, N'Красильников', N'Тихон', N'Богданович', N'DEsmg2018', N'ApH1By', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (17, N'Титов', N'Семён', N'Иринеевич', N'DEexu2018', N'Nt44pG', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (18, N'Кудряшов', N'Борис', N'Иринеевич', N'DEztr2018', N'MYCgB7', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (19, N'Гаврилова', N'Нинель', N'Денисовна', N'DEwrc2018', N'SktJa|', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (20, N'Быков', N'Дмитрий', N'Валерьянович', N'DEzjs2018', N'|x{s+X', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (21, N'Фомичёв', N'Денис', N'Федосеевич', N'DEeka2018', N'mLZvLv', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (22, N'Белова', N'Марфа', N'Матвеевна', N'DEepr2018', N'BG6tpN', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (23, N'Романова', N'Марина', N'Лаврентьевна', N'DEsnq2018', N'hrD}}g', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (24, N'Беспалов', N'Демьян', N'Витальевич', N'DEvqn2018', N'LPa|e3', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (25, N'Архипова', N'Венера', N'Демьяновна', N'DEery2018', N'*I0Rdi', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (26, N'Носков', N'Парфений', N'Георгьевич', N'DElqv2018', N'Hqfw17', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (27, N'Зыков', N'Иван', N'Варламович', N'DEtuz2018', N'Yln7JW', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (28, N'Иван', N'Протасьевна', N'', N'DEllr2018', N'hXtdCD', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (29, N'Рожков', N'Протасий', N'Альвианович', N'DEisy2018', N'5k5dHN', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (30, N'Большакова', N'Нинель', N'Протасьевна', N'DEqiv2018', N'h+N2uW', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (31, N'Наумова', N'Лидия', N'Донатовна', N'DEmfu2018', N'{ZpDBn', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (32, N'Панова', N'Ольга', N'Олеговна', N'DEgbd2018', N'+86Nf*', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (33, N'Комаров', N'Аркадий', N'Иванович', N'DEkdg2018', N'R0tt07', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (34, N'Федосеева', N'Тамара', N'Михаиловна', N'DEjrs2018', N'MVg{yd', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (35, N'Пестов', N'Роман', N'Михаилович', N'DEmvd2018', N'wyLDa{', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (36, N'Блинов', N'Артём', N'Ильяович', N'DEctc2018', N'B&dlx+', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (37, N'Владимирова', N'Полина', N'Иринеевна', N'DEavf2018', N'oDTttg', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (38, N'Силин', N'Игнатий', N'Яковович', N'DEako2018', N'tD8J5+', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (39, N'Кононов', N'Геннадий', N'Созонович', N'DEzrg2018', N'WXIgGi', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (40, N'Дьячков', N'Фрол', N'Арсеньевич', N'DEdwq2018', N'WkTaBP', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (41, N'Горбачёв', N'Арсений', N'Григорьевич', N'DEszg2018', N'NWkAVP', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (42, N'Виноградов', N'Яков', N'Онисимович', N'DEmeh2018', N'HQ+m4W', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (43, N'Лаврентьева', N'Валентина', N'Васильевна', N'DEpwm2018', N'be7AT0', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (44, N'Брагин', N'Лукьян', N'Мартынович', N'DEnaq2018', N'I8c5EB', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (45, N'Трофимов', N'Кондрат', N'Игоревич', N'DEtuk2018', N'6aDAzV', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (46, N'Степанова', N'Глафира', N'Авксентьевна', N'DEhsb2018', N'n|I6A0', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (47, N'Федосеев', N'Пётр', N'Григорьевич', N'DEaoi2018', N'Dl58m|', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (48, N'Поляков', N'Николай', N'Антонович', N'DErmk2018', N'D3GuIv', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (49, N'Медведев', N'Владимир', N'Онисимович', N'DEfnd2018', N'74D9|d', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (50, N'Иван', N'Мэлоровна', N'', N'DEtza2018', N'A7Qldh', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderPickupPoint] FOREIGN KEY([OrderPickupPointID])
REFERENCES [dbo].[OrderPickupPoint] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderPickupPoint]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([OrderStatusID])
REFERENCES [dbo].[OrderStatus] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
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
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[ProductCategory] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductManufacturer] FOREIGN KEY([ProductManufacturerID])
REFERENCES [dbo].[ProductManufacturer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductManufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductStatus] FOREIGN KEY([ProductStatusID])
REFERENCES [dbo].[ProductStatus] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductStatus]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductSupplier] FOREIGN KEY([ProductSupplierID])
REFERENCES [dbo].[ProductSupplier] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductSupplier]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductUnitOfMeasure] FOREIGN KEY([ProductUnitOfMeasureID])
REFERENCES [dbo].[ProductUnitOfMeasure] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductUnitOfMeasure]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK__User__UserRole__398D8EEE] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK__User__UserRole__398D8EEE]
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
ALTER DATABASE [Trade9] SET  READ_WRITE 
GO
