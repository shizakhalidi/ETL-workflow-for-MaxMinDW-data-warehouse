Use master
create database MaxMinSalesDW
Go

USE [MaxMinSalesDW]
GO
/****** Object:  Table [dbo].[DimCustomer]    Script Date: 21-Sep-20 10:18:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCustomer](
	[customerID] [int] NOT NULL,
	[customerName] [varchar](100) NULL,
	[address] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[zipcode] [varchar](10) NULL,
	[numOfCarsOwned] [int] NULL,
	[homeOwner] [char](1) NULL,
	[maried] [char](50) NULL,
	[numOfChildren] [int] NULL,
	[phoneNum] [varchar](15) NULL,
	[emailAddress] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProduct]    Script Date: 21-Sep-20 10:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProduct](
	[productID] [int] NOT NULL,
	[productName] [varchar](100) NULL,
	[retailPrice] [float] NULL,
	[productType] [varchar](100) NULL,
	[weight] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPromotion]    Script Date: 21-Sep-20 10:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPromotion](
	[promotionCode] [int] NOT NULL,
	[promotionName] [char](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[promotionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimSalesperson]    Script Date: 21-Sep-20 10:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimSalesperson](
	[salespersonName] [varchar](100) NOT NULL,
	[territory] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[salespersonName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimStore]    Script Date: 21-Sep-20 10:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimStore](
	[storeID] [int] NOT NULL,
	[storeName] [varchar](100) NULL,
	[storeType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[storeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTime]    Script Date: 21-Sep-20 10:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTime](
	[timeKey] [int] IDENTITY(1,1) NOT NULL,
	[dayVal] [int] NULL,
	[monthVal] [int] NULL,
	[yearVal] [int] NULL,
	[quaterVal] [int] NULL,
	[OrderDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[timeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesFact]    Script Date: 21-Sep-20 10:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesFact](
	[DimSalesperson_salespersonName] [varchar](100) NOT NULL,
	[DimPromotion_promotionCode] [int] NOT NULL,
	[DimCustomer_customerID] [int] NOT NULL,
	[DimStore_storeID] [int] NOT NULL,
	[DimTime_timeKey] [int] NOT NULL,
	[DimProduct_productID] [int] NOT NULL,
	[dollarValueProdSold] [int] NOT NULL,
	[numProdSold] [int] NULL,
	[taxOnProdSold] [int] NULL,
	[shippingOnProdSold] [int] NULL
) ON [PRIMARY]
GO