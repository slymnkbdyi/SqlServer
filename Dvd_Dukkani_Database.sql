USE [master]
GO
/****** Object:  Database [Dvd_Dukkani_Database]    Script Date: 10/05/2015 13:11:00 ******/
CREATE DATABASE [Dvd_Dukkani_Database] ON  PRIMARY 
( NAME = N'Dvd_Dukkani_Database', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Dvd_Dukkani_Database.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Dvd_Dukkani_Database_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Dvd_Dukkani_Database_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dvd_Dukkani_Database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET ARITHABORT OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET  DISABLE_BROKER
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET  READ_WRITE
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET  MULTI_USER
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Dvd_Dukkani_Database] SET DB_CHAINING OFF
GO
USE [Dvd_Dukkani_Database]
GO
/****** Object:  Table [dbo].[Raflar]    Script Date: 10/05/2015 13:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raflar](
	[Rafid] [int] IDENTITY(1,1) NOT NULL,
	[Rafadi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Raflar] PRIMARY KEY CLUSTERED 
(
	[Rafid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oyuncular]    Script Date: 10/05/2015 13:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oyuncular](
	[Oyuncuid] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Oyuncular] PRIMARY KEY CLUSTERED 
(
	[Oyuncuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 10/05/2015 13:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Musteriler](
	[Musteriid] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[Kayittarihi] [datetime] NULL,
	[Telefon] [char](10) NULL,
	[Adres] [nvarchar](500) NULL,
	[TCKN] [char](11) NULL,
 CONSTRAINT [PK_Musteriler] PRIMARY KEY CLUSTERED 
(
	[Musteriid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_TCKN] UNIQUE NONCLUSTERED 
(
	[TCKN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_Telefon] UNIQUE NONCLUSTERED 
(
	[Telefon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Yonetmenler]    Script Date: 10/05/2015 13:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yonetmenler](
	[Yonetmenid] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Yonetmenler] PRIMARY KEY CLUSTERED 
(
	[Yonetmenid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turler]    Script Date: 10/05/2015 13:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turler](
	[Turid] [int] IDENTITY(1,1) NOT NULL,
	[Turadi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Turler] PRIMARY KEY CLUSTERED 
(
	[Turid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satislar]    Script Date: 10/05/2015 13:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satislar](
	[Satisid] [int] IDENTITY(1,1) NOT NULL,
	[Musteriid] [int] NULL,
	[Satistarihi] [datetime] NULL,
	[Teslimtarihi] [datetime] NULL,
 CONSTRAINT [PK_Satislar] PRIMARY KEY CLUSTERED 
(
	[Satisid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filmler]    Script Date: 10/05/2015 13:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filmler](
	[Filmid] [int] IDENTITY(1,1) NOT NULL,
	[Filmadi] [nvarchar](50) NOT NULL,
	[Konu] [nvarchar](100) NOT NULL,
	[Yonetmenid] [int] NOT NULL,
	[Sure] [int] NOT NULL,
	[VizyonTarihi] [date] NOT NULL,
	[Fiyatı] [money] NOT NULL,
	[Stok] [tinyint] NOT NULL,
	[Rafid] [int] NULL,
 CONSTRAINT [PK_Filmler] PRIMARY KEY CLUSTERED 
(
	[Filmid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satisurunleri]    Script Date: 10/05/2015 13:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satisurunleri](
	[Filmid] [int] NOT NULL,
	[Satisid] [int] NOT NULL,
	[Fiyat] [money] NULL,
 CONSTRAINT [PK_Satisurunleri] PRIMARY KEY CLUSTERED 
(
	[Filmid] ASC,
	[Satisid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmTurler]    Script Date: 10/05/2015 13:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmTurler](
	[Filmid] [int] NOT NULL,
	[Turid] [int] NOT NULL,
 CONSTRAINT [PK_FilmTurler] PRIMARY KEY CLUSTERED 
(
	[Filmid] ASC,
	[Turid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmOyuncular]    Script Date: 10/05/2015 13:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmOyuncular](
	[Oyuncuid] [int] NOT NULL,
	[Filmid] [int] NOT NULL,
 CONSTRAINT [PK_FilmOyuncular] PRIMARY KEY CLUSTERED 
(
	[Oyuncuid] ASC,
	[Filmid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Musteriler_Kayittarihi]    Script Date: 10/05/2015 13:11:01 ******/
