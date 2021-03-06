USE [master]
GO
/****** Object:  Database [OgrenciTakip_Database]    Script Date: 10/05/2015 13:13:38 ******/
CREATE DATABASE [OgrenciTakip_Database] ON  PRIMARY 
( NAME = N'OgrenciTakip_Database', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\OgrenciTakip_Database.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OgrenciTakip_Database_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\OgrenciTakip_Database_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [OgrenciTakip_Database] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OgrenciTakip_Database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OgrenciTakip_Database] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET ANSI_NULLS OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET ANSI_PADDING OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET ARITHABORT OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [OgrenciTakip_Database] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [OgrenciTakip_Database] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [OgrenciTakip_Database] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET  DISABLE_BROKER
GO
ALTER DATABASE [OgrenciTakip_Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [OgrenciTakip_Database] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [OgrenciTakip_Database] SET  READ_WRITE
GO
ALTER DATABASE [OgrenciTakip_Database] SET RECOVERY SIMPLE
GO
ALTER DATABASE [OgrenciTakip_Database] SET  MULTI_USER
GO
ALTER DATABASE [OgrenciTakip_Database] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [OgrenciTakip_Database] SET DB_CHAINING OFF
GO
USE [OgrenciTakip_Database]
GO
/****** Object:  Table [dbo].[Veliler]    Script Date: 10/05/2015 13:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Veliler](
	[Veliid] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[Telefon] [char](10) NULL,
	[Adres] [nvarchar](500) NULL,
	[TCKN] [char](11) NULL,
 CONSTRAINT [PK_Veliler] PRIMARY KEY CLUSTERED 
(
	[Veliid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dersler]    Script Date: 10/05/2015 13:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dersler](
	[Dersid] [int] IDENTITY(1,1) NOT NULL,
	[Dersadi] [nvarchar](50) NULL,
	[Ogretmenid] [int] NULL,
 CONSTRAINT [PK_Dersler] PRIMARY KEY CLUSTERED 
(
	[Dersid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branslar]    Script Date: 10/05/2015 13:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branslar](
	[Bransid] [int] IDENTITY(1,1) NOT NULL,
	[Bransadi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Branslar] PRIMARY KEY CLUSTERED 
(
	[Bransid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogrenciler]    Script Date: 10/05/2015 13:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ogrenciler](
	[Ogrenciid] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[Ogrencino] [nvarchar](50) NULL,
	[Telefonno] [char](10) NULL,
	[TCKN] [char](11) NULL,
 CONSTRAINT [PK_Ogrenciler] PRIMARY KEY CLUSTERED 
(
	[Ogrenciid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OgrenciDers]    Script Date: 10/05/2015 13:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciDers](
	[Ogrenciid] [int] NOT NULL,
	[Dersid] [int] NOT NULL,
	[Notu] [int] NULL,
 CONSTRAINT [PK_OgrenciDers] PRIMARY KEY CLUSTERED 
(
	[Ogrenciid] ASC,
	[Dersid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogretmen]    Script Date: 10/05/2015 13:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ogretmen](
	[Ogretmenid] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[TCKN] [char](11) NULL,
	[Bransid] [int] NULL,
 CONSTRAINT [PK_Ogretmen] PRIMARY KEY CLUSTERED 
(
	[Ogretmenid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OgrenciVeliler]    Script Date: 10/05/2015 13:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciVeliler](
	[Ogrenciid] [int] NOT NULL,
	[Veliid] [int] NOT NULL,
 CONSTRAINT [PK_OgrenciVeliler] PRIMARY KEY CLUSTERED 
(
	[Ogrenciid] ASC,
	[Veliid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgretmenDers]    Script Date: 10/05/2015 13:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgretmenDers](
	[Ogretmenid] [int] NOT NULL,
	[Dersid] [int] NOT NULL,
 CONSTRAINT [PK_OgretmenDers] PRIMARY KEY CLUSTERED 
(
	[Ogretmenid] ASC,
	[Dersid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_OgrenciDers_Dersler]    Script Date: 10/05/2015 13:13:39 ******/
ALTER TABLE [dbo].[OgrenciDers]  WITH CHECK ADD  CONSTRAINT [FK_OgrenciDers_Dersler] FOREIGN KEY([Dersid])
REFERENCES [dbo].[Dersler] ([Dersid])
GO
ALTER TABLE [dbo].[OgrenciDers] CHECK CONSTRAINT [FK_OgrenciDers_Dersler]
GO
/****** Object:  ForeignKey [FK_OgrenciDers_Ogrenciler]    Script Date: 10/05/2015 13:13:39 ******/
ALTER TABLE [dbo].[OgrenciDers]  WITH CHECK ADD  CONSTRAINT [FK_OgrenciDers_Ogrenciler] FOREIGN KEY([Ogrenciid])
REFERENCES [dbo].[Ogrenciler] ([Ogrenciid])
GO
ALTER TABLE [dbo].[OgrenciDers] CHECK CONSTRAINT [FK_OgrenciDers_Ogrenciler]
GO
/****** Object:  ForeignKey [FK_Ogretmen_Branslar]    Script Date: 10/05/2015 13:13:39 ******/
ALTER TABLE [dbo].[Ogretmen]  WITH CHECK ADD  CONSTRAINT [FK_Ogretmen_Branslar] FOREIGN KEY([Bransid])
REFERENCES [dbo].[Branslar] ([Bransid])
GO
ALTER TABLE [dbo].[Ogretmen] CHECK CONSTRAINT [FK_Ogretmen_Branslar]
GO
/****** Object:  ForeignKey [FK_OgrenciVeliler_Ogrenciler]    Script Date: 10/05/2015 13:13:39 ******/
ALTER TABLE [dbo].[OgrenciVeliler]  WITH CHECK ADD  CONSTRAINT [FK_OgrenciVeliler_Ogrenciler] FOREIGN KEY([Ogrenciid])
REFERENCES [dbo].[Ogrenciler] ([Ogrenciid])
GO
ALTER TABLE [dbo].[OgrenciVeliler] CHECK CONSTRAINT [FK_OgrenciVeliler_Ogrenciler]
GO
/****** Object:  ForeignKey [FK_OgrenciVeliler_Veliler]    Script Date: 10/05/2015 13:13:39 ******/
ALTER TABLE [dbo].[OgrenciVeliler]  WITH CHECK ADD  CONSTRAINT [FK_OgrenciVeliler_Veliler] FOREIGN KEY([Veliid])
REFERENCES [dbo].[Veliler] ([Veliid])
GO
ALTER TABLE [dbo].[OgrenciVeliler] CHECK CONSTRAINT [FK_OgrenciVeliler_Veliler]
GO
/****** Object:  ForeignKey [FK_OgretmenDers_Dersler]    Script Date: 10/05/2015 13:13:39 ******/
ALTER TABLE [dbo].[OgretmenDers]  WITH CHECK ADD  CONSTRAINT [FK_OgretmenDers_Dersler] FOREIGN KEY([Dersid])
REFERENCES [dbo].[Dersler] ([Dersid])
GO
ALTER TABLE [dbo].[OgretmenDers] CHECK CONSTRAINT [FK_OgretmenDers_Dersler]
GO
/****** Object:  ForeignKey [FK_OgretmenDers_Ogretmen]    Script Date: 10/05/2015 13:13:39 ******/
ALTER TABLE [dbo].[OgretmenDers]  WITH CHECK ADD  CONSTRAINT [FK_OgretmenDers_Ogretmen] FOREIGN KEY([Ogretmenid])
REFERENCES [dbo].[Ogretmen] ([Ogretmenid])
GO
ALTER TABLE [dbo].[OgretmenDers] CHECK CONSTRAINT [FK_OgretmenDers_Ogretmen]
GO
