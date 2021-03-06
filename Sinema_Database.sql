USE [master]
GO
/****** Object:  Database [Sinema_Database]    Script Date: 10/05/2015 13:13:00 ******/
CREATE DATABASE [Sinema_Database] ON  PRIMARY 
( NAME = N'Sinema_Database', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Sinema_Database.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Sinema_Database_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Sinema_Database_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Sinema_Database] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sinema_Database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sinema_Database] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Sinema_Database] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Sinema_Database] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Sinema_Database] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Sinema_Database] SET ARITHABORT OFF
GO
ALTER DATABASE [Sinema_Database] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Sinema_Database] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Sinema_Database] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Sinema_Database] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Sinema_Database] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Sinema_Database] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Sinema_Database] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Sinema_Database] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Sinema_Database] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Sinema_Database] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Sinema_Database] SET  DISABLE_BROKER
GO
ALTER DATABASE [Sinema_Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Sinema_Database] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Sinema_Database] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Sinema_Database] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Sinema_Database] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Sinema_Database] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Sinema_Database] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Sinema_Database] SET  READ_WRITE
GO
ALTER DATABASE [Sinema_Database] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Sinema_Database] SET  MULTI_USER
GO
ALTER DATABASE [Sinema_Database] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Sinema_Database] SET DB_CHAINING OFF
GO
USE [Sinema_Database]
GO
/****** Object:  Table [dbo].[Calisan]    Script Date: 10/05/2015 13:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Calisan](
	[İd] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[TCKN] [char](11) NULL,
	[Kullaniciadi] [nvarchar](50) NULL,
	[Parola] [nvarchar](100) NULL,
	[Doğumtarihi] [datetime] NULL,
 CONSTRAINT [PK_Calisan] PRIMARY KEY CLUSTERED 
(
	[İd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Seanslar]    Script Date: 10/05/2015 13:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seanslar](
	[İd] [int] IDENTITY(1,1) NOT NULL,
	[Saat] [time](7) NULL,
	[Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Seanslar] PRIMARY KEY CLUSTERED 
(
	[İd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satistur]    Script Date: 10/05/2015 13:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satistur](
	[İd] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Satistur] PRIMARY KEY CLUSTERED 
(
	[İd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salon]    Script Date: 10/05/2015 13:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salon](
	[İd] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Kapasite] [int] NULL,
	[Sırasayisi] [int] NULL,
 CONSTRAINT [PK_Salon] PRIMARY KEY CLUSTERED 
(
	[İd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 10/05/2015 13:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[İd] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[Kayittarihi] [datetime] NULL,
	[Kullaniciadi] [nvarchar](50) NOT NULL,
	[Sifre] [nvarchar](100) NULL,
	[Vipmi] [bit] NOT NULL,
	[İndirimorani] [real] NOT NULL,
 CONSTRAINT [PK_Musteri_1] PRIMARY KEY CLUSTERED 
(
	[İd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_Kullaniciadi] UNIQUE NONCLUSTERED 
(
	[Kullaniciadi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kampanya]    Script Date: 10/05/2015 13:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kampanya](
	[İd] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Oran] [int] NULL,
 CONSTRAINT [PK_Kampanya] PRIMARY KEY CLUSTERED 
(
	[İd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmTur]    Script Date: 10/05/2015 13:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmTur](
	[İd] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FilmTur] PRIMARY KEY CLUSTERED 
(
	[İd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_FilmTur] UNIQUE NONCLUSTERED 
(
	[Adi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filmler]    Script Date: 10/05/2015 13:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filmler](
	[İd] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Ucboyutlumu] [bit] NULL,
	[Turid] [int] NULL,
	[Sure] [int] NULL,
	[Yerli] [bit] NULL,
 CONSTRAINT [PK_Filmler] PRIMARY KEY CLUSTERED 
(
	[İd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satis]    Script Date: 10/05/2015 13:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satis](
	[İd] [int] IDENTITY(1,1) NOT NULL,
	[Biletid] [int] NULL,
	[Calisanid] [int] NULL,
	[Tarih] [datetime] NULL,
	[Musteriid] [int] NULL,
	[Fiyat] [money] NULL,
	[Satisturid] [int] NULL,
	[İndirim] [int] NULL,
	[Kampanyaid] [int] NULL,
 CONSTRAINT [PK_Satis] PRIMARY KEY CLUSTERED 
(
	[İd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bilet]    Script Date: 10/05/2015 13:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bilet](
	[İd] [int] IDENTITY(1,1) NOT NULL,
	[Filmid] [int] NULL,
	[Salonid] [int] NULL,
	[Seansid] [int] NULL,
	[Tarih] [datetime] NULL,
	[Koltukno] [nvarchar](10) NULL,
	[Satisid] [int] NULL,
 CONSTRAINT [PK_Bilet] PRIMARY KEY CLUSTERED 
(
	[İd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Musteri_İndirimorani]    Script Date: 10/05/2015 13:13:01 ******/
