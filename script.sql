USE [master]
GO
/****** Object:  Database [mapdb]    Script Date: 04/19/2016 08:37:01 ******/
CREATE DATABASE [mapdb] ON  PRIMARY 
( NAME = N'mapdb', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\mapdb.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'mapdb_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\mapdb_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [mapdb] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mapdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mapdb] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [mapdb] SET ANSI_NULLS OFF
GO
ALTER DATABASE [mapdb] SET ANSI_PADDING OFF
GO
ALTER DATABASE [mapdb] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [mapdb] SET ARITHABORT OFF
GO
ALTER DATABASE [mapdb] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [mapdb] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [mapdb] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [mapdb] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [mapdb] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [mapdb] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [mapdb] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [mapdb] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [mapdb] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [mapdb] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [mapdb] SET  ENABLE_BROKER
GO
ALTER DATABASE [mapdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [mapdb] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [mapdb] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [mapdb] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [mapdb] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [mapdb] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [mapdb] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [mapdb] SET  READ_WRITE
GO
ALTER DATABASE [mapdb] SET RECOVERY SIMPLE
GO
ALTER DATABASE [mapdb] SET  MULTI_USER
GO
ALTER DATABASE [mapdb] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [mapdb] SET DB_CHAINING OFF
GO
USE [mapdb]
GO
/****** Object:  User [IIS APPPOOL\ASP.NET v4.0]    Script Date: 04/19/2016 08:37:01 ******/
CREATE USER [IIS APPPOOL\ASP.NET v4.0] FOR LOGIN [IIS APPPOOL\ASP.NET v4.0]
GO
/****** Object:  Table [dbo].[Point_tbl]    Script Date: 04/19/2016 08:37:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Point_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NULL,
	[Route_ID] [int] NULL,
	[Point_Name] [nvarchar](50) NULL,
	[Value] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Point_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Point_tbl] ON
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (1, 1, 1, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (2, 1, 1, N'Cheragali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (3, 1, 1, N'Hariken', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (4, 1, 1, N'Board Bazar', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (5, 1, 1, N'Signboard', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (6, 1, 1, N'Gazipur Chowrasta', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (7, 1, 1, N'Shalna', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (8, 1, 1, N'Porabari', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (9, 1, 1, N'Rajendrapur', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (10, 1, 1, N'Hotapara', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (11, 1, 1, N'Bhobanipur', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (12, 1, 1, N'Ansar Road', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (13, 1, 1, N'Mawna', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (14, 1, 1, N'Sreepur', CAST(9 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (15, 1, 1, N'Bormi', CAST(8 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (16, 1, 2, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (17, 1, 2, N'Cheragali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (18, 1, 2, N'Hariken', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (19, 1, 2, N'Board Bazar', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (20, 1, 2, N'Signboard', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (21, 1, 2, N'Gazipur Chowrasta', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (22, 1, 2, N'Shalna', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (23, 1, 2, N'Porabari', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (24, 1, 2, N'Rajendrapur', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (25, 1, 2, N'Rajabari', CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (26, 1, 2, N'Kapasia', CAST(8 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (27, 1, 2, N'Taragonj', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (28, 1, 2, N'Chandpur', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (29, 1, 3, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (30, 1, 3, N'Cheragali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (31, 1, 3, N'Hariken', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (32, 1, 3, N'Board Bazar', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (33, 1, 3, N'Signboard', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (34, 1, 3, N'Gazipur Chowrasta', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (35, 1, 3, N'Joydebpur', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (36, 1, 3, N'Shibbari', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (37, 1, 3, N'Jorpukur Par', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (38, 1, 4, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (39, 1, 4, N'Cheragali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (40, 1, 4, N'Hariken', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (41, 1, 4, N'Board Bazar', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (42, 1, 4, N'Signboard', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (43, 1, 4, N'Gazipur Chowrasta', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (44, 1, 4, N'Konabari', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (45, 1, 4, N'Mowchak', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (46, 1, 4, N'Shafipur', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (47, 1, 4, N'Pollibiddut_Chondra', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (48, 1, 4, N'Kaliakoir', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (49, 1, 5, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (50, 1, 5, N'BSCIC', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (51, 1, 5, N'Mirer Bazar', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (52, 1, 5, N'Pubail', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (53, 1, 5, N'Kapasia Road', CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (54, 1, 5, N'Arikhola', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (55, 1, 5, N'Kaligonj bazar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (56, 1, 5, N'PIP', CAST(8 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (57, 1, 6, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (58, 1, 6, N'BSCIC', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (59, 1, 6, N'Mirer Bazar', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (60, 1, 6, N'Pubail', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (61, 1, 6, N'Kapasia Road', CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (62, 1, 6, N'Arikhola', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (63, 1, 6, N'Kaligonj Sadar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (64, 1, 6, N'RIP', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (65, 1, 7, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (66, 1, 7, N'Ashulia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (67, 1, 7, N'Jirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (68, 1, 7, N'Jamgora', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (69, 1, 7, N'Pollibiddut', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (70, 1, 7, N'Nabinagar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (71, 1, 7, N'AR Hat', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (72, 1, 7, N'Damrai', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (73, 1, 7, N'Kalampur Bus Stand', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (74, 1, 7, N'Golora', CAST(13 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (75, 1, 7, N'Manikgonj Sadar', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (76, 1, 7, N'Tora Bazar', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (77, 1, 7, N'Monno field', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (78, 1, 7, N'Bongail Bazar', CAST(9 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (79, 1, 7, N'Paturia', CAST(11 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (80, 1, 8, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (81, 1, 8, N'Ashulia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (82, 1, 8, N'Jirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (83, 1, 8, N'Jamgora', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (84, 1, 8, N'Pollibiddut', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (85, 1, 8, N'Nabinagar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (86, 1, 8, N'AR hat', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (87, 1, 8, N'Damrai', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (88, 1, 8, N'Kalampur Bus Stand', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (89, 1, 8, N'Kalmpur Bazar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (90, 1, 8, N'Saturia', CAST(13 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (91, 1, 9, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (92, 1, 9, N'Gabtoli', CAST(18 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (93, 1, 9, N'Hemayetpur', CAST(8 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (94, 1, 9, N'Joymondop', CAST(11 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (95, 1, 9, N'Singair', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (96, 1, 9, N'Baira Bazar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (97, 1, 10, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (98, 1, 10, N'Gabtoli', CAST(18 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (99, 1, 10, N'Hemayepur', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (100, 1, 10, N'Joymondob', CAST(11 AS Decimal(18, 0)))
GO
print 'Processed 100 total records'
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (101, 1, 10, N'Singair', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (102, 1, 10, N'Shirajpur', CAST(18 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (103, 1, 11, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (104, 1, 11, N'Ashullia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (105, 1, 11, N'Zirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (106, 1, 11, N'Jamgora', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (107, 1, 11, N'Bolibodro Bazar', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (108, 1, 11, N'BKSP', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (109, 1, 11, N'Bhadail Bazar', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (110, 1, 12, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (111, 1, 12, N'Cherag Ali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (112, 1, 12, N'Bashbari', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (113, 1, 13, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (114, 1, 13, N'Abdullahpur', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (115, 1, 13, N'Ajampur', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (116, 1, 13, N'Air port', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (117, 1, 13, N'Khilkhet', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (118, 1, 13, N'Kuril', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (119, 1, 13, N'Norda', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (120, 1, 13, N'Vatara', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (121, 1, 13, N'Shahjadpur', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (122, 1, 13, N'Uttar Badda', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (123, 1, 13, N'Madda Badda', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (124, 1, 13, N'Merul Badda', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (125, 1, 13, N'Rampura', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (126, 1, 13, N'Bonosree', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (127, 1, 13, N'Meradia Bazar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (128, 1, 14, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (129, 1, 14, N'Gabtoli', CAST(18 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (130, 1, 14, N'Hemayetpur', CAST(8 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (131, 1, 14, N'Joymondop', CAST(11 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (132, 1, 14, N'Singair', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (133, 1, 14, N'Charigram', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (134, 1, 15, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (135, 1, 15, N'Gabtoli', CAST(18 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (136, 1, 15, N'Shyamoli', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (137, 1, 15, N'Mohammadpur', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (138, 1, 15, N'New Market', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (139, 1, 15, N'Azimpur', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (140, 1, 16, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (141, 1, 16, N'Khilkhet', CAST(11 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (142, 1, 16, N'Shewra Bazar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (143, 1, 16, N'Bananai', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (144, 1, 16, N'Mohakhali', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (145, 1, 16, N'Tejgaon', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (146, 1, 16, N'Farmgate', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (147, 1, 16, N'Kawran Bazar', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (148, 1, 16, N'Green Road', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (149, 1, 17, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (150, 1, 17, N'Mazar Road', CAST(17 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (151, 1, 17, N'Gabtoli', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (152, 1, 17, N'Kallanpur', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (153, 1, 17, N'Mohammadpur', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (154, 1, 17, N'Rayer Bazar', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (155, 1, 18, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (156, 1, 18, N'Majar Road', CAST(17 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (157, 1, 18, N'Mirpur-1', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (158, 1, 18, N'Mirpur-10', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (159, 1, 18, N'Kachukhet', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (160, 1, 18, N'Shewrapara', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (161, 1, 18, N'Agargaon', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (162, 1, 18, N'Uttar Pirerbag', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (163, 1, 18, N'Monipuripara', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (164, 1, 19, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (165, 1, 19, N'Cheragali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (166, 1, 19, N'Hariken', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (167, 1, 19, N'Board Bazar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (168, 1, 19, N'Signboard', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (169, 1, 19, N'Gazipur Chowrasta', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (170, 1, 19, N'Shalna', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (171, 1, 19, N'Porabari', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (172, 1, 19, N'Rajendrapur', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (173, 1, 19, N'Hotapara', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (174, 1, 19, N'Bhobanipur', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (175, 1, 19, N'Ansar Road', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (176, 1, 19, N'Mawna', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (177, 1, 19, N'Kawraid', CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (178, 1, 20, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (179, 1, 20, N'Cheragali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (180, 1, 20, N'Hariken', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (181, 1, 20, N'Board Bazar', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (182, 1, 20, N'Signboard', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (183, 1, 20, N'Gazipur Chowrasta', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (184, 1, 20, N'Shalna', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (185, 1, 20, N'Porabari', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (186, 1, 20, N'Rajendrapur', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (187, 1, 20, N'Hotapara', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (188, 1, 20, N'Bhobanipur', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (189, 1, 20, N'Ansar Road', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (190, 1, 20, N'Mawna', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (191, 1, 20, N'Soling More', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (192, 1, 21, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (193, 1, 21, N'Abdullahpur', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (194, 1, 21, N'Ajampur', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (195, 1, 21, N'Khilkhet', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (196, 1, 21, N'Kuril', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (197, 1, 21, N'Norda', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (198, 1, 21, N'Vatara', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (199, 1, 21, N'Shahjadpur', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (200, 1, 21, N'Uttar Badda', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (201, 1, 21, N'Madda Badda', CAST(1 AS Decimal(18, 0)))
GO
print 'Processed 200 total records'
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (202, 1, 21, N'Merul Badda', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (203, 1, 21, N'Rampura', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (204, 1, 21, N'Malibag', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (205, 1, 21, N'Mowchak', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (206, 1, 22, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (207, 1, 22, N'Cheragali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (208, 1, 22, N'Hariken', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (209, 1, 22, N'Board Bazar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (210, 1, 22, N'Kolmeshshor Bazar', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (211, 1, 23, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (212, 1, 23, N'BSCIC', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (213, 1, 23, N'Jinu Market', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (214, 1, 24, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (215, 1, 24, N'Cheragali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (216, 1, 24, N'Hariken', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (217, 1, 24, N'Board Bazar', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (218, 1, 24, N'Signboard', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (219, 1, 24, N'Gazipur Chowrasta', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (220, 1, 24, N'Joydebpur', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (221, 1, 24, N'Shimultali', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (222, 1, 25, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (223, 1, 25, N'Cheragali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (224, 1, 25, N'Hariken', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (225, 1, 25, N'Board Bazar', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (226, 1, 25, N'Signboard', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (227, 1, 25, N'Gazipur Chowrasta', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (228, 1, 25, N'Joydebpur', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (229, 1, 25, N'Bilashpur', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (230, 1, 26, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (231, 1, 26, N'Cheragali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (232, 1, 26, N'Hariken', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (233, 1, 26, N'Board Bazar', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (234, 1, 26, N'Signboard', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (235, 1, 26, N'Gazipur Chowrasta', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (236, 1, 26, N'Shalna', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (237, 1, 26, N'Porabari', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (238, 1, 26, N'Rajendrapur', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (239, 1, 26, N'Hotapara', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (240, 1, 26, N'Bhobanipur', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (241, 1, 26, N'Ansar Road', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (242, 1, 26, N'Mawna', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (243, 1, 26, N'Soling More', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (244, 1, 26, N'Sreepur', CAST(9 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (245, 1, 26, N'Joynabari', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (246, 1, 27, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (247, 1, 27, N'Cheragali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (248, 1, 27, N'Hariken', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (249, 1, 27, N'Board Bazar', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (250, 1, 27, N'Signboard', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (251, 1, 27, N'Gazipur Chowrasta', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (252, 1, 27, N'Shalna', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (253, 1, 27, N'Porabari', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (254, 1, 27, N'Rajendrapur', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (255, 1, 27, N'Hotapara', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (256, 1, 27, N'Bhobanipur', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (257, 1, 27, N'Ansar Road', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (258, 1, 27, N'Mawna', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (259, 1, 27, N'Soling More', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (260, 1, 27, N'Sreepur', CAST(9 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (261, 1, 27, N'Satir bazar', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (262, 1, 28, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (263, 1, 28, N'Cheragali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (264, 1, 28, N'Hariken', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (265, 1, 28, N'Board Bazar', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (266, 1, 28, N'Signboard', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (267, 1, 28, N'Gazipur Chowrasta', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (268, 1, 28, N'Dighirchala', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (269, 1, 29, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (270, 1, 29, N'Cheragali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (271, 1, 29, N'Hariken', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (272, 1, 29, N'Board Bazar', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (273, 1, 29, N'Signboard', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (274, 1, 29, N'Gazipur Chowrasta', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (275, 1, 29, N'Konabari', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (276, 1, 29, N'Mowchak', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (277, 1, 29, N'Berenda', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (278, 1, 30, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (279, 1, 30, N'Cheragali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (280, 1, 30, N'Hariken', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (281, 1, 30, N'Board Bazar', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (282, 1, 30, N'Signboard', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (283, 1, 30, N'Gazipur Chowrasta', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (284, 1, 30, N'Konabari', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (285, 1, 30, N'Mowchak', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (286, 1, 30, N'Ambag', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (287, 1, 31, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (288, 1, 31, N'Cheragali', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (289, 1, 31, N'Hariken', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (290, 1, 31, N'Board Bazar', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (291, 1, 31, N'Signboard', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (292, 1, 31, N'Gazipur Chowrasta', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (293, 1, 31, N'Konabari', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (294, 1, 31, N'Mowchak', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (295, 1, 31, N'Kashimpur Bazar', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (296, 1, 32, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (297, 1, 32, N'BSCIC', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (298, 1, 32, N'Mirer Bazar', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (299, 1, 32, N'Pubail', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (300, 1, 32, N'Kapasia road', CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (301, 1, 32, N'Arikhola', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (302, 1, 32, N'Kaligonj bazar', CAST(2 AS Decimal(18, 0)))
GO
print 'Processed 300 total records'
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (303, 1, 32, N'Jamalpur Bazar', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (304, 1, 33, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (305, 1, 33, N'BSCIC', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (306, 1, 33, N'Mirer Bazar', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (307, 1, 33, N'Pubail', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (308, 1, 33, N'Kapasia road', CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (309, 1, 33, N'Arikhola', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (310, 1, 33, N'Kaligonj bazar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (311, 1, 33, N'Boktarpur', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (312, 1, 34, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (313, 1, 34, N'BSCIC', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (314, 1, 34, N'Mirer Bazar', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (315, 1, 34, N'Pubail', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (316, 1, 34, N'Kapasia road', CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (317, 1, 34, N'Arikhola', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (318, 1, 34, N'Kaligonj bazar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (319, 1, 34, N'Jangalia', CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (320, 1, 35, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (321, 1, 35, N'BSCIC', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (322, 1, 35, N'Mirer Bazar', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (323, 1, 35, N'Pubail', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (324, 1, 35, N'Kapasia road', CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (325, 1, 35, N'Arikhola', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (326, 1, 35, N'Kaligonj bazar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (327, 1, 35, N'Aurakhali', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (328, 1, 36, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (329, 1, 36, N'BSCIC', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (330, 1, 36, N'Mirer Bazar', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (331, 1, 36, N'Pubail', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (332, 1, 36, N'Kapasia road', CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (333, 1, 36, N'Arikhola', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (334, 1, 36, N'Kaligonj bazar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (335, 1, 36, N'Dalon Bazar', CAST(8 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (336, 1, 37, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (337, 1, 37, N'Ashulia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (338, 1, 37, N'Jirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (339, 1, 37, N'Jamgora', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (340, 1, 37, N'Pollibiddut', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (341, 1, 37, N'Nabinagar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (342, 1, 37, N'AR hat', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (343, 1, 37, N'Islampur Bazar', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (344, 1, 38, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (345, 1, 38, N'Ashulia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (346, 1, 38, N'Jirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (347, 1, 38, N'Jamgora', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (348, 1, 38, N'Pollibiddut', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (349, 1, 38, N'Nabinagar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (350, 1, 38, N'AR hat', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (351, 1, 38, N'Dhamrai', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (352, 1, 38, N'Dhamrai Bazar ', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (353, 1, 39, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (354, 1, 39, N'Ashulia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (355, 1, 39, N'Jirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (356, 1, 39, N'Jamgora', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (357, 1, 39, N'Pollibiddut', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (358, 1, 39, N'Nabinagar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (359, 1, 39, N'AR hat', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (360, 1, 39, N'Dhamrai', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (361, 1, 39, N'Kalampur bus Stand', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (362, 1, 39, N'Kalampur Bazar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (363, 1, 40, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (364, 1, 40, N'Ashulia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (365, 1, 40, N'Jirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (366, 1, 40, N'Jamgora', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (367, 1, 40, N'Pollibiddut', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (368, 1, 40, N'Nabinagar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (369, 1, 40, N'AR hat', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (370, 1, 40, N'Damrai', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (371, 1, 40, N'Kalampur bus stand', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (372, 1, 40, N'Golora', CAST(13 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (373, 1, 40, N'Manikgonj Sadar', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (374, 1, 40, N'Tora Bazar', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (375, 1, 40, N'Monno field', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (376, 1, 40, N'Zitka', CAST(17 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (377, 1, 41, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (378, 1, 41, N'Ashulia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (379, 1, 41, N'Jirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (380, 1, 41, N'Jamgora', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (381, 1, 41, N'Pollibiddut', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (382, 1, 41, N'Nabinagar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (383, 1, 41, N'AR hat', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (384, 1, 41, N'Dhamrai', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (385, 1, 41, N'Kalampur bus stand', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (386, 1, 41, N'Golora', CAST(13 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (387, 1, 41, N'Manikgonj Sadar', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (388, 1, 41, N'Tora Bazar', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (389, 1, 41, N'Monno field', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (390, 1, 41, N'Horirampur', CAST(9 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (391, 1, 42, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (392, 1, 42, N'Ashulia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (393, 1, 42, N'Jirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (394, 1, 42, N'Jamgora', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (395, 1, 42, N'Pollibiddut', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (396, 1, 42, N'Nabinagar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (397, 1, 42, N'AR hat', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (398, 1, 42, N'Damrai', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (399, 1, 42, N'Kalampur bus stand', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (400, 1, 42, N'Golora', CAST(13 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (401, 1, 42, N'Manikgonj Sadar', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (402, 1, 42, N'Tora Bazar', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (403, 1, 42, N'Monno field', CAST(2 AS Decimal(18, 0)))
GO
print 'Processed 400 total records'
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (404, 1, 42, N'Bongail bazar', CAST(9 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (405, 1, 42, N'Ghior', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (406, 1, 43, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (407, 1, 43, N'Ashulia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (408, 1, 43, N'Jirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (409, 1, 43, N'Jamgora', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (410, 1, 43, N'Pollibiddut', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (411, 1, 43, N'Nabinagar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (412, 1, 43, N'AR hat', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (413, 1, 43, N'Damrai', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (414, 1, 43, N'Kalampur bus stand', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (415, 1, 43, N'Golora', CAST(13 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (416, 1, 43, N'Manikgonj Sadar', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (417, 1, 43, N'Tora Bazar', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (418, 1, 43, N'Monno field', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (419, 1, 43, N'Bongail Bazar', CAST(9 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (420, 1, 43, N'Kochta Bazar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (421, 1, 44, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (422, 1, 44, N'Ashullia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (423, 1, 44, N'Zirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (424, 1, 44, N'Jamgora', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (425, 1, 44, N'Pollibiddut', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (426, 1, 44, N'AR Hat', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (427, 1, 44, N'Dhamrai', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (428, 1, 44, N'Dhantara Bazar', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (429, 1, 45, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (430, 1, 45, N'Ashulia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (431, 1, 45, N'Zirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (432, 1, 45, N'Jamgora', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (433, 1, 45, N'Bolibodro Bazar', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (434, 1, 45, N'BKSP', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (435, 1, 46, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (436, 1, 46, N'Ashulia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (437, 1, 46, N'Zirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (438, 1, 46, N'Purbo-Rajashon', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (439, 1, 47, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (440, 1, 47, N'Gabtoli', CAST(18 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (441, 1, 47, N'Hemayepur', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (442, 1, 47, N'Joymondob', CAST(11 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (443, 1, 47, N'Singair', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (444, 1, 47, N'Sarail bazar', CAST(12 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (445, 1, 48, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (446, 1, 48, N'Abdullahpur', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (447, 1, 48, N'Fayedabad', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (448, 1, 49, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (449, 1, 49, N'Abdullahpur', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (450, 1, 49, N'Ajampur', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (451, 1, 49, N'Air port', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (452, 1, 49, N'Kawla Bazar', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (453, 1, 50, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (454, 1, 50, N'Gabtoli', CAST(18 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (455, 1, 50, N'Shyamoli', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (456, 1, 50, N'Mohammadpur', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (457, 1, 50, N'Dhanmondi', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (458, 1, 51, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (459, 1, 51, N'Abdullahpur', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (460, 1, 51, N'Azampur', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (461, 1, 51, N'Airport', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (462, 1, 51, N'Khilkhet', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (463, 1, 51, N'Nikunjo', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (464, 1, 51, N'Pakiria', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (465, 1, 52, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (466, 1, 52, N'Ashulia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (467, 1, 52, N'Zirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (468, 1, 52, N'Chapain Road', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (469, 1, 53, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (470, 1, 53, N'Ashulia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (471, 1, 53, N'Zirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (472, 1, 53, N'Gowiur', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (473, 1, 54, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (474, 1, 54, N'Ashulia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (475, 1, 54, N'Zirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (476, 1, 54, N'Kathgora Bazar', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (477, 1, 55, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (478, 1, 55, N'Abdullahpur', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (479, 1, 55, N'Azampur', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (480, 1, 55, N'Airport', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (481, 1, 55, N'Ashkona', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (482, 1, 56, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (483, 1, 56, N'Abdullahpur', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (484, 1, 56, N'Azampur', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (485, 1, 56, N'Airport', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (486, 1, 56, N'Mollartek', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (487, 1, 57, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (488, 1, 57, N'Abdullahpur', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (489, 1, 57, N'Azampur', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (490, 1, 57, N'Airport', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (491, 1, 57, N'Dikhkhin Khan', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (492, 1, 58, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (493, 1, 58, N'Abdullahpur', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (494, 1, 58, N'Azampur', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (495, 1, 58, N'Airport', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (496, 1, 58, N'Ainusbag', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (497, 1, 59, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (498, 1, 59, N'Abdullahpur', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (499, 1, 59, N'Azampur', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (500, 1, 59, N'Airport', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (501, 1, 59, N'Khilkhet', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (502, 1, 59, N'Shewra Bazar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (503, 1, 59, N'Bananai', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (504, 1, 59, N'Mohakhali', CAST(2 AS Decimal(18, 0)))
GO
print 'Processed 500 total records'
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (505, 1, 59, N'Nakhal Para', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (506, 1, 60, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (507, 1, 60, N'Majar Road', CAST(17 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (508, 1, 60, N'Mirpur-1', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (509, 1, 60, N'Mirpur-10', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (510, 1, 60, N'Kazipara', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (511, 1, 60, N'Shewrapara', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (512, 1, 60, N'Agargaon', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (513, 1, 60, N'Monipuripara', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (514, 1, 61, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (515, 1, 61, N'Majar Road', CAST(17 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (516, 1, 61, N'Mirpur-1', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (517, 1, 61, N'Mirpur-10', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (518, 1, 61, N'Mirpur-11', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (519, 1, 61, N'Mirpur-6', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (520, 1, 62, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (521, 1, 62, N'Majar Road', CAST(17 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (522, 1, 62, N'Mirpur-1', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (523, 1, 62, N'Mirpur-10', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (524, 1, 62, N'Pallobi', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (525, 1, 63, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (526, 1, 63, N'Majar Road', CAST(17 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (527, 1, 63, N'Mirpur-1', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (528, 1, 63, N'Mirpur-10', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (529, 1, 63, N'Muslim Bazar', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (530, 1, 64, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (531, 1, 64, N'Majar Road', CAST(17 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (532, 1, 64, N'Mirpur-1', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (533, 1, 64, N'Mirpur-10', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (534, 1, 64, N'Mirpur-11', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (535, 1, 64, N'Mirpur-6', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (536, 1, 64, N'Rupnagar', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (537, 1, 65, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (538, 1, 65, N'Majar Road', CAST(17 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (539, 1, 65, N'Mirpur-1', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (540, 1, 65, N'Mirpur-10', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (541, 1, 65, N'Mirpur-13', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (542, 1, 65, N'Mirpur-14', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (543, 1, 65, N'Kafrul', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (544, 1, 65, N'Kachukhet', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (545, 1, 65, N'Bhasantek', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (546, 1, 65, N'Manikdi', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (547, 1, 66, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (548, 1, 66, N'Ashulia', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (549, 1, 66, N'Jirabo', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (550, 1, 66, N'Jamgora', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (551, 1, 66, N'Pollibiddut', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (552, 1, 66, N'Nabinagar', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (553, 1, 66, N'AR hat', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (554, 1, 66, N'Islampur ', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (555, 1, 67, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (556, 1, 67, N'Gabtoli', CAST(18 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (557, 1, 67, N'Hemayetpur', CAST(8 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (558, 1, 67, N'Joymondop', CAST(11 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (559, 1, 67, N'Singair', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (560, 1, 67, N'Charigram', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (561, 1, 67, N'Goladanga', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (562, 1, 68, N'Tongi', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (563, 1, 68, N'Gabtoli', CAST(18 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (564, 1, 68, N'Hemayetpur', CAST(8 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (565, 1, 68, N'Joymondop', CAST(11 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (566, 1, 68, N'Singair', CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (567, 1, 68, N'Charigram', CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (568, 2, 1, N'Bogra', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (569, 2, 1, N'Charmatha', CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (570, 2, 1, N'Bonpara', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (574, 2, 2, N'Bogra', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (575, 2, 2, N'Shatmatha', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Point_tbl] ([ID], [User_Id], [Route_ID], [Point_Name], [Value]) VALUES (576, 2, 2, N'Sattion', CAST(2 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Point_tbl] OFF
/****** Object:  Table [dbo].[Helper_tbl]    Script Date: 04/19/2016 08:37:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Helper_tbl](
	[Helper_Id] [int] NULL,
	[Helper_Name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (1, N'Jahangir')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (2, N'Faruk')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (3, N'Zahirul')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (4, N'Mintu')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (5, N'Shahadat')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (6, N'Ali noor')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (7, N'Rahim')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (8, N'Islam')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (9, N'Shahinoor')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (10, N'Fahad')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (11, N'Ibrahim')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (12, N'Delowar')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (13, N'Alam')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (14, N'Emon')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (15, N'Abul kalam')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (16, N'Sonjoy')
INSERT [dbo].[Helper_tbl] ([Helper_Id], [Helper_Name]) VALUES (17, N'Ashraful')
/****** Object:  Table [dbo].[final_tbl]    Script Date: 04/19/2016 08:37:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[final_tbl](
	[Final_Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Route_Name] [nvarchar](50) NULL,
	[PointA] [nvarchar](50) NULL,
	[PointB] [nvarchar](50) NULL,
	[Vehicle_Name] [nvarchar](50) NULL,
	[Range_KPL] [float] NULL,
	[Double_T_Driver] [int] NULL,
	[Double_T_Helper] [int] NULL,
	[Chalan_Fresh] [nvarchar](50) NULL,
	[Total_Km_Up] [float] NULL,
	[Total_Km_Down] [float] NULL,
	[Driver_Taka] [float] NULL,
	[Helper_Taka] [float] NULL,
	[Diesel] [float] NULL,
	[Fuel_Amount] [float] NULL,
	[Grand_Total] [float] NULL,
	[Driver_Name] [nvarchar](50) NULL,
	[Helper_Name] [nvarchar](50) NULL,
	[OC] [nvarchar](50) NULL,
	[GP] [int] NULL,
 CONSTRAINT [PK_final_tbl] PRIMARY KEY CLUSTERED 
(
	[Final_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[final_tbl] ON
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (1, CAST(0x823A0B00 AS Date), N'Route_1_Bormi', N'Tongi', N'Hariken', N'DHAKA-K-AK-420', 8, 0, 0, N'0', 6, 12, 84, 59, 2, 102, 245, N'Alamgir', N'Milton', N'102-106', 100)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (2, CAST(0x823A0B00 AS Date), N'Route_2_Chandpur', N'Cheragali', N'Signboard', N'DHAKA-K-AK-420', 8, 20, 10, N'20', 6, 12, 104, 89, 2, 102, 295, N'Mizanur', N'Idris', N'105-110', 120)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (3, CAST(0x823A0B00 AS Date), N'Route_2_Chandpur', N'Tongi', N'Gazipur Chowrasta', N'DHAKA-K-AK-420', 8, 20, 10, N'0', 11, 22, 116, 77, 3, 187, 380, N'Alamgir', N'Milton', N'105-110', 120)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (4, CAST(0x843A0B00 AS Date), N'Route_1_Bormi', N'Tongi', N'Hariken', N'DHAKA-M-AU-0945', 6, 0, 0, N'0', 6, 12, 84, 59, 2, 136, 279, N'Mizanur', N'Milton', N'1234-4321', 12345)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (5, CAST(0x843A0B00 AS Date), N'Route_6_RIP', N'Tongi', N'Kaligonj Sadar', N'DHAKA-M-AU-0945', 6, 0, 0, N'0', 24, 48, 120, 84, 8, 544, 748, N'Select', N'Select', N'2111-22424', 12414)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (6, CAST(0x8A3A0B00 AS Date), N'Route_2_Chandpur', N'Tongi', N'Shalna', N'DHAKA-K-AK-420', 8, 0, 0, N'20', 17, 34, 108, 96, 4, 289, 493, N'Alamgir', N'Milton', N'105-110', 120)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (7, CAST(0x8B3A0B00 AS Date), N'Route_1_Bormi', N'Tongi', N'Bormi', N'Dhaka-Metro-Ma-14-0260', 7, 0, 0, N'0', 55, 110, 200, 140, 16, 1069, 1409, N'Md. Lalmia', N'Fahad', N'1234-4321', 120)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (8, CAST(0x8C3A0B00 AS Date), N'Route_1_Bormi', N'Tongi', N'Bormi', N'Dhaka-Metro-Ma-14-0260', 7, 0, 0, N'20', 55, 110, 200, 160, 16, 1069, 1429, N'Md. Shohidul', N'Ali noor', N'234-653', 3245)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (9, CAST(0x8D3A0B00 AS Date), N'Route_1_Bormi', N'Hariken', N'Board Bazar', N'Norsingdi- Ma-11-0116', 8, 0, 0, N'20', 1, 2, 84, 79, 0, 17, 180, N'Md. Selim', N'Abul kalam', N'24242-435454', 53546)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (10, CAST(0x8D3A0B00 AS Date), N'Route_9_Baira Bazar', N'Tongi', N'Joymondop', N'Norsingdi- Ma-11-0003', 3, 0, 0, N'0', 37, 74, 168, 118, 25, 1677, 1963, N'Md. Rahman', N'Ali noor', N'120', 70)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (11, CAST(0x8D3A0B00 AS Date), N'Route_32_Jamalpur Bazar', N'Tongi', N'Kaligonj bazar', N'Dhaka-Metro-Ma-11-3375', 15, 0, 0, N'0', 24, 48, 120, 84, 3, 218, 422, N'Md. Jummon', N'Abul kalam', N'2345-5443', 2344)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (12, CAST(0x8D3A0B00 AS Date), N'Route_9_Baira Bazar', N'Tongi', N'Singair', N'Dhaka-Metro-Ma-54-2832', 13, 0, 0, N'0', 43, 86, 180, 126, 7, 450, 756, N'Md. Hasan', N'Abul kalam', N'2425-36346', 1432525)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (13, CAST(0x8F3A0B00 AS Date), N'Route_7_Paturia', N'Tongi', N'Damrai', N'Dhaka-Metro- Ma-11-2314', 5, 0, 0, N'0', 25, 50, 120, 84, 10, 680, 884, N'Md. Rasel', N'Shahinoor', N'34-46', 7637)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (14, CAST(0x8F3A0B00 AS Date), N'Route_2_Chandpur', N'Tongi', N'Porabari', N'Norsingdi- Ma-11-0119', 10, 24, 24, N'40', 19, 38, 132, 140, 4, 258, 530, N'Md. Asadur', N'Ibrahim', N'2343-235235', 235235)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (15, CAST(0x8F3A0B00 AS Date), N'Route_15_Azimpur', N'Tongi', N'New Market', N'Norsingdi- Ma-11-0003', 3, 24, 24, N'20', 26, 52, 156, 136, 17, 1179, 1471, N'Md. Asadur', N'Ibrahim', N'2343-235235', 235235)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (16, CAST(0x8F3A0B00 AS Date), N'Route_14_Charigram', N'Tongi', N'Singair', N'Norsingdi- Ma-11-0057', 7, 0, 0, N'0', 43, 86, 180, 126, 12, 835, 1141, N'Md. Shaun', N'Sonjoy', N'995-455', 938)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (17, CAST(0x8F3A0B00 AS Date), N'Route_18_Monipuripara', N'Tongi', N'Shewrapara', N'Norsingdi- Ma-11-0057', 7, 0, 0, N'0', 29, 58, 132, 92, 8, 563, 787, N'Md. Rahman', N'Ibrahim', N'344-56', 5666)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (18, CAST(0x923A0B00 AS Date), N'Route_2_Chandpur', N'Tongi', N'Board Bazar', N'Dhaka-Metro-Ma-54-2831', 12, 0, 0, N'0', 7, 14, 84, 59, 1.16666666666667, 0, 222.333333333333, N'Md. Rasel', N'Delowar', N'1234', 76)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (19, CAST(0x933A0B00 AS Date), N'Route_8_Saturia', N'Tongi', N'Nabinagar', N'Dhaka-Metro-Ma-54-2832', 13, 0, 0, N'0', 21, 42, 120, 84, 3.23076923076923, 0, 423.692307692308, N'Select', N'Select', N'1323-232', 21424)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (20, CAST(0x993A0B00 AS Date), N'Route_1_Bormi', N'Tongi', N'Cheragali', N'Dhaka-Metro-Ma-14-0136', 7, 0, 0, N'40', 3, 6, 84, 99, 0.857142857142857, 58.2857142857143, 241.285714285714, N'Md. Bahadur', N'Zahirul', N'2424-23423', 23525)
INSERT [dbo].[final_tbl] ([Final_Id], [Date], [Route_Name], [PointA], [PointB], [Vehicle_Name], [Range_KPL], [Double_T_Driver], [Double_T_Helper], [Chalan_Fresh], [Total_Km_Up], [Total_Km_Down], [Driver_Taka], [Helper_Taka], [Diesel], [Fuel_Amount], [Grand_Total], [Driver_Name], [Helper_Name], [OC], [GP]) VALUES (21, CAST(0x0A3B0B00 AS Date), N'Route_1_Bormi', N'Hariken', N'Signboard', N'Norsingdi- Ma-11-0003', 8, 65, 65, N'20', 3, 6, 149, 144, 0.75, 51, 344, N'Md. Mojahirul', N'Shahadat', N'2444-4455', 345656)
SET IDENTITY_INSERT [dbo].[final_tbl] OFF
/****** Object:  Table [dbo].[Driver_tbl]    Script Date: 04/19/2016 08:37:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver_tbl](
	[Driver_Id] [int] NULL,
	[Driver_Name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (9329, N'Md. Jummon')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (3571, N'Md. Bahadur')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (6729, N'Md. Siddik')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (6542, N'Md. Rahman')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (3576, N'Md. Lalmia')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (11233, N'Md. Imam Hossain')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (10370, N'Md. Sojib')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (7184, N'Md. Asadur')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (8499, N'Md. Hasan')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (12974, N'Md. Mojahirul')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (9704, N'Md. Shohidul')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (10532, N'Md. Shaun')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (11402, N'Md. Rasel')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (5441, N'Md. Selim')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (6528, N'Md. Shamim Mia')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (7128, N'Md. Jakir')
INSERT [dbo].[Driver_tbl] ([Driver_Id], [Driver_Name]) VALUES (3569, N'Md. Shahinur')
/****** Object:  Table [dbo].[Condition_tbl]    Script Date: 04/19/2016 08:37:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Condition_tbl](
	[Condition_Id] [int] IDENTITY(1,1) NOT NULL,
	[Condition] [nvarchar](50) NULL,
	[Driver] [int] NULL,
	[Helper] [int] NULL,
 CONSTRAINT [PK_Condition_tbl] PRIMARY KEY CLUSTERED 
(
	[Condition_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Condition_tbl] ON
INSERT [dbo].[Condition_tbl] ([Condition_Id], [Condition], [Driver], [Helper]) VALUES (1, N'1-20', 84, 59)
INSERT [dbo].[Condition_tbl] ([Condition_Id], [Condition], [Driver], [Helper]) VALUES (2, N'21-30', 96, 67)
INSERT [dbo].[Condition_tbl] ([Condition_Id], [Condition], [Driver], [Helper]) VALUES (3, N'31-40', 108, 76)
SET IDENTITY_INSERT [dbo].[Condition_tbl] OFF
/****** Object:  Table [dbo].[Challan_Tbl]    Script Date: 04/19/2016 08:37:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Challan_Tbl](
	[Challan_Id] [int] IDENTITY(1,1) NOT NULL,
	[Challan_Value] [int] NULL,
 CONSTRAINT [PK_Challan_Tbl] PRIMARY KEY CLUSTERED 
(
	[Challan_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Challan_Tbl] ON
INSERT [dbo].[Challan_Tbl] ([Challan_Id], [Challan_Value]) VALUES (1, 0)
INSERT [dbo].[Challan_Tbl] ([Challan_Id], [Challan_Value]) VALUES (2, 20)
INSERT [dbo].[Challan_Tbl] ([Challan_Id], [Challan_Value]) VALUES (3, 40)
INSERT [dbo].[Challan_Tbl] ([Challan_Id], [Challan_Value]) VALUES (4, 60)
INSERT [dbo].[Challan_Tbl] ([Challan_Id], [Challan_Value]) VALUES (5, 80)
SET IDENTITY_INSERT [dbo].[Challan_Tbl] OFF
/****** Object:  Table [dbo].[Vehicle_tbl]    Script Date: 04/19/2016 08:37:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_tbl](
	[Vehicle_Id] [int] IDENTITY(1,1) NOT NULL,
	[Vehicle_Name] [nvarchar](50) NULL,
	[Range] [float] NULL,
	[Range_2] [float] NULL,
 CONSTRAINT [PK_Vehicle_tbl] PRIMARY KEY CLUSTERED 
(
	[Vehicle_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Vehicle_tbl] ON
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (1, N'Dhaka-Metro-Ma-14-0136', 8, 7)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (2, N'Dhaka-Metro-Ma-14-0260', 7, 8)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (3, N'Norsingdi- Ma-11-0003', 8, 10)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (4, N'Norsingdi- Ma-11-0004', 8, 10)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (5, N'Dhaka-Metro- Ma-11-2314', 7, 8)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (6, N'Dhaka-Metro-Au-14-0948', 6, 6)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (7, N'Norsingdi- Ma-11-0057', 8, 10)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (8, N'Norsingdi- Ma-11-0116', 8, 10)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (9, N'Norsingdi- Ma-11-0118', 8, 10)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (10, N'Norsingdi- Ma-11-0119', 8, 10)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (11, N'Norsingdi- Ma-11-0120', 8, 10)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (12, N'Dhaka-Metro-Ma-54-2831', 12, 14)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (13, N'Dhaka-Metro-Ma-54-2832', 12, 14)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (14, N'Dhaka-Metro-Ma-11-3374', 7, 8)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (15, N'Dhaka-Metro-Ma-11-3375', 7, 8)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (16, N'Dhaka-Metro-Ma-11-3515', 7, 8)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (17, N'Dhaka-Metro-Ma-11-3554', 7.6, 8.8)
INSERT [dbo].[Vehicle_tbl] ([Vehicle_Id], [Vehicle_Name], [Range], [Range_2]) VALUES (18, N'bmw', 6.5, 4.5)
SET IDENTITY_INSERT [dbo].[Vehicle_tbl] OFF
/****** Object:  Table [dbo].[User_tbl]    Script Date: 04/19/2016 08:37:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_tbl](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_User_tbl] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[User_tbl] ON
INSERT [dbo].[User_tbl] ([User_Id], [Username], [Password]) VALUES (1, N'12068', N'12068')
INSERT [dbo].[User_tbl] ([User_Id], [Username], [Password]) VALUES (2, N'12008', N'12008')
SET IDENTITY_INSERT [dbo].[User_tbl] OFF
/****** Object:  Table [dbo].[Route_tbl]    Script Date: 04/19/2016 08:37:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Route_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NULL,
	[Route_Name] [varchar](50) NULL,
	[Route_Id] [int] NULL,
 CONSTRAINT [PK_Route_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Route_tbl] ON
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (1, 1, N'Route_1_Bormi', 1)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (2, 1, N'Route_2_Chandpur', 2)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (3, 1, N'Route_3_Jorpukur Par', 3)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (4, 1, N'Route_4_Kaliakoir', 4)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (5, 1, N'Route_5_PIP', 5)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (6, 1, N'Route_6_RIP', 6)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (7, 1, N'Route_7_Paturia', 7)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (8, 1, N'Route_8_Saturia', 8)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (9, 1, N'Route_9_Baira Bazar', 9)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (10, 1, N'Route_10_Shirajpur', 10)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (11, 1, N'Route_11_Bhadail Bazar', 11)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (12, 1, N'Route_12_Bashbari', 12)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (13, 1, N'Route_13_Meradia Bazar', 13)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (14, 1, N'Route_14_Charigram', 14)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (15, 1, N'Route_15_Azimpur', 15)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (16, 1, N'Route_16_Green Road', 16)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (17, 1, N'Route_17_Rayer Bazar', 17)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (18, 1, N'Route_18_Monipuripara', 18)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (19, 1, N'Route_19_Kawraid', 19)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (20, 1, N'Route_20_Soling More', 20)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (21, 1, N'Route_21_Mowchak', 21)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (22, 1, N'Route_22_Kolmeshshor Bazar', 22)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (23, 1, N'Route_23_Jinu Market', 23)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (24, 1, N'Route_24_Shimultali', 24)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (25, 1, N'Route_25_Bilashpur', 25)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (26, 1, N'Route_26_Joynabari', 26)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (27, 1, N'Route_27_Satir Bazar', 27)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (28, 1, N'Route_28_Dighirchala', 28)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (29, 1, N'Route_29_Berenda', 29)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (30, 1, N'Route_30_Ambag', 30)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (31, 1, N'Route_31_Kashimpur Bazar', 31)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (32, 1, N'Route_32_Jamalpur Bazar', 32)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (33, 1, N'Route_33_Baktarpur', 33)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (34, 1, N'Route_34_Jangalia', 34)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (35, 1, N'Route_35_Aurakhali', 35)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (36, 1, N'Route_36_Dolon Bazar', 36)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (37, 1, N'Route_37_Islampur Bazar', 37)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (38, 1, N'Route_38_Dhamrai Bazar', 38)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (39, 1, N'Route_39_Kalampur Bazar', 39)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (40, 1, N'Route_40_Zitka', 40)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (41, 1, N'Route_41_Horirampur', 41)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (42, 1, N'Route_42_Ghior', 42)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (43, 1, N'Route_43_Kochta Bazar', 43)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (44, 1, N'Route_44_Dhantara Bazar', 44)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (45, 1, N'Route_45_BKSP', 45)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (46, 1, N'Route_46_Purbo-Rajashon', 46)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (47, 1, N'Route_47_Sarail Bazar', 47)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (48, 1, N'Route_48_Faydabad', 48)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (49, 1, N'Route_49_Kawla Bazar', 49)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (50, 1, N'Route_50_Dhanmondi', 50)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (51, 1, N'Route_51_Pakiria', 51)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (52, 1, N'Route_52_Chapain Road', 52)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (53, 1, N'Route_53_Gowiur', 53)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (54, 1, N'Route_54_Kathgora Bazar', 54)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (55, 1, N'Route_55_Ashkona', 55)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (56, 1, N'Route_56_Mollartek', 56)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (57, 1, N'Route_57_Dakhin Khan', 57)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (58, 1, N'Route_58_Ainusbag', 58)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (59, 1, N'Route_59_Nakhal Para', 59)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (60, 1, N'Route_60_Monipuripara', 60)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (61, 1, N'Route_61_Mirpur-6', 61)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (62, 1, N'Route_62_Pallobi', 62)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (63, 1, N'Route_63_Mulim Bazar', 63)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (64, 1, N'Route_64_Mulim Bazar', 64)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (65, 1, N'Route_65_Manikdi', 65)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (66, 1, N'Route_66_Islampur', 66)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (67, 1, N'Route_67_Goladnga', 67)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (68, 1, N'Route_68_Charigram', 67)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (69, 2, N'Route_01_Bogura', 1)
INSERT [dbo].[Route_tbl] ([ID], [User_Id], [Route_Name], [Route_Id]) VALUES (74, 2, N'Route_02_Sutarapur', 2)
SET IDENTITY_INSERT [dbo].[Route_tbl] OFF
/****** Object:  ForeignKey [FK_Route_tbl_User_tbl]    Script Date: 04/19/2016 08:37:03 ******/
ALTER TABLE [dbo].[Route_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Route_tbl_User_tbl] FOREIGN KEY([User_Id])
REFERENCES [dbo].[User_tbl] ([User_Id])
GO
ALTER TABLE [dbo].[Route_tbl] CHECK CONSTRAINT [FK_Route_tbl_User_tbl]
GO
