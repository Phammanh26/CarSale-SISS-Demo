USE [CarSales_DataWarehouse]
GO
/****** Object:  Table [dbo].[Dim_Brand]    Script Date: 3/5/2023 9:17:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Brand](
	[Id_Brand] [int] IDENTITY(1,1) NOT NULL,
	[brand] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_Dim_Brand] PRIMARY KEY CLUSTERED 
(
	[Id_Brand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Car]    Script Date: 3/5/2023 9:17:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Car](
	[Id_Car] [int] IDENTITY(1,1) NOT NULL,
	[brand] [nvarchar](50) NOT NULL,
	[bodyType] [nvarchar](50) NOT NULL,
	[color] [nvarchar](50) NOT NULL,
	[fuelType] [nvarchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[mileage] [int] NOT NULL,
	[transmission] [nvarchar](50) NOT NULL,
	[power] [int] NOT NULL,
	[engineName] [nvarchar](50) NOT NULL,
	[engineDisplacement] [nvarchar](50) NOT NULL,
	[vehicleConfiguration] [nvarchar](100) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_Dim_Car] PRIMARY KEY CLUSTERED 
(
	[Id_Car] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Date]    Script Date: 3/5/2023 9:17:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
CREATE DATABASE CarSales_DataWarehouse;
GO
CREATE TABLE [dbo].[Dim_Date](
	[IdPurchaseDate] [nvarchar](10) NOT NULL,
	[purchaseDay] [int] NOT NULL,
	[purchaseMonth] [int] NOT NULL,
	[purchaseYear] [int] NOT NULL,
 CONSTRAINT [pk_Dim_Date] PRIMARY KEY CLUSTERED 
(
	[IdPurchaseDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Location]    Script Date: 3/5/2023 9:17:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Location](
	[Id_Location] [int] IDENTITY(1,1) NOT NULL,
	[Ward] [nvarchar](50) NOT NULL,
	[Province] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_Dim_Location] PRIMARY KEY CLUSTERED 
(
	[Id_Location] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_CarSales]    Script Date: 3/5/2023 9:17:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_CarSales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Car] [int] NOT NULL,
	[Id_Location] [int] NOT NULL,
	[price] [int] NOT NULL,
	[Id_Brand] [int] NOT NULL,
	[IdPurchaseDate] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Fact_CarSales]  WITH CHECK ADD  CONSTRAINT [FK_CarSales_Brand] FOREIGN KEY([Id_Brand])
REFERENCES [dbo].[Dim_Brand] ([Id_Brand])
GO
ALTER TABLE [dbo].[Fact_CarSales] CHECK CONSTRAINT [FK_CarSales_Brand]
GO
ALTER TABLE [dbo].[Fact_CarSales]  WITH CHECK ADD  CONSTRAINT [FK_CarSales_Car] FOREIGN KEY([Id_Car])
REFERENCES [dbo].[Dim_Car] ([Id_Car])
GO
ALTER TABLE [dbo].[Fact_CarSales] CHECK CONSTRAINT [FK_CarSales_Car]
GO
ALTER TABLE [dbo].[Fact_CarSales]  WITH CHECK ADD  CONSTRAINT [FK_CarSales_Date] FOREIGN KEY([IdPurchaseDate])
REFERENCES [dbo].[Dim_Date] ([IdPurchaseDate])
GO
ALTER TABLE [dbo].[Fact_CarSales] CHECK CONSTRAINT [FK_CarSales_Date]
GO
ALTER TABLE [dbo].[Fact_CarSales]  WITH CHECK ADD  CONSTRAINT [FK_CarSales_Location] FOREIGN KEY([Id_Location])
REFERENCES [dbo].[Dim_Location] ([Id_Location])
GO
ALTER TABLE [dbo].[Fact_CarSales] CHECK CONSTRAINT [FK_CarSales_Location]
GO
