USE [master]
GO
/****** Object:  Database [FairManagementSystemDB]    Script Date: 6/8/2015 11:07:25 AM ******/
CREATE DATABASE [FairManagementSystemDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FairManagementSystemDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\FairManagementSystemDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FairManagementSystemDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\FairManagementSystemDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FairManagementSystemDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FairManagementSystemDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FairManagementSystemDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [FairManagementSystemDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FairManagementSystemDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FairManagementSystemDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FairManagementSystemDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FairManagementSystemDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FairManagementSystemDB] SET  MULTI_USER 
GO
ALTER DATABASE [FairManagementSystemDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FairManagementSystemDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FairManagementSystemDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FairManagementSystemDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [FairManagementSystemDB]
GO
/****** Object:  Table [dbo].[Relation_tbl]    Script Date: 6/8/2015 11:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relation_tbl](
	[VisitorID] [int] NOT NULL,
	[ZoneTypeID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VisitorInfo_tbl]    Script Date: 6/8/2015 11:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VisitorInfo_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Contact_No] [varchar](50) NOT NULL,
 CONSTRAINT [PK_VisitorInfo_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZoneType_tbl]    Script Date: 6/8/2015 11:07:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZoneType_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ZoneType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ZoneType_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Relation_tbl] ([VisitorID], [ZoneTypeID]) VALUES (8, 1)
INSERT [dbo].[Relation_tbl] ([VisitorID], [ZoneTypeID]) VALUES (8, 2)
INSERT [dbo].[Relation_tbl] ([VisitorID], [ZoneTypeID]) VALUES (8, 3)
INSERT [dbo].[Relation_tbl] ([VisitorID], [ZoneTypeID]) VALUES (8, 5)
INSERT [dbo].[Relation_tbl] ([VisitorID], [ZoneTypeID]) VALUES (9, 3)
INSERT [dbo].[Relation_tbl] ([VisitorID], [ZoneTypeID]) VALUES (9, 4)
INSERT [dbo].[Relation_tbl] ([VisitorID], [ZoneTypeID]) VALUES (9, 5)
INSERT [dbo].[Relation_tbl] ([VisitorID], [ZoneTypeID]) VALUES (10, 1)
INSERT [dbo].[Relation_tbl] ([VisitorID], [ZoneTypeID]) VALUES (10, 2)
INSERT [dbo].[Relation_tbl] ([VisitorID], [ZoneTypeID]) VALUES (10, 3)
INSERT [dbo].[Relation_tbl] ([VisitorID], [ZoneTypeID]) VALUES (11, 1)
SET IDENTITY_INSERT [dbo].[VisitorInfo_tbl] ON 

INSERT [dbo].[VisitorInfo_tbl] ([ID], [Name], [Email], [Contact_No]) VALUES (8, N'jdfsdiof', N'sdgdfg@gmail.com', N'54652')
INSERT [dbo].[VisitorInfo_tbl] ([ID], [Name], [Email], [Contact_No]) VALUES (9, N'fghtyjh', N'gdfg@gmail.com', N'425254')
INSERT [dbo].[VisitorInfo_tbl] ([ID], [Name], [Email], [Contact_No]) VALUES (10, N'tgryghfkgfdgf', N'fgf@gmail.com', N'45472')
INSERT [dbo].[VisitorInfo_tbl] ([ID], [Name], [Email], [Contact_No]) VALUES (11, N'rtyrtyhov', N'tyutyu@gmail.com', N'45727557')
SET IDENTITY_INSERT [dbo].[VisitorInfo_tbl] OFF
SET IDENTITY_INSERT [dbo].[ZoneType_tbl] ON 

INSERT [dbo].[ZoneType_tbl] ([ID], [ZoneType]) VALUES (1, N'Mobile Management App')
INSERT [dbo].[ZoneType_tbl] ([ID], [ZoneType]) VALUES (2, N'File Management App')
INSERT [dbo].[ZoneType_tbl] ([ID], [ZoneType]) VALUES (3, N'Game Management App')
INSERT [dbo].[ZoneType_tbl] ([ID], [ZoneType]) VALUES (4, N'Film Show Zone')
INSERT [dbo].[ZoneType_tbl] ([ID], [ZoneType]) VALUES (5, N'Dhaka')
INSERT [dbo].[ZoneType_tbl] ([ID], [ZoneType]) VALUES (6, N'Rajshahi')
SET IDENTITY_INSERT [dbo].[ZoneType_tbl] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_VisitorInfo_tbl]    Script Date: 6/8/2015 11:07:25 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_VisitorInfo_tbl] ON [dbo].[VisitorInfo_tbl]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Relation_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Relation_tbl_VisitorInfo_tbl] FOREIGN KEY([VisitorID])
REFERENCES [dbo].[VisitorInfo_tbl] ([ID])
GO
ALTER TABLE [dbo].[Relation_tbl] CHECK CONSTRAINT [FK_Relation_tbl_VisitorInfo_tbl]
GO
ALTER TABLE [dbo].[Relation_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Relation_tbl_ZoneType_tbl] FOREIGN KEY([ZoneTypeID])
REFERENCES [dbo].[ZoneType_tbl] ([ID])
GO
ALTER TABLE [dbo].[Relation_tbl] CHECK CONSTRAINT [FK_Relation_tbl_ZoneType_tbl]
GO
USE [master]
GO
ALTER DATABASE [FairManagementSystemDB] SET  READ_WRITE 
GO