ALTER TABLE [dbo].[Musteri] ADD  CONSTRAINT [DF_Musteri_İndirimorani]  DEFAULT ((0)) FOR [İndirimorani]
GO
/****** Object:  Default [DF_Satis_Tarih]    Script Date: 10/05/2015 13:13:01 ******/
ALTER TABLE [dbo].[Satis] ADD  CONSTRAINT [DF_Satis_Tarih]  DEFAULT (getdate()) FOR [Tarih]
GO
/****** Object:  Check [CK_Kapasite]    Script Date: 10/05/2015 13:13:01 ******/
ALTER TABLE [dbo].[Salon]  WITH CHECK ADD  CONSTRAINT [CK_Kapasite] CHECK  (([Kapasite]>(0)))
GO
ALTER TABLE [dbo].[Salon] CHECK CONSTRAINT [CK_Kapasite]
GO
/****** Object:  Check [CK_Sırasayisi]    Script Date: 10/05/2015 13:13:01 ******/
ALTER TABLE [dbo].[Salon]  WITH CHECK ADD  CONSTRAINT [CK_Sırasayisi] CHECK  (([Sırasayisi]>(0)))
GO
ALTER TABLE [dbo].[Salon] CHECK CONSTRAINT [CK_Sırasayisi]
GO
/****** Object:  ForeignKey [FK_Filmler_FilmTur1]    Script Date: 10/05/2015 13:13:01 ******/
ALTER TABLE [dbo].[Filmler]  WITH CHECK ADD  CONSTRAINT [FK_Filmler_FilmTur1] FOREIGN KEY([Turid])
REFERENCES [dbo].[FilmTur] ([İd])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Filmler] CHECK CONSTRAINT [FK_Filmler_FilmTur1]
GO
/****** Object:  ForeignKey [FK_Satis_Calisan]    Script Date: 10/05/2015 13:13:01 ******/
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Calisan] FOREIGN KEY([Calisanid])
REFERENCES [dbo].[Calisan] ([İd])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Calisan]
GO
/****** Object:  ForeignKey [FK_Satis_Kampanya]    Script Date: 10/05/2015 13:13:01 ******/
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Kampanya] FOREIGN KEY([Kampanyaid])
REFERENCES [dbo].[Kampanya] ([İd])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Kampanya]
GO
/****** Object:  ForeignKey [FK_Satis_Musteri1]    Script Date: 10/05/2015 13:13:01 ******/
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Musteri1] FOREIGN KEY([Musteriid])
REFERENCES [dbo].[Musteri] ([İd])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Musteri1]
GO
/****** Object:  ForeignKey [FK_Satis_Satistur]    Script Date: 10/05/2015 13:13:01 ******/
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Satistur] FOREIGN KEY([Satisturid])
REFERENCES [dbo].[Satistur] ([İd])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Satistur]
GO
/****** Object:  ForeignKey [FK_Bilet_Filmler]    Script Date: 10/05/2015 13:13:01 ******/
ALTER TABLE [dbo].[Bilet]  WITH CHECK ADD  CONSTRAINT [FK_Bilet_Filmler] FOREIGN KEY([Filmid])
REFERENCES [dbo].[Filmler] ([İd])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bilet] CHECK CONSTRAINT [FK_Bilet_Filmler]
GO
/****** Object:  ForeignKey [FK_Bilet_Salon]    Script Date: 10/05/2015 13:13:01 ******/
ALTER TABLE [dbo].[Bilet]  WITH CHECK ADD  CONSTRAINT [FK_Bilet_Salon] FOREIGN KEY([Salonid])
REFERENCES [dbo].[Salon] ([İd])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bilet] CHECK CONSTRAINT [FK_Bilet_Salon]
GO
/****** Object:  ForeignKey [FK_Bilet_Satis]    Script Date: 10/05/2015 13:13:01 ******/
ALTER TABLE [dbo].[Bilet]  WITH CHECK ADD  CONSTRAINT [FK_Bilet_Satis] FOREIGN KEY([Satisid])
REFERENCES [dbo].[Satis] ([İd])
GO
ALTER TABLE [dbo].[Bilet] CHECK CONSTRAINT [FK_Bilet_Satis]
GO
/****** Object:  ForeignKey [FK_Bilet_Seanslar]    Script Date: 10/05/2015 13:13:01 ******/
ALTER TABLE [dbo].[Bilet]  WITH CHECK ADD  CONSTRAINT [FK_Bilet_Seanslar] FOREIGN KEY([Seansid])
REFERENCES [dbo].[Seanslar] ([İd])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bilet] CHECK CONSTRAINT [FK_Bilet_Seanslar]
GO
