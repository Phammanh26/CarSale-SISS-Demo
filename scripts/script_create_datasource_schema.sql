GO
CREATE DATABASE CarSales_DB;
GO

USE [CarSales_DB]
GO
/****** Object:  Table [dbo].[Cleaned_Temp]    Script Date: 3/5/2023 9:20:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cleaned_Temp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[brand] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[bodyType] [nvarchar](50) NOT NULL,
	[color] [nvarchar](50) NOT NULL,
	[fuelType] [nvarchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[mileage] [int] NOT NULL,
	[transmission] [nvarchar](50) NOT NULL,
	[power] [int] NOT NULL,
	[price] [float] NOT NULL,
	[parse_date] [nvarchar](50) NOT NULL,
	[location] [nvarchar](50) NOT NULL,
	[engineName] [nvarchar](50) NOT NULL,
	[vehicleConfiguration] [nvarchar](100) NOT NULL,
	[engineDisplacement] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Not_Cleaned_Temp]    Script Date: 3/5/2023 9:20:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Not_Cleaned_Temp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Trans] [int] NOT NULL,
	[brand] [nvarchar](50)  NULL,
	[name] [nvarchar](50)  NULL,
	[bodyType] [nvarchar](50) NULL,
	[color] [nvarchar](50) NULL,
	[fuelType] [nvarchar](50) NULL,
	[year] [int] NULL,
	[mileage] [int]  NULL,
	[transmission] [nvarchar](50)  NULL,
	[power] [int]  NULL,
	[price] [float]  NULL,
	[location] [nvarchar](50)  NULL,
	[engineName] [nvarchar](50)  NULL,
	[parse_date] [nvarchar](50) NULL,
	[vehicleConfiguration] [nvarchar](100) NULL,
	[engineDisplacement] [nvarchar](100)  NULL
) ON [PRIMARY]
GO