ALTER TABLE [dbo].[Musteriler] ADD  CONSTRAINT [DF_Musteriler_Kayittarihi]  DEFAULT (getdate()) FOR [Kayittarihi]
GO
/****** Object:  Check [CK_Musteriler_Kayittarihi]    Script Date: 10/05/2015 13:11:01 ******/
ALTER TABLE [dbo].[Musteriler]  WITH CHECK ADD  CONSTRAINT [CK_Musteriler_Kayittarihi] CHECK  (([Kayittarihi]>=getdate()))
GO
ALTER TABLE [dbo].[Musteriler] CHECK CONSTRAINT [CK_Musteriler_Kayittarihi]
GO
/****** Object:  ForeignKey [FK_Satislar_Musteriler]    Script Date: 10/05/2015 13:11:01 ******/
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Satislar_Musteriler] FOREIGN KEY([Musteriid])
REFERENCES [dbo].[Musteriler] ([Musteriid])
GO
ALTER TABLE [dbo].[Satislar] CHECK CONSTRAINT [FK_Satislar_Musteriler]
GO
/****** Object:  ForeignKey [FK_Filmler_Raflar]    Script Date: 10/05/2015 13:11:01 ******/
ALTER TABLE [dbo].[Filmler]  WITH CHECK ADD  CONSTRAINT [FK_Filmler_Raflar] FOREIGN KEY([Rafid])
REFERENCES [dbo].[Raflar] ([Rafid])
GO
ALTER TABLE [dbo].[Filmler] CHECK CONSTRAINT [FK_Filmler_Raflar]
GO
/****** Object:  ForeignKey [FK_Filmler_Yonetmenler]    Script Date: 10/05/2015 13:11:01 ******/
ALTER TABLE [dbo].[Filmler]  WITH CHECK ADD  CONSTRAINT [FK_Filmler_Yonetmenler] FOREIGN KEY([Yonetmenid])
REFERENCES [dbo].[Yonetmenler] ([Yonetmenid])
GO
ALTER TABLE [dbo].[Filmler] CHECK CONSTRAINT [FK_Filmler_Yonetmenler]
GO
/****** Object:  ForeignKey [FK_Satisurunleri_Filmler]    Script Date: 10/05/2015 13:11:01 ******/
ALTER TABLE [dbo].[Satisurunleri]  WITH CHECK ADD  CONSTRAINT [FK_Satisurunleri_Filmler] FOREIGN KEY([Filmid])
REFERENCES [dbo].[Filmler] ([Filmid])
GO
ALTER TABLE [dbo].[Satisurunleri] CHECK CONSTRAINT [FK_Satisurunleri_Filmler]
GO
/****** Object:  ForeignKey [FK_Satisurunleri_Satislar]    Script Date: 10/05/2015 13:11:01 ******/
ALTER TABLE [dbo].[Satisurunleri]  WITH CHECK ADD  CONSTRAINT [FK_Satisurunleri_Satislar] FOREIGN KEY([Satisid])
REFERENCES [dbo].[Satislar] ([Satisid])
GO
ALTER TABLE [dbo].[Satisurunleri] CHECK CONSTRAINT [FK_Satisurunleri_Satislar]
GO
/****** Object:  ForeignKey [FK_FilmTurler_Filmler]    Script Date: 10/05/2015 13:11:01 ******/
ALTER TABLE [dbo].[FilmTurler]  WITH CHECK ADD  CONSTRAINT [FK_FilmTurler_Filmler] FOREIGN KEY([Filmid])
REFERENCES [dbo].[Filmler] ([Filmid])
GO
ALTER TABLE [dbo].[FilmTurler] CHECK CONSTRAINT [FK_FilmTurler_Filmler]
GO
/****** Object:  ForeignKey [FK_FilmTurler_Turler]    Script Date: 10/05/2015 13:11:01 ******/
ALTER TABLE [dbo].[FilmTurler]  WITH CHECK ADD  CONSTRAINT [FK_FilmTurler_Turler] FOREIGN KEY([Turid])
REFERENCES [dbo].[Turler] ([Turid])
GO
ALTER TABLE [dbo].[FilmTurler] CHECK CONSTRAINT [FK_FilmTurler_Turler]
GO
/****** Object:  ForeignKey [FK_FilmOyuncular_Filmler]    Script Date: 10/05/2015 13:11:01 ******/
ALTER TABLE [dbo].[FilmOyuncular]  WITH CHECK ADD  CONSTRAINT [FK_FilmOyuncular_Filmler] FOREIGN KEY([Filmid])
REFERENCES [dbo].[Filmler] ([Filmid])
GO
ALTER TABLE [dbo].[FilmOyuncular] CHECK CONSTRAINT [FK_FilmOyuncular_Filmler]
GO
/****** Object:  ForeignKey [FK_FilmOyuncular_Oyuncular]    Script Date: 10/05/2015 13:11:01 ******/
ALTER TABLE [dbo].[FilmOyuncular]  WITH CHECK ADD  CONSTRAINT [FK_FilmOyuncular_Oyuncular] FOREIGN KEY([Oyuncuid])
REFERENCES [dbo].[Oyuncular] ([Oyuncuid])
GO
ALTER TABLE [dbo].[FilmOyuncular] CHECK CONSTRAINT [FK_FilmOyuncular_Oyuncular]
GO
