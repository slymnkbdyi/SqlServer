USE [master]
GO
/****** Object:  Database [bank ]    Script Date: 10/05/2015 13:12:20 ******/
CREATE DATABASE [bank ] ON  PRIMARY 
( NAME = N'bank', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\bank .mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'bank _log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\bank _log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [bank ] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bank ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bank ] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [bank ] SET ANSI_NULLS OFF
GO
ALTER DATABASE [bank ] SET ANSI_PADDING OFF
GO
ALTER DATABASE [bank ] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [bank ] SET ARITHABORT OFF
GO
ALTER DATABASE [bank ] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [bank ] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [bank ] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [bank ] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [bank ] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [bank ] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [bank ] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [bank ] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [bank ] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [bank ] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [bank ] SET  DISABLE_BROKER
GO
ALTER DATABASE [bank ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [bank ] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [bank ] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [bank ] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [bank ] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [bank ] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [bank ] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [bank ] SET  READ_WRITE
GO
ALTER DATABASE [bank ] SET RECOVERY SIMPLE
GO
ALTER DATABASE [bank ] SET  MULTI_USER
GO
ALTER DATABASE [bank ] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [bank ] SET DB_CHAINING OFF
GO
USE [bank ]
GO
/****** Object:  Table [dbo].[Hesap]    Script Date: 10/05/2015 13:12:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hesap](
	[Hesapid] [int] IDENTITY(1,1) NOT NULL,
	[Hesapadi] [nvarchar](50) NULL,
	[Bakiye] [money] NULL,
 CONSTRAINT [PK_Hesap] PRIMARY KEY CLUSTERED 
(
	[Hesapid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[HavaleYap]    Script Date: 10/05/2015 13:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery2.sql|0|0|C:\Users\acer\AppData\Local\Temp\~vs6E56.sql
CREATE proc [dbo].[HavaleYap]	
@gonderen int,
@alici int,
@miktar money
as
begin try
begin tran havale   

update Hesap set Bakiye +=@miktar where Hesapid=@alici
update Hesap set Bakiye -=@miktar where Hesapid=@gonderen
commit tran havale   
end try



begin catch
rollback tran havale 
print ' bir hata oluştu'
end catch





exec HavaleYap 2,1,40
GO
