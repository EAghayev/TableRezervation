USE [master]
GO
/****** Object:  Database [CabinetRezervation]    Script Date: 12/29/2018 10:24:09 AM ******/
CREATE DATABASE [CabinetRezervation]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CabinetRezervation', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.AGHAYEV\MSSQL\DATA\CabinetRezervation.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CabinetRezervation_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.AGHAYEV\MSSQL\DATA\CabinetRezervation_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CabinetRezervation] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CabinetRezervation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CabinetRezervation] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CabinetRezervation] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CabinetRezervation] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CabinetRezervation] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CabinetRezervation] SET ARITHABORT OFF 
GO
ALTER DATABASE [CabinetRezervation] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CabinetRezervation] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CabinetRezervation] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CabinetRezervation] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CabinetRezervation] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CabinetRezervation] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CabinetRezervation] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CabinetRezervation] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CabinetRezervation] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CabinetRezervation] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CabinetRezervation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CabinetRezervation] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CabinetRezervation] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CabinetRezervation] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CabinetRezervation] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CabinetRezervation] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CabinetRezervation] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CabinetRezervation] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CabinetRezervation] SET  MULTI_USER 
GO
ALTER DATABASE [CabinetRezervation] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CabinetRezervation] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CabinetRezervation] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CabinetRezervation] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CabinetRezervation] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CabinetRezervation] SET QUERY_STORE = OFF
GO
USE [CabinetRezervation]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [CabinetRezervation]
GO
/****** Object:  Table [dbo].[CabinetRezervations]    Script Date: 12/29/2018 10:24:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CabinetRezervations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CabinetId] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[TotalPrice] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Rezervations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cabinets]    Script Date: 12/29/2018 10:24:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cabinets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[IsReserved] [bit] NOT NULL,
 CONSTRAINT [PK_Cabinets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CabinetRezervations] ON 

INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (1, 1, CAST(N'2018-12-26T20:46:18.323' AS DateTime), CAST(N'2018-12-26T20:48:18.323' AS DateTime), CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (2, 2, CAST(N'2018-12-26T20:47:35.840' AS DateTime), CAST(N'2018-12-26T22:47:35.840' AS DateTime), CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (3, 1, CAST(N'2018-12-26T20:49:16.240' AS DateTime), CAST(N'2018-12-26T22:49:16.240' AS DateTime), CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (4, 2, CAST(N'2018-12-26T20:49:20.693' AS DateTime), CAST(N'2018-12-26T22:29:20.693' AS DateTime), CAST(83.33 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (5, 1, CAST(N'2018-12-26T20:52:41.540' AS DateTime), CAST(N'2018-12-26T21:15:41.540' AS DateTime), CAST(7.66 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (6, 1, CAST(N'2018-12-26T20:54:03.027' AS DateTime), CAST(N'2018-12-26T22:54:03.027' AS DateTime), CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (7, 1, CAST(N'2018-12-26T20:58:34.853' AS DateTime), CAST(N'2018-12-26T22:58:34.853' AS DateTime), CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (8, 1, CAST(N'2018-12-26T21:03:32.677' AS DateTime), CAST(N'2018-12-26T23:03:32.677' AS DateTime), CAST(5.01 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (9, 2, CAST(N'2018-12-26T21:03:37.413' AS DateTime), CAST(N'2018-12-26T22:43:37.413' AS DateTime), CAST(21.41 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (10, 1, CAST(N'2018-12-26T21:05:00.903' AS DateTime), CAST(N'2018-12-26T21:05:16.153' AS DateTime), CAST(5.08 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (11, 1, CAST(N'2018-12-26T21:07:43.287' AS DateTime), CAST(N'2018-12-26T23:07:43.287' AS DateTime), CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (12, 1, CAST(N'2018-12-26T21:12:33.460' AS DateTime), CAST(N'2018-12-26T23:12:33.460' AS DateTime), CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (13, 2, CAST(N'2018-12-26T21:14:39.017' AS DateTime), CAST(N'2018-12-26T23:14:39.017' AS DateTime), CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (14, 3, CAST(N'2018-12-26T21:14:44.800' AS DateTime), CAST(N'2018-12-26T23:14:44.800' AS DateTime), CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (15, 1, CAST(N'2018-12-26T21:15:37.283' AS DateTime), CAST(N'2018-12-26T21:26:31.343' AS DateTime), CAST(218.01 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (16, 2, CAST(N'2018-12-26T21:15:39.633' AS DateTime), CAST(N'2018-12-26T21:26:34.567' AS DateTime), CAST(545.77 AS Decimal(18, 2)))
INSERT [dbo].[CabinetRezervations] ([Id], [CabinetId], [StartDate], [EndDate], [TotalPrice]) VALUES (17, 1, CAST(N'2018-12-26T21:27:51.183' AS DateTime), CAST(N'2018-12-26T21:27:53.890' AS DateTime), CAST(0.90 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[CabinetRezervations] OFF
SET IDENTITY_INSERT [dbo].[Cabinets] ON 

INSERT [dbo].[Cabinets] ([Id], [Name], [Price], [IsReserved]) VALUES (1, N'Kabinet1', CAST(20.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Cabinets] ([Id], [Name], [Price], [IsReserved]) VALUES (2, N'Kabinet2', CAST(50.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Cabinets] ([Id], [Name], [Price], [IsReserved]) VALUES (3, N'Kabinet3', CAST(100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Cabinets] ([Id], [Name], [Price], [IsReserved]) VALUES (4, N'Masa1', CAST(20.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Cabinets] ([Id], [Name], [Price], [IsReserved]) VALUES (5, N'Masa2', CAST(20.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Cabinets] ([Id], [Name], [Price], [IsReserved]) VALUES (6, N'Masa3', CAST(50.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Cabinets] ([Id], [Name], [Price], [IsReserved]) VALUES (7, N'Masa4', CAST(100.00 AS Decimal(18, 2)), 0)
SET IDENTITY_INSERT [dbo].[Cabinets] OFF
ALTER TABLE [dbo].[Cabinets] ADD  CONSTRAINT [DF_Cabinets_IsReserved]  DEFAULT ((0)) FOR [IsReserved]
GO
USE [master]
GO
ALTER DATABASE [CabinetRezervation] SET  READ_WRITE 
GO
