USE [master]
GO
/****** Object:  Database [CEES]    Script Date: 07/17/2018 07:39:15 ******/
CREATE DATABASE [CEES] ON  PRIMARY 
( NAME = N'CEES', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\CEES.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CEES_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\CEES.ldf' , SIZE = 9216KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CEES] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CEES].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [CEES] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CEES] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CEES] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CEES] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CEES] SET ARITHABORT OFF
GO
ALTER DATABASE [CEES] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CEES] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CEES] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CEES] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CEES] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CEES] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CEES] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CEES] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CEES] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CEES] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CEES] SET  DISABLE_BROKER
GO
ALTER DATABASE [CEES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CEES] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CEES] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CEES] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CEES] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CEES] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CEES] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CEES] SET  READ_WRITE
GO
ALTER DATABASE [CEES] SET RECOVERY FULL
GO
ALTER DATABASE [CEES] SET  MULTI_USER
GO
ALTER DATABASE [CEES] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CEES] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'CEES', N'ON'
GO
USE [CEES]
GO
/****** Object:  Table [dbo].[Display_User]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Display_User](
	[XH] [smallint] NOT NULL,
	[XZ] [varchar](50) NULL,
	[ZDMC] [varchar](255) NULL,
	[GRIDMC] [varchar](255) NULL,
	[ZW] [varchar](50) NULL,
	[XSKD] [smallint] NULL,
	[XSYS] [varchar](50) NULL,
	[VISIBLE] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Display_Test]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Display_Test](
	[XH] [smallint] NOT NULL,
	[XZ] [varchar](50) NULL,
	[ZDMC] [varchar](255) NULL,
	[GRIDMC] [varchar](255) NULL,
	[ZW] [varchar](50) NULL,
	[XSKD] [smallint] NULL,
	[XSYS] [varchar](50) NULL,
	[VISIBLE] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Display_SJKYQD]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Display_SJKYQD](
	[XH] [smallint] NOT NULL,
	[XZ] [varchar](50) NULL,
	[ZDMC] [varchar](255) NULL,
	[GRIDMC] [varchar](255) NULL,
	[ZW] [varchar](50) NULL,
	[XSKD] [smallint] NULL,
	[XSYS] [varchar](50) NULL,
	[VISIBLE] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Display_Project]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Display_Project](
	[XH] [smallint] NOT NULL,
	[XZ] [varchar](50) NULL,
	[ZDMC] [varchar](255) NULL,
	[GRIDMC] [varchar](255) NULL,
	[ZW] [varchar](50) NULL,
	[XSKD] [smallint] NULL,
	[XSYS] [varchar](50) NULL,
	[VISIBLE] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Display_Hntkz]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Display_Hntkz](
	[XH] [smallint] NOT NULL,
	[XZ] [varchar](50) NULL,
	[ZDMC] [varchar](255) NULL,
	[GRIDMC] [varchar](255) NULL,
	[ZW] [varchar](50) NULL,
	[XSKD] [smallint] NULL,
	[XSYS] [varchar](50) NULL,
	[VISIBLE] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Display_Hntky]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Display_Hntky](
	[XH] [smallint] NOT NULL,
	[XZ] [varchar](50) NULL,
	[ZDMC] [varchar](255) NULL,
	[GRIDMC] [varchar](255) NULL,
	[ZW] [varchar](50) NULL,
	[XSKD] [smallint] NULL,
	[XSYS] [varchar](50) NULL,
	[VISIBLE] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Display_GJYC]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Display_GJYC](
	[XH] [smallint] NOT NULL,
	[XZ] [varchar](50) NULL,
	[ZDMC] [varchar](255) NULL,
	[GRIDMC] [varchar](255) NULL,
	[ZW] [varchar](50) NULL,
	[XSKD] [smallint] NULL,
	[XSYS] [varchar](50) NULL,
	[VISIBLE] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Display_Construction]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Display_Construction](
	[XH] [smallint] NOT NULL,
	[XZ] [varchar](50) NULL,
	[ZDMC] [varchar](255) NULL,
	[GRIDMC] [varchar](255) NULL,
	[ZW] [varchar](50) NULL,
	[XSKD] [smallint] NULL,
	[XSYS] [varchar](50) NULL,
	[VISIBLE] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Display_Concrete]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Display_Concrete](
	[XH] [smallint] NOT NULL,
	[XZ] [varchar](50) NULL,
	[ZDMC] [varchar](255) NULL,
	[GRIDMC] [varchar](255) NULL,
	[ZW] [varchar](50) NULL,
	[XSKD] [smallint] NULL,
	[XSYS] [varchar](50) NULL,
	[VISIBLE] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Display_Build]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Display_Build](
	[XH] [smallint] NOT NULL,
	[XZ] [varchar](50) NULL,
	[ZDMC] [varchar](255) NULL,
	[GRIDMC] [varchar](255) NULL,
	[ZW] [varchar](50) NULL,
	[XSKD] [smallint] NULL,
	[XSYS] [varchar](50) NULL,
	[VISIBLE] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CEES_WCXKY]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_WCXKY](
	[wcxid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NULL,
	[cnumber] [varchar](50) NULL,
	[pid] [int] NULL,
	[projectnumber] [varchar](50) NULL,
	[client] [varchar](50) NULL,
	[wcxnumber] [varchar](50) NULL,
	[testnumber] [varchar](50) NULL,
	[sn] [int] NULL,
	[sn_project] [int] NULL,
	[sn_test] [int] NULL,
	[state] [varchar](50) NULL,
	[remarks] [varchar](50) NULL,
	[edittime] [varchar](50) NULL,
	[edituser] [varchar](50) NULL,
	[readmark] [bit] NULL,
	[readtime] [varchar](50) NULL,
	[WTDBH] [varchar](10) NULL,
	[WTDWMC] [varchar](80) NULL,
	[SYZL] [varchar](20) NULL,
	[CLCD] [varchar](40) NULL,
	[CLYT] [varchar](40) NULL,
	[LYRQ] [smalldatetime] NULL,
	[SYBH] [varchar](17) NULL,
	[GCMC] [varchar](80) NULL,
	[SYRQ] [smalldatetime] NULL,
	[ZZRQ] [smalldatetime] NULL,
	[CXFF] [varchar](40) NULL,
	[SJCC] [varchar](10) NULL,
	[PHB] [varchar](50) NULL,
	[ZDGRZ] [varchar](10) NULL,
	[ZJHSL] [varchar](10) NULL,
	[SJZ] [varchar](10) NULL,
	[SJGRZ] [varchar](10) NULL,
	[SJHSL] [varchar](10) NULL,
	[YSHSL] [varchar](10) NULL,
	[JSQZ1] [varchar](10) NULL,
	[JSQZ2] [varchar](10) NULL,
	[JSQZ3] [varchar](10) NULL,
	[JSQZ4] [varchar](10) NULL,
	[JSQZ5] [varchar](10) NULL,
	[JSQZ6] [varchar](10) NULL,
	[JSQZ7] [varchar](10) NULL,
	[JSQZ8] [varchar](10) NULL,
	[JSQZ9] [varchar](10) NULL,
	[JSQZ10] [varchar](10) NULL,
	[JSQZ11] [varchar](10) NULL,
	[JSQZ12] [varchar](10) NULL,
	[JSQZ13] [varchar](10) NULL,
	[JSHZ1] [varchar](10) NULL,
	[JSHZ2] [varchar](10) NULL,
	[JSHZ3] [varchar](10) NULL,
	[JSHZ4] [varchar](10) NULL,
	[JSHZ5] [varchar](10) NULL,
	[JSHZ6] [varchar](10) NULL,
	[JSHZ7] [varchar](10) NULL,
	[JSHZ8] [varchar](10) NULL,
	[JSHZ9] [varchar](10) NULL,
	[JSHZ10] [varchar](10) NULL,
	[JSHZ11] [varchar](10) NULL,
	[JSHZ12] [varchar](10) NULL,
	[JSHZ13] [varchar](10) NULL,
	[SJGD1] [varchar](10) NULL,
	[SJGD2] [varchar](10) NULL,
	[SJGD3] [varchar](10) NULL,
	[SJGD4] [varchar](10) NULL,
	[SJGD5] [varchar](10) NULL,
	[SJGD6] [varchar](10) NULL,
	[SJGD7] [varchar](10) NULL,
	[SJGD8] [varchar](10) NULL,
	[SJGD9] [varchar](10) NULL,
	[SJGD10] [varchar](10) NULL,
	[SJGD11] [varchar](10) NULL,
	[SJGD12] [varchar](10) NULL,
	[SJGD13] [varchar](10) NULL,
	[YSDSDW] [varchar](10) NULL,
	[YSDS1] [varchar](10) NULL,
	[YSDS2] [varchar](10) NULL,
	[YSDS3] [varchar](10) NULL,
	[YSDS4] [varchar](10) NULL,
	[YSDS5] [varchar](10) NULL,
	[YSDS6] [varchar](10) NULL,
	[YSDS7] [varchar](10) NULL,
	[YSDS8] [varchar](10) NULL,
	[YSDS9] [varchar](10) NULL,
	[YSDS10] [varchar](10) NULL,
	[YSDS11] [varchar](10) NULL,
	[YSDS12] [varchar](10) NULL,
	[YSDS13] [varchar](10) NULL,
	[KYQD1] [varchar](10) NULL,
	[KYQD2] [varchar](10) NULL,
	[KYQD3] [varchar](10) NULL,
	[KYQD4] [varchar](10) NULL,
	[KYQD5] [varchar](10) NULL,
	[KYQD6] [varchar](10) NULL,
	[KYQD7] [varchar](10) NULL,
	[KYQD8] [varchar](10) NULL,
	[KYQD9] [varchar](10) NULL,
	[KYQD10] [varchar](10) NULL,
	[KYQD11] [varchar](10) NULL,
	[KYQD12] [varchar](10) NULL,
	[KYQD13] [varchar](10) NULL,
	[SJZL1] [varchar](10) NULL,
	[SJZL2] [varchar](10) NULL,
	[SJZL3] [varchar](10) NULL,
	[SJZL4] [varchar](10) NULL,
	[SJZL5] [varchar](10) NULL,
	[SJZL6] [varchar](10) NULL,
	[SJZL7] [varchar](10) NULL,
	[SJZL8] [varchar](10) NULL,
	[SJZL9] [varchar](10) NULL,
	[SJZL10] [varchar](10) NULL,
	[SJZL11] [varchar](10) NULL,
	[SJZL12] [varchar](10) NULL,
	[SJZL13] [varchar](10) NULL,
	[YLHXS] [varchar](10) NULL,
	[QDPJZ] [varchar](10) NULL,
	[SJQD] [varchar](10) NULL,
	[DDQD] [varchar](10) NULL,
	[PCXS] [varchar](10) NULL,
	[BZC] [varchar](10) NULL,
	[QD95] [varchar](10) NULL,
	[QYRQ] [smalldatetime] NULL,
	[ZJQYBZ] [varchar](10) NULL,
	[YSD] [varchar](10) NULL,
	[YSDPC] [varchar](10) NULL,
	[ZHBW] [varchar](300) NULL,
	[YQBH] [varchar](20) NULL,
	[BZ] [varchar](300) NULL,
	[XHR] [varchar](10) NULL,
	[SYR] [varchar](10) NULL,
	[JL] [varchar](150) NULL,
	[DWDM] [smallint] NULL,
	[SYXMDM] [varchar](4) NULL,
	[SYXMMC] [varchar](40) NULL,
	[SHIYBH] [varchar](10) NULL,
	[SYMC] [varchar](20) NULL,
	[WTDWBH] [varchar](8) NULL,
	[GCBH] [varchar](8) NULL,
	[JSFZRBH] [smallint] NULL,
	[JSFZR] [varchar](10) NULL,
	[XHRBH] [smallint] NULL,
	[XHBZ] [varchar](1) NULL,
	[XHYJ] [varchar](50) NULL,
	[QFBZ] [varchar](1) NULL,
	[QFYJ] [varchar](50) NULL,
	[SYRBH] [smallint] NULL,
	[BGRQ] [smalldatetime] NULL,
	[ZXGC] [varchar](20) NULL,
	[ZXBZ] [varchar](20) NULL,
	[SYWTR] [varchar](10) NULL,
	[JZBZ] [varchar](10) NULL,
	[HGBZ] [varchar](10) NULL,
	[SYJG] [varchar](50) NULL,
	[CLYJ] [varchar](50) NULL,
	[WTZH] [smallint] NULL,
	[JLBBH] [varchar](20) NULL,
	[BGBBH] [varchar](20) NULL,
 CONSTRAINT [PK_CEES_WCXKY] PRIMARY KEY CLUSTERED 
(
	[wcxid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'无侧限id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'wcxid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'cnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程项目id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'projectnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检人(委托人)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'client'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'无侧限编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'wcxnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'testnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程明细序号/工程抗压序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'sn_project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检单明细序号/提交序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'sn_test'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'edittime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'edituser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'readmark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'readtime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'WTDBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'WTDWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试样种类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SYZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'材料产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'CLCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'材料用途' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'CLYT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来样日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'LYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'GCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'制作日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'ZZRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成型方法' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'CXFF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件直径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配合比' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'PHB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大干密度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'ZDGRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最佳含水量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'ZJHSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件干密度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJGRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件含水量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJHSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压时含水量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSHSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水前重1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSQZ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水前重2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSQZ2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水前重3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSQZ3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水前重4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSQZ4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水前重5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSQZ5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水前重6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSQZ6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'7浸水前重1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSQZ7'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水前重8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSQZ8'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水前重9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSQZ9'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水前重10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSQZ10'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水前重11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSQZ11'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水前重12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSQZ12'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水前重13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSQZ13'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水后重1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSHZ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水后重2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSHZ2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水后重3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSHZ3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水后重4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSHZ4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水后重5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSHZ5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水后重6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSHZ6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水后重7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSHZ7'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水后重8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSHZ8'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水后重9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSHZ9'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水后重10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSHZ10'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水后重11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSHZ11'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水后重12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSHZ12'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浸水后重13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSHZ13'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件高度1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJGD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件高度2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJGD2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件高度3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJGD3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件高度4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJGD4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件高度5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJGD5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件高度6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJGD6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件高度7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJGD7'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件高度8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJGD8'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件高度9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJGD9'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件高度10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJGD10'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件高度11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJGD11'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件高度12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJGD12'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件高度13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJGD13'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压时读数单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSDSDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压时读数1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSDS1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压时读数2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSDS2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压时读数3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSDS3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压时读数4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSDS4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压时读数5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSDS5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压时读数6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSDS6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压时读数7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSDS7'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压时读数8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSDS8'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压时读数9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSDS9'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压时读数10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSDS10'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压时读数11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSDS11'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压时读数12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSDS12'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压时读数13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSDS13'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'KYQD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'KYQD2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'KYQD3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'KYQD4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'KYQD5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'KYQD6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'KYQD7'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'KYQD8'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'KYQD9'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'KYQD10'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'KYQD11'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'KYQD12'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'KYQD13'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件重量1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJZL1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件重量2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJZL2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件重量3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJZL3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件重量4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJZL4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件重量5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJZL5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件重量6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJZL6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件重量7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJZL7'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件重量8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJZL8'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件重量9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJZL9'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件重量10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJZL10'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件重量11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJZL11'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件重量12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJZL12'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件重量13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJZL13'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应力环系数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YLHXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'强度平均值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'QDPJZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设计强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SJQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'达到设计强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'DDQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'偏差系数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'PCXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准差' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'BZC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'95%保证率的强度值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'QD95'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'制件日期标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'ZJQYBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压实度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压实度偏差' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YSDPC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'桩号部位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'ZHBW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仪器编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'YQBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'XHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'DWDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SYXMDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SYXMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试样编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SHIYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试样名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'WTDWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'GCBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSFZRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JSFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'XHRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'XHBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'XHYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'QFBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'QFYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SYRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'BGRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行规程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'ZXGC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行标准' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'ZXBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验委托人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SYWTR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'见证标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JZBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合格标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'HGBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验结论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'SYJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'CLYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托组号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'WTZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'JLBBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_WCXKY', @level2type=N'COLUMN',@level2name=N'BGBBH'
GO
/****** Object:  Table [dbo].[CEES_User]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_User](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NULL,
	[sn] [int] NULL,
	[loginuser] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[post] [varchar](50) NULL,
	[tel] [varchar](50) NULL,
	[part] [varchar](50) NULL,
	[state] [bit] NULL,
	[remarks] [varchar](50) NULL,
	[edittime] [varchar](50) NULL,
	[edituser] [varchar](50) NULL,
 CONSTRAINT [PK_CEES_User] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_User', @level2type=N'COLUMN',@level2name=N'uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_User', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_User', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_User', @level2type=N'COLUMN',@level2name=N'loginuser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_User', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_User', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_User', @level2type=N'COLUMN',@level2name=N'post'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_User', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_User', @level2type=N'COLUMN',@level2name=N'part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_User', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_User', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_User', @level2type=N'COLUMN',@level2name=N'edittime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_User', @level2type=N'COLUMN',@level2name=N'edituser'
GO
/****** Object:  Table [dbo].[CEES_Test]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_Test](
	[tid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NOT NULL,
	[cnumber] [varchar](50) NULL,
	[construction] [varchar](50) NULL,
	[pid] [int] NULL,
	[projectnumber] [varchar](50) NULL,
	[project] [varchar](80) NULL,
	[client] [varchar](50) NULL,
	[sn] [int] NULL,
	[sn_project] [int] NULL,
	[testnumber] [varchar](50) NULL,
	[classification] [varchar](50) NULL,
	[testcount] [int] NULL,
	[testunit] [varchar](50) NULL,
	[editdate] [varchar](50) NULL,
	[testfile] [varchar](200) NULL,
	[payable] [float] NULL,
	[payment] [float] NULL,
	[arrears] [float] NULL,
	[paydate] [varchar](50) NULL,
	[CDLY] [varchar](50) NULL,
	[YTSM] [varchar](50) NULL,
	[SYMS] [varchar](50) NULL,
	[urgent] [bit] NULL,
	[witness] [bit] NULL,
	[state] [varchar](50) NULL,
	[remarks] [varchar](50) NULL,
	[edittime] [varchar](50) NULL,
	[edituser] [varchar](50) NULL,
	[readmark] [bit] NULL,
	[readtime] [varchar](50) NULL,
 CONSTRAINT [PK_CEES_Test] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'cnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位名称(委托单位)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'construction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程项目id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'projectnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检人(委托人)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'client'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程明细序号/工程提交序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'sn_project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检编号/提交编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'testnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'classification'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'testcount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'testunit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'editdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检文件/提交文件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'testfile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托金额/应付款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'payable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已付款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'payment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'欠款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'arrears'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'付款日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'paydate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产地来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'CDLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用途说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'YTSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试样描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'SYMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加急' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'urgent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'见证' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'witness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'edittime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'edituser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'readmark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Test', @level2type=N'COLUMN',@level2name=N'readtime'
GO
/****** Object:  Table [dbo].[CEES_SNJJ]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_SNJJ](
	[snjjid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NULL,
	[cnumber] [varchar](50) NULL,
	[pid] [int] NULL,
	[projectnumber] [varchar](50) NULL,
	[client] [varchar](50) NULL,
	[snjjnumber] [varchar](50) NULL,
	[testnumber] [varchar](50) NULL,
	[sn] [int] NULL,
	[sn_project] [int] NULL,
	[sn_test] [int] NULL,
	[state] [varchar](50) NULL,
	[remarks] [varchar](50) NULL,
	[edittime] [varchar](50) NULL,
	[edituser] [varchar](50) NULL,
	[readmark] [bit] NULL,
	[readtime] [varchar](50) NULL,
	[WTDBH] [varchar](10) NULL,
	[WTDWMC] [varchar](80) NULL,
	[LYRQ] [smalldatetime] NULL,
	[SYBH1] [varchar](17) NULL,
	[SYBH2] [varchar](17) NULL,
	[YQBH] [varchar](20) NULL,
	[GCMC] [varchar](80) NULL,
	[SYRQ] [smalldatetime] NULL,
	[SYZL] [varchar](20) NULL,
	[CLCD] [varchar](40) NULL,
	[CLYT] [varchar](40) NULL,
	[JL] [varchar](150) NULL,
	[BZ] [varchar](255) NULL,
	[DWDM] [smallint] NULL,
	[SYXMDM1] [varchar](10) NULL,
	[SYXMDM2] [varchar](10) NULL,
	[SYXMMC1] [varchar](40) NULL,
	[SYXMMC2] [varchar](40) NULL,
	[SHIYBH] [varchar](10) NULL,
	[SYMC] [varchar](20) NULL,
	[WTDWBH] [varchar](8) NULL,
	[GCBH] [varchar](8) NULL,
	[JSFZRBH] [smallint] NULL,
	[JSFZR] [varchar](10) NULL,
	[XHRBH] [smallint] NULL,
	[XHR] [varchar](10) NULL,
	[XHBZ] [varchar](1) NULL,
	[XHYJ] [varchar](50) NULL,
	[QFBZ] [varchar](1) NULL,
	[QFYJ] [varchar](50) NULL,
	[SYRBH] [smallint] NULL,
	[SYR] [varchar](10) NULL,
	[BGRQ] [smalldatetime] NULL,
	[ZXGC1] [varchar](20) NULL,
	[ZXGC2] [varchar](20) NULL,
	[ZXBZ1] [varchar](20) NULL,
	[ZXBZ2] [varchar](20) NULL,
	[SYWTR] [varchar](10) NULL,
	[JZBZ] [varchar](10) NULL,
	[HGBZ] [varchar](10) NULL,
	[SYJG] [varchar](50) NULL,
	[CLYJ] [varchar](50) NULL,
	[WTZH] [smallint] NULL,
	[WTR] [varchar](20) NULL,
	[SGBW] [varchar](200) NULL,
	[CB] [varchar](50) NULL,
	[KZC] [varchar](10) NULL,
	[KZK] [varchar](10) NULL,
	[KZG] [varchar](10) NULL,
	[KZKD] [varchar](10) NULL,
	[KZDK1] [varchar](10) NULL,
	[KZDK2] [varchar](10) NULL,
	[KZDK3] [varchar](10) NULL,
	[KZDKPJ] [varchar](10) NULL,
	[KZQD] [varchar](10) NULL,
	[KZDDSJQD] [varchar](10) NULL,
	[KYSJBC] [varchar](10) NULL,
	[KYSYMJ] [varchar](10) NULL,
	[KYDK1] [varchar](10) NULL,
	[KYDK2] [varchar](10) NULL,
	[KYDK3] [varchar](10) NULL,
	[KYDK4] [varchar](10) NULL,
	[KYDK5] [varchar](10) NULL,
	[KYDK6] [varchar](10) NULL,
	[KYDKPJ] [varchar](10) NULL,
	[KYQD] [varchar](10) NULL,
	[KYDDSJQD] [varchar](10) NULL,
	[SJZL] [varchar](20) NULL,
	[CD] [varchar](10) NULL,
	[SNPZ] [varchar](30) NULL,
	[QDDJ] [varchar](10) NULL,
	[WJJZL] [varchar](20) NULL,
	[WJJZL2] [varchar](20) NULL,
	[CHLZL] [varchar](20) NULL,
	[PHBBH] [varchar](30) NULL,
	[SN1] [varchar](10) NULL,
	[SZ] [varchar](10) NULL,
	[SHUI] [varchar](10) NULL,
	[CHL] [varchar](10) NULL,
	[WJJ] [varchar](20) NULL,
	[WJJ2] [varchar](20) NULL,
	[ZMRQ] [smalldatetime] NULL,
	[YHTJ] [varchar](10) NULL,
	[YQLQ] [varchar](10) NULL,
	[YQSYRQ] [smalldatetime] NULL,
	[SKSDRQ] [smalldatetime] NULL,
	[SKZZR] [varchar](10) NULL,
	[SJBH] [varchar](20) NULL,
	[SJLQ] [varchar](10) NULL,
	[SJKZQD] [varchar](10) NULL,
	[SJKYQD] [varchar](10) NULL,
	[JLBBH] [varchar](20) NULL,
	[BGBBH] [varchar](20) NULL,
 CONSTRAINT [PK_CEES_SNJJ] PRIMARY KEY CLUSTERED 
(
	[snjjid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥净浆id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'snjjid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'cnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程项目id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'projectnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检人(委托人)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'client'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥净浆编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'snjjnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'testnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程明细序号/工程抗压序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'sn_project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检单明细序号/提交序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'sn_test'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'edittime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'edituser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'readmark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'readtime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'WTDBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'WTDWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来样日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'LYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验编号1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SYBH1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验编号2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SYBH2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仪器编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'YQBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'GCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产地来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'CLCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用途说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'CLYT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'JL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'DWDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目代码1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SYXMDM1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目代码2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SYXMDM2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目名称1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SYXMMC1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目名称2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SYXMMC2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试样编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SHIYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'WTDWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'GCBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'JSFZRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'JSFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'XHRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'XHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'XHBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'XHYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'QFBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'QFYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SYRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'BGRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行规程1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'ZXGC1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行规程2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'ZXGC2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行标号1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'ZXBZ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行标准2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'ZXBZ2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验委托人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SYWTR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'见证标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'JZBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合格标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'HGBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SYJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'CLYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托组号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'WTZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'WTR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工部位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SGBW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'CB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗折长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KZC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗折宽' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KZK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗折高' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KZG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗折跨度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KZKD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗折单块1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KZDK1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗折单块2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KZDK2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗折单块3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KZDK3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗折单块平均' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KZDKPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗折强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KZQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗折达到设计强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KZDDSJQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压试件边长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KYSJBC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压受压面机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KYSYMJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压单块1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KYDK1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压单块2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KYDK2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压单块3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KYDK3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压单块4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KYDK4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压单块5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KYDK5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压单块6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KYDK6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压单块平均' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KYDKPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KYQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压达到设计强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'KYDDSJQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂浆种类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SJZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'稠度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'CD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥品种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SNPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'强度等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'QDDJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂种类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'WJJZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂种类2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'WJJZL2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'掺合料种类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'CHLZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配合比编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'PHBBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SN1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SHUI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'掺合料' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'CHL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'WJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'WJJ2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'制模日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'ZMRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'养护条件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'YHTJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要求龄期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'YQLQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要求试验日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'YQSYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试块收到日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SKSDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试块制作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SKZZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SJBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际龄期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SJLQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际抗折强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SJKZQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际抗压强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'SJKYQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'JLBBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SNJJ', @level2type=N'COLUMN',@level2name=N'BGBBH'
GO
/****** Object:  Table [dbo].[CEES_SJKYQD]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_SJKYQD](
	[sjkyid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NULL,
	[cnumber] [varchar](50) NULL,
	[pid] [int] NULL,
	[projectnumber] [varchar](50) NULL,
	[client] [varchar](50) NULL,
	[ccid] [int] NULL,
	[sjkynumber] [varchar](50) NULL,
	[testnumber] [varchar](50) NULL,
	[sn] [int] NULL,
	[sn_project] [int] NULL,
	[sn_test] [int] NULL,
	[state] [varchar](50) NULL,
	[remarks] [varchar](50) NULL,
	[edittime] [varchar](50) NULL,
	[edituser] [varchar](50) NULL,
	[readmark] [bit] NULL,
	[readtime] [varchar](50) NULL,
	[WTDBH] [varchar](10) NULL,
	[WTDWMC] [varchar](80) NULL,
	[LYRQ] [smalldatetime] NULL,
	[GCMC] [varchar](80) NULL,
	[SYBH] [varchar](17) NULL,
	[SYRQ] [smalldatetime] NULL,
	[SGBW] [varchar](255) NULL,
	[WTR] [varchar](10) NULL,
	[SJZL] [varchar](40) NULL,
	[SJZLQD] [varchar](10) NULL,
	[CD] [varchar](10) NULL,
	[CDDW] [varchar](10) NULL,
	[SNPZ] [varchar](10) NULL,
	[SNQDDJ] [varchar](10) NULL,
	[CB] [varchar](40) NULL,
	[SCD] [varchar](40) NULL,
	[SZL] [varchar](40) NULL,
	[CHLZL] [varchar](40) NULL,
	[WJJZL] [varchar](40) NULL,
	[WJJ2ZL] [varchar](40) NULL,
	[PBBH] [varchar](20) NULL,
	[SHA_SHUI] [varchar](10) NULL,
	[SNMPF] [varchar](10) NULL,
	[SNMP] [varchar](10) NULL,
	[SMPF] [varchar](10) NULL,
	[SMP] [varchar](10) NULL,
	[BHGMPF] [varchar](10) NULL,
	[BHGMP] [varchar](10) NULL,
	[CHLMPF] [varchar](10) NULL,
	[CHLMP] [varchar](10) NULL,
	[WJJMPF] [varchar](20) NULL,
	[WJJMP] [varchar](20) NULL,
	[WJJ2MPF] [varchar](20) NULL,
	[WJJ2MP] [varchar](20) NULL,
	[ZMRQ] [smalldatetime] NULL,
	[YHTJ] [varchar](10) NULL,
	[YQLQ] [varchar](10) NULL,
	[YQSYRQ] [varchar](10) NULL,
	[SKSDRQ] [smalldatetime] NULL,
	[SKZZR] [varchar](10) NULL,
	[SJBH] [varchar](20) NULL,
	[SYARQ] [smalldatetime] NULL,
	[SJLQ] [varchar](10) NULL,
	[SJBC] [varchar](20) NULL,
	[SYMJ] [varchar](10) NULL,
	[KUAISHU] [smallint] NULL,
	[HZPJ] [varchar](10) NULL,
	[HZDK1] [varchar](10) NULL,
	[HZDK2] [varchar](10) NULL,
	[HZDK3] [varchar](10) NULL,
	[HZDK4] [varchar](10) NULL,
	[HZDK5] [varchar](10) NULL,
	[HZDK6] [varchar](10) NULL,
	[KYQD] [varchar](10) NULL,
	[DDSJ] [varchar](10) NULL,
	[YQBH] [varchar](20) NULL,
	[BZ] [varchar](255) NULL,
	[JL] [varchar](150) NULL,
	[DWDM] [smallint] NULL,
	[SYXMDM] [varchar](4) NULL,
	[SYXMMC] [varchar](40) NULL,
	[SHIYBH] [varchar](10) NULL,
	[SYMC] [varchar](20) NULL,
	[WTDWBH] [varchar](8) NULL,
	[GCBH] [varchar](8) NULL,
	[JSFZRBH] [smallint] NULL,
	[JSFZR] [varchar](10) NULL,
	[XHRBH] [smallint] NULL,
	[XHR] [varchar](10) NULL,
	[XHBZ] [varchar](1) NULL,
	[XHYJ] [varchar](50) NULL,
	[QFBZ] [varchar](1) NULL,
	[QFYJ] [varchar](50) NULL,
	[SYRBH] [smallint] NULL,
	[SYR] [varchar](10) NULL,
	[BGRQ] [smalldatetime] NULL,
	[ZXGC] [varchar](20) NULL,
	[ZXBZ] [varchar](20) NULL,
	[SYWTR] [varchar](50) NULL,
	[JZBZ] [varchar](10) NULL,
	[HGBZ] [varchar](10) NULL,
	[SYJG] [varchar](50) NULL,
	[CLYJ] [varchar](50) NULL,
	[WTZH] [smallint] NULL,
	[JLBBH] [varchar](20) NULL,
	[BGBBH] [varchar](20) NULL,
 CONSTRAINT [PK_CEES_SJKYQD] PRIMARY KEY CLUSTERED 
(
	[sjkyid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂浆抗压id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'sjkyid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'cnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程项目id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'projectnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检人(委托人)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'client'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'混凝土单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'ccid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂浆抗压编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'sjkynumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'testnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程明细序号/工程抗压序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'sn_project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检单明细序号/提交序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'sn_test'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'edittime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'edituser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'readmark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'readtime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'WTDBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'WTDWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来样日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'LYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'GCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工部位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SGBW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'WTR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂浆种类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SJZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂浆种类强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SJZLQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'稠度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'CD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'稠度单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'CDDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥品种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SNPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥强度等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SNQDDJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥厂别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'CB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂种类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'掺合料种类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'CHLZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂种类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'WJJZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂2种类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'WJJ2ZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配比编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'PBBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂-水' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SHA_SHUI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥每m3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SNMPF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥每盘' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SNMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂每m3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SMPF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂每盘' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'掺合料每m3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'CHLMPF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'掺合料每盘' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'CHLMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂每m3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'WJJMPF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂每盘' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'WJJMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂2每m3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'WJJ2MPF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂2每盘' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'WJJ2MP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'制模日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'ZMRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'养护条件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'YHTJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要求龄期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'YQLQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要求试验日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'YQSYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试块收到日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SKSDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试块制作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SKZZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SJBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际龄期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SJLQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件边长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SJBC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'受压面机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SYMJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试块数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'KUAISHU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'平均荷载' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'HZPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'荷载单块1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'HZDK1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'荷载单块2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'HZDK2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'荷载单块3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'HZDK3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'荷载单块4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'HZDK4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'荷载单块5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'HZDK5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'荷载单块6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'HZDK6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'KYQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'达到设计强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'DDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'JL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'DWDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SYXMDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SYXMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SHIYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'WTDWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'GCBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'JSFZRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'JSFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'XHRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'XHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'XHBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'XHYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'QFBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'QFYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SYRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'BGRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行规程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'ZXGC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行标准' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'ZXBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验委托人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SYWTR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'见证标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'JZBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合格标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'HGBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'SYJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'CLYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托组号 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'WTZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'JLBBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_SJKYQD', @level2type=N'COLUMN',@level2name=N'BGBBH'
GO
/****** Object:  Table [dbo].[CEES_Shouquan]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_Shouquan](
	[SQID] [int] IDENTITY(1,1) NOT NULL,
	[SQBH] [varchar](50) NULL,
	[XH] [int] NULL,
	[GCBH] [varchar](50) NULL,
	[GCMC] [varchar](80) NULL,
	[GCJC] [varchar](50) NULL,
	[WTDWBH] [varchar](50) NULL,
	[WTDWMC] [varchar](50) NULL,
	[WTR] [varchar](50) NULL,
	[WTRTEL] [varchar](50) NULL,
	[SHQWJ] [varchar](100) NULL,
	[SHQRQ] [varchar](50) NULL,
	[SHQR] [varchar](50) NULL,
	[YDBZ] [bit] NULL,
	[YDSJ] [varchar](50) NULL,
 CONSTRAINT [PK_CEES_shouquan] PRIMARY KEY CLUSTERED 
(
	[SQID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Shouquan', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Shouquan', @level2type=N'COLUMN',@level2name=N'SQBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Shouquan', @level2type=N'COLUMN',@level2name=N'XH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Shouquan', @level2type=N'COLUMN',@level2name=N'GCBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Shouquan', @level2type=N'COLUMN',@level2name=N'GCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Shouquan', @level2type=N'COLUMN',@level2name=N'GCJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Shouquan', @level2type=N'COLUMN',@level2name=N'WTDWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Shouquan', @level2type=N'COLUMN',@level2name=N'WTDWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Shouquan', @level2type=N'COLUMN',@level2name=N'WTR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托人手机号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Shouquan', @level2type=N'COLUMN',@level2name=N'WTRTEL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权文件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Shouquan', @level2type=N'COLUMN',@level2name=N'SHQWJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Shouquan', @level2type=N'COLUMN',@level2name=N'SHQRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Shouquan', @level2type=N'COLUMN',@level2name=N'SHQR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Shouquan', @level2type=N'COLUMN',@level2name=N'YDBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Shouquan', @level2type=N'COLUMN',@level2name=N'YDSJ'
GO
/****** Object:  Table [dbo].[CEES_Project]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_Project](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NULL,
	[sn] [int] NULL,
	[classification] [varchar](50) NULL,
	[projectnumber] [varchar](50) NULL,
	[project] [varchar](80) NULL,
	[projectsimple] [varchar](50) NULL,
	[bid] [int] NULL,
	[address] [varchar](50) NULL,
	[tel] [varchar](50) NULL,
	[state] [bit] NULL,
	[remarks] [varchar](50) NULL,
	[edittime] [varchar](50) NULL,
	[edituser] [varchar](50) NULL,
 CONSTRAINT [PK_CEES_Project] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程项目id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Project', @level2type=N'COLUMN',@level2name=N'pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Project', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Project', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Project', @level2type=N'COLUMN',@level2name=N'classification'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Project', @level2type=N'COLUMN',@level2name=N'projectnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Project', @level2type=N'COLUMN',@level2name=N'project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Project', @level2type=N'COLUMN',@level2name=N'projectsimple'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建设单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Project', @level2type=N'COLUMN',@level2name=N'bid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Project', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Project', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Project', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Project', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Project', @level2type=N'COLUMN',@level2name=N'edittime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Project', @level2type=N'COLUMN',@level2name=N'edituser'
GO
/****** Object:  Table [dbo].[CEES_Number]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_Number](
	[nid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NULL,
	[sn] [int] NULL,
	[tablename] [varchar](50) NULL,
	[fieldname] [varchar](50) NULL,
	[yearfront] [varchar](50) NULL,
	[yearafter] [varchar](50) NULL,
	[numberbegin] [int] NULL,
	[numberlength] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Number', @level2type=N'COLUMN',@level2name=N'nid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Number', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Number', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Number', @level2type=N'COLUMN',@level2name=N'tablename'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号字段名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Number', @level2type=N'COLUMN',@level2name=N'fieldname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号年度前字符' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Number', @level2type=N'COLUMN',@level2name=N'yearfront'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号年度后字符' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Number', @level2type=N'COLUMN',@level2name=N'yearafter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号序号起始位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Number', @level2type=N'COLUMN',@level2name=N'numberbegin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号序号位数（长度）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Number', @level2type=N'COLUMN',@level2name=N'numberlength'
GO
/****** Object:  Table [dbo].[CEES_LQMXE]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_LQMXE](
	[lqmxeid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NULL,
	[cnumber] [varchar](50) NULL,
	[pid] [int] NULL,
	[projectnumber] [varchar](50) NULL,
	[client] [varchar](50) NULL,
	[lqmxenumber] [varchar](50) NULL,
	[testnumber] [varchar](50) NULL,
	[sn] [int] NULL,
	[sn_project] [int] NULL,
	[sn_test] [int] NULL,
	[state] [varchar](50) NULL,
	[remarks] [varchar](50) NULL,
	[edittime] [varchar](50) NULL,
	[edituser] [varchar](50) NULL,
	[readmark] [bit] NULL,
	[readtime] [varchar](50) NULL,
	[WTDBH] [varchar](10) NULL,
	[WTDWMC] [varchar](80) NULL,
	[CLCD] [varchar](40) NULL,
	[LYRQ] [smalldatetime] NULL,
	[SYZL] [varchar](20) NULL,
	[SYBH] [varchar](17) NULL,
	[GCMC] [varchar](80) NULL,
	[CLYT] [varchar](40) NULL,
	[SYRQ] [smalldatetime] NULL,
	[YQBH] [varchar](20) NULL,
	[LQXDMD] [varchar](10) NULL,
	[KLZLYL1] [varchar](10) NULL,
	[KLZLYL2] [varchar](10) NULL,
	[KLZLYL3] [varchar](10) NULL,
	[KLZLYL4] [varchar](10) NULL,
	[KLZLYL5] [varchar](10) NULL,
	[KLZLYL6] [varchar](10) NULL,
	[KLXDMD1] [varchar](10) NULL,
	[KLXDMD2] [varchar](10) NULL,
	[KLXDMD3] [varchar](10) NULL,
	[KLXDMD4] [varchar](10) NULL,
	[KLXDMD5] [varchar](10) NULL,
	[KLXDMD6] [varchar](10) NULL,
	[BHWD] [varchar](10) NULL,
	[CJCS] [varchar](10) NULL,
	[SJBH1] [varchar](10) NULL,
	[SJHD11] [varchar](10) NULL,
	[SJHD12] [varchar](10) NULL,
	[SJHD13] [varchar](10) NULL,
	[SJHD14] [varchar](10) NULL,
	[SJHD21] [varchar](10) NULL,
	[SJHD22] [varchar](10) NULL,
	[SJHD23] [varchar](10) NULL,
	[SJHD24] [varchar](10) NULL,
	[SJHD31] [varchar](10) NULL,
	[SJHD32] [varchar](10) NULL,
	[SJHD33] [varchar](10) NULL,
	[SJHD34] [varchar](10) NULL,
	[SJHD1PJ] [varchar](10) NULL,
	[SJHD2PJ] [varchar](10) NULL,
	[SJHD3PJ] [varchar](10) NULL,
	[SJHD4PJ] [varchar](10) NULL,
	[LQHL1] [varchar](10) NULL,
	[SJHD1] [varchar](10) NULL,
	[JSWD1] [varchar](10) NULL,
	[JSWDJQZ1] [varchar](10) NULL,
	[KQZZ1] [varchar](10) NULL,
	[SZZL1] [varchar](10) NULL,
	[BHMGZ1] [varchar](10) NULL,
	[TJ451] [varchar](10) NULL,
	[TJ651] [varchar](10) NULL,
	[SJ471] [varchar](10) NULL,
	[BHMG1] [varchar](10) NULL,
	[LL1] [varchar](10) NULL,
	[LQTJBFL1] [varchar](10) NULL,
	[KXL1] [varchar](10) NULL,
	[LLJKXL1] [varchar](10) NULL,
	[BHD1] [varchar](10) NULL,
	[WDD1] [varchar](10) NULL,
	[LZDW] [varchar](10) NULL,
	[LZ1] [varchar](10) NULL,
	[MXRDS1] [varchar](10) NULL,
	[SJBH2] [varchar](10) NULL,
	[LQHL2] [varchar](10) NULL,
	[SJHD2] [varchar](10) NULL,
	[JSWD2] [varchar](10) NULL,
	[JSWDJQZ2] [varchar](10) NULL,
	[KQZZ2] [varchar](10) NULL,
	[SZZL2] [varchar](10) NULL,
	[BHMGZ2] [varchar](10) NULL,
	[TJ452] [varchar](10) NULL,
	[TJ652] [varchar](10) NULL,
	[SJ472] [varchar](10) NULL,
	[BHMG2] [varchar](10) NULL,
	[LL2] [varchar](10) NULL,
	[LQTJBFL2] [varchar](10) NULL,
	[KXL2] [varchar](10) NULL,
	[LLJKXL2] [varchar](10) NULL,
	[BHD2] [varchar](10) NULL,
	[WDD2] [varchar](10) NULL,
	[LZ2] [varchar](10) NULL,
	[MXRDS2] [varchar](10) NULL,
	[SJBH3] [varchar](10) NULL,
	[LQHL3] [varchar](10) NULL,
	[SJHD3] [varchar](10) NULL,
	[JSWD3] [varchar](10) NULL,
	[JSWDJQZ3] [varchar](10) NULL,
	[KQZZ3] [varchar](10) NULL,
	[SZZL3] [varchar](10) NULL,
	[BHMGZ3] [varchar](10) NULL,
	[TJ453] [varchar](10) NULL,
	[TJ653] [varchar](10) NULL,
	[SJ473] [varchar](10) NULL,
	[BHMG3] [varchar](10) NULL,
	[LL3] [varchar](10) NULL,
	[LQTJBFL3] [varchar](10) NULL,
	[KXL3] [varchar](10) NULL,
	[LLJKXL3] [varchar](10) NULL,
	[BHD3] [varchar](10) NULL,
	[WDD3] [varchar](10) NULL,
	[LZ3] [varchar](10) NULL,
	[MXRDS3] [varchar](10) NULL,
	[SJBH4] [varchar](10) NULL,
	[LQHL4] [varchar](10) NULL,
	[SJHD4] [varchar](10) NULL,
	[JSWD4] [varchar](10) NULL,
	[JSWDJQZ4] [varchar](10) NULL,
	[KQZZ4] [varchar](10) NULL,
	[SZZL4] [varchar](10) NULL,
	[BHMGZ4] [varchar](10) NULL,
	[TJ454] [varchar](10) NULL,
	[TJ654] [varchar](10) NULL,
	[SJ474] [varchar](10) NULL,
	[BHMG4] [varchar](10) NULL,
	[LL4] [varchar](10) NULL,
	[LQTJBFL4] [varchar](10) NULL,
	[KXL4] [varchar](10) NULL,
	[LLJKXL4] [varchar](10) NULL,
	[BHD4] [varchar](10) NULL,
	[WDD4] [varchar](10) NULL,
	[LZ4] [varchar](10) NULL,
	[MXRDS4] [varchar](10) NULL,
	[BZ] [varchar](255) NULL,
	[JQZ3] [varchar](10) NULL,
	[JQZ4] [varchar](10) NULL,
	[JQZ5] [varchar](10) NULL,
	[JQZ6] [varchar](10) NULL,
	[JQZ7] [varchar](10) NULL,
	[JQZ8] [varchar](10) NULL,
	[JQZ9] [varchar](10) NULL,
	[JQZ10] [varchar](10) NULL,
	[JQZ11] [varchar](10) NULL,
	[JQZ12] [varchar](10) NULL,
	[JQZ13] [varchar](10) NULL,
	[JQZ14] [varchar](10) NULL,
	[JQZ15] [varchar](10) NULL,
	[JQZ16] [varchar](10) NULL,
	[JQZ17] [varchar](10) NULL,
	[JQZ18] [varchar](10) NULL,
	[MTJMD1] [varchar](50) NULL,
	[MTJMD2] [varchar](50) NULL,
	[MTJMD3] [varchar](50) NULL,
	[MTJMD4] [varchar](50) NULL,
	[MTJMD5] [varchar](50) NULL,
	[KONGXL1] [varchar](10) NULL,
	[KONGXL2] [varchar](10) NULL,
	[KONGXL3] [varchar](10) NULL,
	[KONGXL4] [varchar](10) NULL,
	[KONGXL5] [varchar](10) NULL,
	[MTJXDMD] [varchar](10) NULL,
	[KLJXL1] [varchar](10) NULL,
	[KLJXL2] [varchar](10) NULL,
	[KLJXL3] [varchar](10) NULL,
	[KLJXL4] [varchar](10) NULL,
	[KLJXL5] [varchar](10) NULL,
	[LQBHD1] [varchar](10) NULL,
	[LQBHD2] [varchar](10) NULL,
	[LQBHD3] [varchar](10) NULL,
	[LQBHD4] [varchar](10) NULL,
	[LQBHD5] [varchar](10) NULL,
	[BEIZHU1] [varchar](50) NULL,
	[BEIZHU2] [varchar](50) NULL,
	[BEIZHU3] [varchar](50) NULL,
	[BEIZHU4] [varchar](50) NULL,
	[BEIZHU5] [varchar](50) NULL,
	[XHR] [varchar](10) NULL,
	[SYR] [varchar](10) NULL,
	[JL] [varchar](150) NULL,
	[DWDM] [smallint] NULL,
	[SYXMDM] [varchar](4) NULL,
	[SYXMMC] [varchar](40) NULL,
	[SHIYBH] [varchar](10) NULL,
	[SYMC] [varchar](20) NULL,
	[WTDWBH] [varchar](8) NULL,
	[GCBH] [varchar](8) NULL,
	[JSFZRBH] [smallint] NULL,
	[JSFZR] [varchar](10) NULL,
	[XHRBH] [smallint] NULL,
	[XHBZ] [varchar](1) NULL,
	[XHYJ] [varchar](50) NULL,
	[QFBZ] [varchar](1) NULL,
	[QFYJ] [varchar](50) NULL,
	[SYRBH] [smallint] NULL,
	[BGRQ] [smalldatetime] NULL,
	[ZXGC] [varchar](20) NULL,
	[ZXBZ] [varchar](20) NULL,
	[SYWTR] [varchar](10) NULL,
	[JZBZ] [varchar](10) NULL,
	[HGBZ] [varchar](10) NULL,
	[SYJG] [varchar](50) NULL,
	[CLYJ] [varchar](50) NULL,
	[WTZH] [smallint] NULL,
	[JLBBH] [varchar](20) NULL,
	[BGBBH] [varchar](20) NULL,
 CONSTRAINT [PK_CEES_LQMXE] PRIMARY KEY CLUSTERED 
(
	[lqmxeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'沥青马歇尔id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'lqmxeid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'cnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程项目id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'projectnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检人(委托人)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'client'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'沥青马歇尔编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'lqmxenumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'testnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程明细序号/工程抗压序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'sn_project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检单明细序号/提交序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'sn_test'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'edittime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'edituser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'readmark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'readtime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'WTDBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'WTDWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'材料产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'CLCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来样日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'LYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试样种类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SYZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试样编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'GCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'材料用途' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'CLYT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仪器编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'YQBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'沥青相对密度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'LQXDMD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矿料种类用量1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KLZLYL1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矿料种类用量2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KLZLYL2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矿料种类用量3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KLZLYL3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矿料种类用量4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KLZLYL4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矿料种类用量5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KLZLYL5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矿料种类用量6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KLZLYL6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矿料相对密度1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KLXDMD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矿料相对密度2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KLXDMD2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矿料相对密度3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KLXDMD3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矿料相对密度4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KLXDMD4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矿料相对密度5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KLXDMD5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矿料相对密度6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KLXDMD6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJBH1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD11'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD12'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD13'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD14'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度21' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD21'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度22' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD22'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度23' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD23'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD24'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度31' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD31'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度32' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD32'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度33' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD33'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度34' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD34'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度1平均' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD1PJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度2平均' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD2PJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度3平均' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD3PJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度4平均' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD4PJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'沥青含量1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'LQHL1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'击实温度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'JSWD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'空气中重1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KQZZ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水中重量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SZZL1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表干质量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'BHMGZ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'沥青饱和度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'BHD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'稳定度1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'WDD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流值单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'LZDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流值1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'LZ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJBH2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'沥青含量2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'LQHL2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'空气中重2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KQZZ2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水中重量2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SZZL2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表干质量2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'BHMGZ2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'饱和度2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'BHD2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'稳定度2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'WDD2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流值2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'LZ2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJBH3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'沥青含量3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'LQHL3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'击时温度3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'JSWD3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'空气中重3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KQZZ3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水中重量3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SZZL3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表干质量3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'BHMGZ3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'饱和度3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'BHD3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'稳定度3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'WDD3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流值3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'LZ3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJBH4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'沥青含量4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'LQHL4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件厚度4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SJHD4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'击时温度4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'JSWD4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'空气中重4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'KQZZ4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水中重量4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SZZL4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表干质量4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'BHMGZ4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'饱和度4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'BHD4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'稳定度4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'WDD4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流值4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'LZ4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'空气中重平均值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'JQZ4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水中重量平均值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'JQZ5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表干质量平均值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'JQZ6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毛体积密度1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'MTJMD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毛体积密度2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'MTJMD2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毛体积密度3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'MTJMD3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毛体积密度4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'MTJMD4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毛体积密度5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'MTJMD5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'XHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'JL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'DWDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SYXMDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SYXMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试样编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SHIYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'WTDWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'GCBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'JSFZRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'JSFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'XHRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'XHBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'XHYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'QFBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'QFYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SYRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'BGRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行规程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'ZXGC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行标准' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'ZXBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验委托人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SYWTR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'见证标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'JZBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合格标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'HGBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'SYJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'CLYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托组号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'WTZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'JLBBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_LQMXE', @level2type=N'COLUMN',@level2name=N'BGBBH'
GO
/****** Object:  Table [dbo].[CEES_Hntkz]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_Hntkz](
	[kzid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NULL,
	[cnumber] [varchar](50) NULL,
	[pid] [int] NULL,
	[projectnumber] [varchar](50) NULL,
	[client] [varchar](50) NULL,
	[ccid] [int] NULL,
	[kznumber] [varchar](50) NULL,
	[testnumber] [varchar](50) NULL,
	[sn] [int] NULL,
	[sn_project] [int] NULL,
	[sn_test] [int] NULL,
	[state] [varchar](50) NULL,
	[remarks] [varchar](50) NULL,
	[edittime] [varchar](50) NULL,
	[edituser] [varchar](50) NULL,
	[readmark] [bit] NULL,
	[readtime] [varchar](50) NULL,
	[WTDBH] [varchar](50) NULL,
	[DWDM] [smallint] NULL,
	[SYBH] [varchar](17) NULL,
	[SHIYBH] [varchar](10) NULL,
	[SYXMDM] [varchar](10) NULL,
	[SYXMMC] [varchar](40) NULL,
	[WTDWBH] [varchar](8) NULL,
	[WTDWMC] [varchar](80) NULL,
	[YQBH] [varchar](20) NULL,
	[GCBH] [varchar](8) NULL,
	[GCMC] [varchar](80) NULL,
	[SGBW] [varchar](400) NULL,
	[SJQD] [varchar](50) NULL,
	[NPQD] [varchar](50) NULL,
	[YQTLD] [varchar](10) NULL,
	[SCTLD] [varchar](10) NULL,
	[SNPZ] [varchar](10) NULL,
	[SNBH] [varchar](10) NULL,
	[SNCB] [varchar](40) NULL,
	[SNCCRQ] [varchar](10) NULL,
	[SNSYBH] [varchar](50) NULL,
	[SHACD] [varchar](40) NULL,
	[SHAPZ] [varchar](10) NULL,
	[SHAXDMS] [varchar](10) NULL,
	[SHAHNL] [varchar](10) NULL,
	[SHASYBH] [varchar](50) NULL,
	[SHICD] [varchar](40) NULL,
	[SHIPZ] [varchar](10) NULL,
	[SHIZDLJ] [varchar](10) NULL,
	[SHIHNL] [varchar](10) NULL,
	[SHISYBH] [varchar](50) NULL,
	[CHLMC] [varchar](40) NULL,
	[CHLCD] [varchar](40) NULL,
	[CHLZYSNL] [varchar](50) NULL,
	[FMHMC] [varchar](40) NULL,
	[FMHCD] [varchar](40) NULL,
	[FMHZYSNL] [varchar](50) NULL,
	[PZJMC] [varchar](40) NULL,
	[PZJCD] [varchar](40) NULL,
	[PZJCL] [varchar](10) NULL,
	[PZJZYSNL] [varchar](50) NULL,
	[WJJMC] [varchar](40) NULL,
	[WJJCD] [varchar](40) NULL,
	[WJJCL] [varchar](10) NULL,
	[WJJZYSNL] [varchar](50) NULL,
	[SGPHB] [varchar](50) NULL,
	[SHB] [varchar](10) NULL,
	[SL] [varchar](10) NULL,
	[HNTDW] [varchar](80) NULL,
	[PHBBH] [varchar](50) NULL,
	[SNYL] [varchar](10) NULL,
	[SYL] [varchar](10) NULL,
	[SHAYL] [varchar](10) NULL,
	[SHIYL] [varchar](10) NULL,
	[CHLYL] [varchar](10) NULL,
	[FMHYL] [varchar](10) NULL,
	[PZJYL] [varchar](10) NULL,
	[WJJYL] [varchar](10) NULL,
	[ZMRQ] [smalldatetime] NULL,
	[YQLQ] [varchar](10) NULL,
	[YQSYRQ] [smalldatetime] NULL,
	[SKSDRQ] [smalldatetime] NULL,
	[SKYHTJ] [varchar](10) NULL,
	[SYWTR] [varchar](10) NULL,
	[SJBH] [varchar](50) NULL,
	[SYRQ] [smalldatetime] NULL,
	[SJLQ] [varchar](10) NULL,
	[SJCC_C] [varchar](10) NULL,
	[SJCC_K] [varchar](10) NULL,
	[SJCC_G] [varchar](10) NULL,
	[JSKD] [varchar](10) NULL,
	[HZ1] [varchar](10) NULL,
	[HZ2] [varchar](10) NULL,
	[HZ3] [varchar](10) NULL,
	[HZPJ] [varchar](10) NULL,
	[KZQD] [varchar](10) NULL,
	[ZHQD] [varchar](10) NULL,
	[DDQD] [varchar](10) NULL,
	[BZ] [varchar](400) NULL,
	[JSFZRBH] [smallint] NULL,
	[JSFZR] [varchar](10) NULL,
	[XHRBH] [smallint] NULL,
	[XHR] [varchar](10) NULL,
	[XHBZ] [varchar](1) NULL,
	[XHYJ] [varchar](50) NULL,
	[SYRBH] [smallint] NULL,
	[SYR] [varchar](10) NULL,
	[BGRQ] [smalldatetime] NULL,
	[JL] [varchar](150) NULL,
	[SYMC] [varchar](20) NULL,
	[QFBZ] [varchar](1) NULL,
	[QFYJ] [varchar](50) NULL,
	[ZXGC] [varchar](20) NULL,
	[ZXBZ] [varchar](20) NULL,
	[JZBZ] [varchar](10) NULL,
	[HGBZ] [varchar](10) NULL,
	[SYJG] [varchar](50) NULL,
	[CLYJ] [varchar](50) NULL,
	[WTZH] [smallint] NULL,
	[JLBBH] [varchar](20) NULL,
	[BGBBH] [varchar](20) NULL,
 CONSTRAINT [PK_CEES_Hntkz] PRIMARY KEY CLUSTERED 
(
	[kzid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗折id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'kzid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'cnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程项目id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'projectnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检人(委托人)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'client'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'混凝土单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'ccid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗折编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'kznumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'testnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程明细序号/工程抗压序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'sn_project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检单明细序号/提交序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'sn_test'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'edittime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'edituser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'readmark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'readtime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'WTDBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'DWDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试样编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SHIYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SYXMDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SYXMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'WTDWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'WTDWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仪器编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'YQBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'GCBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'GCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工部位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SGBW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设计强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SJQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拟配强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'NPQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要求坍落度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'YQTLD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实测坍落度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SCTLD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥品种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SNPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥标号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SNBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥厂别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SNCB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥出厂日期 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SNCCRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥试验编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SNSYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂子产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SHACD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂子品种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SHAPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂子细度模数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SHAXDMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂子含泥量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SHAHNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂子试验编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SHASYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'石子产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SHICD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'石子品种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SHIPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'石子最大粒径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SHIZDLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'石子含泥量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SHIHNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'石子试验编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SHISYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'掺合料名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'CHLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'掺合料产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'CHLCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'掺合料占水泥用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'CHLZYSNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'粉煤灰名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'FMHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'粉煤灰产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'FMHCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'粉煤灰占水泥用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'FMHZYSNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂2名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'PZJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂2产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'PZJCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂2掺量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'PZJCL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂2占水泥用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'PZJZYSNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'WJJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'WJJCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂掺量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'WJJCL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂占水泥用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'WJJZYSNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'混凝土单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'HNTDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配合比编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'PHBBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SNYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂子用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SHAYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'石子用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SHIYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'掺和料用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'CHLYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'粉煤灰用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'FMHYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂2用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'PZJYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'WJJYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'制模日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'ZMRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要求龄期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'YQLQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要求试验日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'YQSYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试块收到日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SKSDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试块养护条件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SKYHTJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SYWTR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SJBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际龄期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SJLQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件尺寸-长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SJCC_C'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件尺寸-宽' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SJCC_K'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件尺寸-高' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SJCC_G'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计算跨度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'JSKD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'破坏荷载1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'HZ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'破坏荷载2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'HZ2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'破坏荷载3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'HZ3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'破坏荷载平均' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'HZPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗折强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'KZQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'折合标准试件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'ZHQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'达到设计强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'DDQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'JSFZRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'JSFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'XHRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'XHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SYRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'BGRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'QFBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'QFYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行规程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'ZXGC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行标准' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'ZXBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'见证标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'JZBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合格标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'HGBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'SYJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'CLYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托组号 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'WTZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'JLBBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntkz', @level2type=N'COLUMN',@level2name=N'BGBBH'
GO
/****** Object:  Table [dbo].[CEES_Hntky]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_Hntky](
	[kyid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NULL,
	[cnumber] [varchar](50) NULL,
	[pid] [int] NULL,
	[projectnumber] [varchar](50) NULL,
	[client] [varchar](50) NULL,
	[ccid] [int] NULL,
	[kynumber] [varchar](50) NULL,
	[testnumber] [varchar](50) NULL,
	[sn] [int] NULL,
	[sn_project] [int] NULL,
	[sn_test] [int] NULL,
	[state] [varchar](50) NULL,
	[remarks] [varchar](50) NULL,
	[edittime] [varchar](50) NULL,
	[edituser] [varchar](50) NULL,
	[readmark] [bit] NULL,
	[readtime] [varchar](50) NULL,
	[WTDBH] [varchar](10) NULL,
	[DWDM] [smallint] NULL,
	[SYBH] [varchar](17) NULL,
	[SHIYBH] [varchar](10) NULL,
	[SYXMDM] [varchar](10) NULL,
	[SYXMMC] [varchar](40) NULL,
	[WTDWBH] [varchar](8) NULL,
	[WTDWMC] [varchar](80) NULL,
	[GCBH] [varchar](8) NULL,
	[GCMC] [varchar](80) NULL,
	[YQBH] [varchar](20) NULL,
	[SGBW] [varchar](400) NULL,
	[SJQD] [varchar](50) NULL,
	[NPQD] [varchar](50) NULL,
	[YQTLD] [varchar](10) NULL,
	[SCTLD] [varchar](10) NULL,
	[SNPZ] [varchar](10) NULL,
	[SNBH] [varchar](10) NULL,
	[SNCB] [varchar](40) NULL,
	[SNCCRQ] [varchar](10) NULL,
	[SNSYBH] [varchar](50) NULL,
	[SHACD] [varchar](100) NULL,
	[SHAPZ] [varchar](50) NULL,
	[SHAXDMS] [varchar](50) NULL,
	[SHAHNL] [varchar](50) NULL,
	[SHASYBH] [varchar](50) NULL,
	[SHICD] [varchar](100) NULL,
	[SHIPZ] [varchar](50) NULL,
	[SHIZDLJ] [varchar](50) NULL,
	[SHIHNL] [varchar](50) NULL,
	[SHISYBH] [varchar](50) NULL,
	[CHLMC] [varchar](50) NULL,
	[CHLCD] [varchar](100) NULL,
	[CHLZYSNL] [varchar](50) NULL,
	[FMHMC] [varchar](50) NULL,
	[FMHCD] [varchar](100) NULL,
	[FMHZYSNL] [varchar](50) NULL,
	[PZJMC] [varchar](50) NULL,
	[PZJCD] [varchar](100) NULL,
	[PZJCL] [varchar](50) NULL,
	[PZJZYSNL] [varchar](50) NULL,
	[WJJMC] [varchar](50) NULL,
	[WJJCD] [varchar](100) NULL,
	[WJJCL] [varchar](50) NULL,
	[WJJZYSNL] [varchar](50) NULL,
	[SGPHB] [varchar](50) NULL,
	[SHB] [varchar](10) NULL,
	[SL] [varchar](5) NULL,
	[HNTDW] [varchar](80) NULL,
	[PHBBH] [varchar](50) NULL,
	[SNYL] [varchar](10) NULL,
	[SYL] [varchar](10) NULL,
	[SHAYL] [varchar](10) NULL,
	[SHIYL] [varchar](10) NULL,
	[CHLYL] [varchar](10) NULL,
	[FMHYL] [varchar](10) NULL,
	[PZJYL] [varchar](10) NULL,
	[WJJYL] [varchar](10) NULL,
	[ZMRQ] [smalldatetime] NULL,
	[YQLQ] [varchar](10) NULL,
	[YQSYRQ] [smalldatetime] NULL,
	[SKSDRQ] [smalldatetime] NULL,
	[SKYHTJ] [varchar](10) NULL,
	[SYWTR] [varchar](10) NULL,
	[SJBH] [varchar](50) NULL,
	[SYRQ] [smalldatetime] NULL,
	[SJLQ] [varchar](10) NULL,
	[SJCC] [varchar](10) NULL,
	[SYMJ] [varchar](10) NULL,
	[HZ1] [varchar](10) NULL,
	[HZ2] [varchar](10) NULL,
	[HZ3] [varchar](10) NULL,
	[HZPJ] [varchar](10) NULL,
	[KYQD] [varchar](10) NULL,
	[ZHQD] [varchar](10) NULL,
	[DDQD] [varchar](10) NULL,
	[BZ] [varchar](400) NULL,
	[JSFZRBH] [smallint] NULL,
	[JSFZR] [varchar](10) NULL,
	[XHRBH] [smallint] NULL,
	[XHR] [varchar](10) NULL,
	[XHBZ] [varchar](1) NULL,
	[XHYJ] [varchar](50) NULL,
	[SYRBH] [smallint] NULL,
	[SYR] [varchar](10) NULL,
	[BGRQ] [smalldatetime] NULL,
	[JL] [varchar](150) NULL,
	[SYMC] [varchar](20) NULL,
	[QFBZ] [varchar](1) NULL,
	[QFYJ] [varchar](50) NULL,
	[ZXGC] [varchar](20) NULL,
	[ZXBZ] [varchar](20) NULL,
	[JZBZ] [varchar](10) NULL,
	[HGBZ] [varchar](10) NULL,
	[SYJG] [varchar](50) NULL,
	[CLYJ] [varchar](50) NULL,
	[WTZH] [smallint] NULL,
	[JLBBH] [varchar](20) NULL,
	[BGBBH] [varchar](20) NULL,
 CONSTRAINT [PK_CEES_Hntky] PRIMARY KEY CLUSTERED 
(
	[kyid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'kyid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'cnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程项目id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'projectnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检人(委托人)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'client'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'混凝土单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'ccid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'kynumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'testnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程明细序号/工程抗压序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'sn_project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检单明细序号/提交序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'sn_test'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'edittime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'edituser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'readmark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'readtime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'WTDBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'DWDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试样编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SHIYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SYXMDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SYXMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'WTDWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'WTDWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'GCBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'GCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仪器编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'YQBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工部位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SGBW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设计强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SJQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拟配强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'NPQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要求坍落度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'YQTLD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实测坍落度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SCTLD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥品种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SNPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥标号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SNBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥厂别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SNCB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥出厂日期 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SNCCRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥试验编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SNSYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂子产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SHACD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂子品种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SHAPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂子细度模数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SHAXDMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂子含泥量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SHAHNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂子试验编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SHASYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'石子产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SHICD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'石子品种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SHIPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'石子最大粒径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SHIZDLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'石子含泥量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SHIHNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'石子试验编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SHISYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'掺合料名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'CHLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'掺合料产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'CHLCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'掺合料占水泥用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'CHLZYSNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'粉煤灰名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'FMHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'粉煤灰产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'FMHCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'粉煤灰占水泥用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'FMHZYSNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂2名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'PZJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂2产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'PZJCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂2掺量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'PZJCL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂2占水泥用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'PZJZYSNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'WJJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'WJJCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂掺量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'WJJCL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂占水泥用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'WJJZYSNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水灰比' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SHB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂滤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'混凝土单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'HNTDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配合比编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'PHBBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水泥用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SNYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'砂子用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SHAYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'石子用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SHIYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'掺和料用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'CHLYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'粉煤灰用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'FMHYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂2用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'PZJYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外加剂用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'WJJYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'制模日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'ZMRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要求龄期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'YQLQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要求试验日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'YQSYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试块收到日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SKSDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试块养护条件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SKYHTJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SYWTR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SJBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际龄期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SJLQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件尺寸' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SJCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'受压面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SYMJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单块1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'HZ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单块2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'HZ2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单块3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'HZ3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单块平均' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'HZPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗压强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'KYQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'折合强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'ZHQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'达到强度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'DDQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'JSFZRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'JSFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'XHRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'XHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'XHBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'XHYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SYRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'BGRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'JL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'QFBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'QFYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行规程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'ZXGC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行标准' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'ZXBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'见证标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'JZBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合格标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'HGBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'SYJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'CLYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托组号 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'WTZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'JLBBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Hntky', @level2type=N'COLUMN',@level2name=N'BGBBH'
GO
/****** Object:  Table [dbo].[CEES_GJYC]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_GJYC](
	[gjycid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NULL,
	[cnumber] [varchar](50) NULL,
	[pid] [int] NULL,
	[projectnumber] [varchar](50) NULL,
	[client] [varchar](50) NULL,
	[gjycnumber] [varchar](50) NULL,
	[testnumber] [varchar](50) NULL,
	[sn] [int] NULL,
	[sn_project] [int] NULL,
	[sn_test] [int] NULL,
	[state] [varchar](50) NULL,
	[remarks] [varchar](50) NULL,
	[edittime] [varchar](50) NULL,
	[edituser] [varchar](50) NULL,
	[readmark] [bit] NULL,
	[readtime] [varchar](50) NULL,
	[WTDBH] [varchar](10) NULL,
	[WTDWMC] [varchar](80) NULL,
	[GJZL] [varchar](20) NULL,
	[GJCD] [varchar](40) NULL,
	[SJDBSL] [varchar](10) NULL,
	[LYRQ] [smalldatetime] NULL,
	[SYBH1] [varchar](17) NULL,
	[SYBH2] [varchar](17) NULL,
	[GCMC] [varchar](80) NULL,
	[YT] [varchar](500) NULL,
	[SYRQ] [smalldatetime] NULL,
	[YQBH] [varchar](20) NULL,
	[PH] [varchar](10) NULL,
	[DBSL] [varchar](10) NULL,
	[JB] [varchar](20) NULL,
	[GG] [varchar](20) NULL,
	[HJMJ] [varchar](10) NULL,
	[SJBH1] [varchar](50) NULL,
	[SJBH2] [varchar](50) NULL,
	[SJBH3] [varchar](50) NULL,
	[SJBH4] [varchar](50) NULL,
	[SJBH5] [varchar](50) NULL,
	[SJBH6] [varchar](50) NULL,
	[QFLL1] [varchar](10) NULL,
	[QFLL2] [varchar](10) NULL,
	[QFLL3] [varchar](10) NULL,
	[QFLL4] [varchar](10) NULL,
	[QFLL5] [varchar](10) NULL,
	[QFLL6] [varchar](10) NULL,
	[QFQD1] [varchar](10) NULL,
	[QFQD2] [varchar](10) NULL,
	[QFQD3] [varchar](10) NULL,
	[QFQD4] [varchar](10) NULL,
	[QFQD5] [varchar](10) NULL,
	[QFQD6] [varchar](10) NULL,
	[JXLL1] [varchar](10) NULL,
	[JXLL2] [varchar](10) NULL,
	[JXLL3] [varchar](10) NULL,
	[JXLL4] [varchar](10) NULL,
	[JXLL5] [varchar](10) NULL,
	[JXLL6] [varchar](10) NULL,
	[JXQD1] [varchar](10) NULL,
	[JXQD2] [varchar](10) NULL,
	[JXQD3] [varchar](10) NULL,
	[JXQD4] [varchar](10) NULL,
	[JXQD5] [varchar](10) NULL,
	[JXQD6] [varchar](10) NULL,
	[BXHDLWZ1] [varchar](50) NULL,
	[BXHDLWZ2] [varchar](50) NULL,
	[BXHDLWZ3] [varchar](50) NULL,
	[BXHDLWZ4] [varchar](50) NULL,
	[BXHDLWZ5] [varchar](50) NULL,
	[BXHDLWZ6] [varchar](50) NULL,
	[BJ1] [varchar](10) NULL,
	[BJ2] [varchar](10) NULL,
	[BJ3] [varchar](10) NULL,
	[BJ4] [varchar](10) NULL,
	[BJ5] [varchar](10) NULL,
	[BJ6] [varchar](10) NULL,
	[SCH1] [varchar](10) NULL,
	[SCH2] [varchar](10) NULL,
	[SCH3] [varchar](10) NULL,
	[SCH4] [varchar](10) NULL,
	[SCH5] [varchar](10) NULL,
	[SCH6] [varchar](10) NULL,
	[SCL1] [varchar](10) NULL,
	[SCL2] [varchar](10) NULL,
	[SCL3] [varchar](10) NULL,
	[SCL4] [varchar](10) NULL,
	[SCL5] [varchar](10) NULL,
	[SCL6] [varchar](10) NULL,
	[HJ1] [varchar](10) NULL,
	[HJ2] [varchar](10) NULL,
	[WXZJ1] [varchar](10) NULL,
	[WXZJ2] [varchar](10) NULL,
	[WXZJ3] [varchar](10) NULL,
	[WXZJ4] [varchar](10) NULL,
	[WXZJ5] [varchar](10) NULL,
	[WXZJ6] [varchar](10) NULL,
	[JD1] [varchar](10) NULL,
	[JD2] [varchar](10) NULL,
	[JD3] [varchar](10) NULL,
	[JD4] [varchar](10) NULL,
	[JD5] [varchar](10) NULL,
	[JD6] [varchar](10) NULL,
	[PDJG1] [varchar](10) NULL,
	[PDJG2] [varchar](10) NULL,
	[PDJG3] [varchar](10) NULL,
	[PDJG4] [varchar](10) NULL,
	[PDJG5] [varchar](10) NULL,
	[PDJG6] [varchar](10) NULL,
	[HJTJ] [varchar](50) NULL,
	[JL] [varchar](150) NULL,
	[BZ] [varchar](255) NULL,
	[XHR] [varchar](10) NULL,
	[SYR] [varchar](10) NULL,
	[DWDM] [smallint] NULL,
	[SYXMDM1] [varchar](4) NULL,
	[SYXMDM2] [varchar](4) NULL,
	[SYXMMC1] [varchar](40) NULL,
	[SYXMMC2] [varchar](40) NULL,
	[SHIYBH] [varchar](10) NULL,
	[SYMC] [varchar](20) NULL,
	[WTDWBH] [varchar](8) NULL,
	[GCBH] [varchar](8) NULL,
	[JSFZRBH] [smallint] NULL,
	[JSFZR] [varchar](10) NULL,
	[XHRBH] [smallint] NULL,
	[XHBZ] [varchar](1) NULL,
	[XHYJ] [varchar](50) NULL,
	[QFBZ] [varchar](1) NULL,
	[QFYJ] [varchar](50) NULL,
	[SYRBH] [smallint] NULL,
	[BGRQ] [smalldatetime] NULL,
	[ZXGC1] [varchar](20) NULL,
	[ZXBZ1] [varchar](20) NULL,
	[ZXGC2] [varchar](20) NULL,
	[ZXBZ2] [varchar](20) NULL,
	[SYWTR] [varchar](10) NULL,
	[JZBZ] [varchar](10) NULL,
	[HGBZ] [varchar](10) NULL,
	[SYJG] [varchar](50) NULL,
	[CLYJ] [varchar](50) NULL,
	[WTZH] [smallint] NULL,
	[JLBBH] [varchar](20) NULL,
	[BGBBH] [varchar](20) NULL,
 CONSTRAINT [PK_CEES_GJYC] PRIMARY KEY CLUSTERED 
(
	[gjycid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'钢筋原材id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'gjycid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'cnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程项目id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'projectnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检人(委托人)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'client'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'钢筋原材编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'gjycnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'testnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程明细序号/工程抗压序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'sn_project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检单明细序号/提交序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'sn_test'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'edittime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'edituser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'readmark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'readtime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'WTDBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'WTDWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'钢筋种类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'GJZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'钢筋产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'GJCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件代表数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SJDBSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来样日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'LYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拉力试验编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SYBH1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'冷热弯曲试验编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SYBH2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'GCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'YT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验仪器编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'YQBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'PH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'GG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公称面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'HJMJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SJBH1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SJBH2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SJBH3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SJBH4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SJBH5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SJBH6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屈服拉力1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'QFLL1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屈服拉力2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'QFLL2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屈服拉力3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'QFLL3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屈服拉力4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'QFLL4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屈服拉力5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'QFLL5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屈服拉力6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'QFLL6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屈服强度1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'QFQD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屈服强度2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'QFQD2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屈服强度3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'QFQD3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屈服强度4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'QFQD4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屈服强度5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'QFQD5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屈服强度6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'QFQD6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'极限拉力1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JXLL1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'极限拉力2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JXLL2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'极限拉力3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JXLL3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'极限拉力4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JXLL4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'极限拉力5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JXLL5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'极限拉力6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JXLL6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'极限强度1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JXQD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'极限强度2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JXQD2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'极限强度3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JXQD3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'极限强度4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JXQD4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'极限强度5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JXQD5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'极限强度6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JXQD6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变形或断裂位置1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'BXHDLWZ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变形或断裂位置2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'BXHDLWZ2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变形或断裂位置3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'BXHDLWZ3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变形或断裂位置4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'BXHDLWZ4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变形或断裂位置5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'BXHDLWZ5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变形或断裂位置6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'BXHDLWZ6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标距1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'BJ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标距2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'BJ2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标距3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'BJ3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标距4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'BJ4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标距5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'BJ5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标距6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'BJ6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'伸长后1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SCH1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'伸长后2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SCH2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'伸长后3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SCH3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'伸长后4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SCH4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'伸长后5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SCH5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'伸长后6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SCH6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'伸长率1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SCL1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'伸长率2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SCL2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'伸长率3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SCL3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'伸长率4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SCL4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'伸长率5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SCL5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'伸长率6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SCL6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'弯曲直径1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'WXZJ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'弯曲直径2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'WXZJ2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'弯曲直径3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'WXZJ3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'弯曲直径4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'WXZJ4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'弯曲直径5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'WXZJ5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'弯曲直径6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'WXZJ6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JD2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JD3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JD4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JD5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JD6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评定结果1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'PDJG1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评定结果2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'PDJG2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评定结果3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'PDJG3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评定结果4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'PDJG4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评定结果5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'PDJG5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评定结果6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'PDJG6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'XHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'DWDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目代码1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SYXMDM1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目代码2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SYXMDM2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目名称1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SYXMMC1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目名称2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SYXMMC2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试样编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SHIYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'WTDWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'GCBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JSFZRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JSFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'XHRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'XHBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核结论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'XHYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'QFBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'QFYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SYRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'BGRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行规程1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'ZXGC1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行备注1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'ZXBZ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行规程2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'ZXGC2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行备注2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'ZXBZ2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验委托人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SYWTR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'见证标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JZBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合格标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'HGBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'SYJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'CLYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托组号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'WTZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'JLBBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJYC', @level2type=N'COLUMN',@level2name=N'BGBBH'
GO
/****** Object:  Table [dbo].[CEES_GJHJ]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_GJHJ](
	[gjhjid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NULL,
	[cnumber] [varchar](50) NULL,
	[pid] [int] NULL,
	[projectnumber] [varchar](50) NULL,
	[client] [varchar](50) NULL,
	[gjhjnumber] [varchar](50) NULL,
	[testnumber] [varchar](50) NULL,
	[sn] [int] NULL,
	[sn_project] [int] NULL,
	[sn_test] [int] NULL,
	[state] [varchar](50) NULL,
	[remarks] [varchar](50) NULL,
	[edittime] [varchar](50) NULL,
	[edituser] [varchar](50) NULL,
	[readmark] [bit] NULL,
	[readtime] [varchar](50) NULL,
	[WTDBH] [varchar](10) NULL,
	[WTDWMC] [varchar](80) NULL,
	[GJZL] [varchar](20) NULL,
	[GJCD] [varchar](40) NULL,
	[LYRQ] [smalldatetime] NULL,
	[SYBH] [varchar](17) NULL,
	[GCMC] [varchar](80) NULL,
	[DBHJSL] [varchar](10) NULL,
	[YT] [varchar](255) NULL,
	[SYRQ] [smalldatetime] NULL,
	[YQBH] [varchar](20) NULL,
	[PH] [varchar](10) NULL,
	[JB] [varchar](20) NULL,
	[GG] [varchar](20) NULL,
	[GG1] [varchar](20) NULL,
	[HJMJ] [varchar](10) NULL,
	[HJMJ1] [varchar](10) NULL,
	[HJLX] [varchar](40) NULL,
	[YCLSYBH] [varchar](40) NULL,
	[HTXH] [varchar](10) NULL,
	[HJR] [varchar](10) NULL,
	[SJBH1] [varchar](50) NULL,
	[SJBH2] [varchar](50) NULL,
	[SJBH3] [varchar](50) NULL,
	[SJBH4] [varchar](50) NULL,
	[SJBH5] [varchar](50) NULL,
	[SJBH6] [varchar](50) NULL,
	[LL1] [varchar](10) NULL,
	[LL2] [varchar](10) NULL,
	[LL3] [varchar](10) NULL,
	[LL4] [varchar](10) NULL,
	[LL5] [varchar](10) NULL,
	[LL6] [varchar](10) NULL,
	[QD1] [varchar](10) NULL,
	[QD2] [varchar](10) NULL,
	[QD3] [varchar](10) NULL,
	[QD4] [varchar](10) NULL,
	[QD5] [varchar](10) NULL,
	[QD6] [varchar](10) NULL,
	[BXHDLWZ1] [varchar](50) NULL,
	[BXHDLWZ2] [varchar](50) NULL,
	[BXHDLWZ3] [varchar](50) NULL,
	[BXHDLWZ4] [varchar](50) NULL,
	[BXHDLWZ5] [varchar](50) NULL,
	[BXHDLWZ6] [varchar](50) NULL,
	[WXZJ1] [varchar](10) NULL,
	[WXZJ2] [varchar](10) NULL,
	[WXZJ3] [varchar](10) NULL,
	[WXZJ4] [varchar](10) NULL,
	[WXZJ5] [varchar](10) NULL,
	[WXZJ6] [varchar](10) NULL,
	[JD1] [varchar](10) NULL,
	[JD2] [varchar](10) NULL,
	[JD3] [varchar](10) NULL,
	[JD4] [varchar](10) NULL,
	[JD5] [varchar](10) NULL,
	[JD6] [varchar](10) NULL,
	[PD1] [varchar](10) NULL,
	[PD2] [varchar](10) NULL,
	[PD3] [varchar](10) NULL,
	[PD4] [varchar](10) NULL,
	[PD5] [varchar](10) NULL,
	[PD6] [varchar](10) NULL,
	[HJ1] [varchar](10) NULL,
	[HJ2] [varchar](10) NULL,
	[JL] [varchar](150) NULL,
	[BZ] [varchar](255) NULL,
	[XHR] [varchar](10) NULL,
	[SYR] [varchar](10) NULL,
	[DWDM] [smallint] NULL,
	[SYXMDM] [varchar](4) NULL,
	[SYXMMC] [varchar](40) NULL,
	[SHIYBH] [varchar](10) NULL,
	[SYMC] [varchar](20) NULL,
	[WTDWBH] [varchar](8) NULL,
	[GCBH] [varchar](8) NULL,
	[JSFZRBH] [smallint] NULL,
	[JSFZR] [varchar](10) NULL,
	[XHRBH] [smallint] NULL,
	[XHBZ] [varchar](1) NULL,
	[XHYJ] [varchar](50) NULL,
	[QFBZ] [varchar](1) NULL,
	[QFYJ] [varchar](50) NULL,
	[SYRBH] [smallint] NULL,
	[BGRQ] [smalldatetime] NULL,
	[ZXGC] [varchar](20) NULL,
	[ZXBZ] [varchar](20) NULL,
	[SYWTR] [varchar](10) NULL,
	[JZBZ] [varchar](10) NULL,
	[HGBZ] [varchar](10) NULL,
	[SYJG] [varchar](50) NULL,
	[CLYJ] [varchar](50) NULL,
	[WTZH] [smallint] NULL,
	[JLBBH] [varchar](20) NULL,
	[BGBBH] [varchar](20) NULL,
 CONSTRAINT [PK_CEES_GJHJ] PRIMARY KEY CLUSTERED 
(
	[gjhjid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'钢筋焊接id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'gjhjid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'cnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程项目id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'projectnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检人(委托人)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'client'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'钢筋焊接编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'gjhjnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'testnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程明细序号/工程抗压序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'sn_project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检单明细序号/提交序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'sn_test'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'edittime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'edituser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'readmark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'readtime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'WTDBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'WTDWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'钢筋种类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'GJZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'钢筋产地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'GJCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来样日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'LYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'GCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代表焊接数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'DBHJSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'YT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验仪器编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'YQBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'PH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'JB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'GG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'GG1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'横截面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'HJMJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'横截面积1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'HJMJ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'焊接类型及接头方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'HJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原材试验编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'YCLSYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'焊条型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'HTXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'焊接人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'HJR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SJBH1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SJBH2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SJBH3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SJBH4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SJBH5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试件编号6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SJBH6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拉力1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'LL1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拉力2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'LL2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拉力3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'LL3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拉力4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'LL4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拉力5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'LL5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拉力6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'LL6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'强度1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'QD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'强度2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'QD2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'强度3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'QD3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'强度4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'QD4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'强度5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'QD5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'强度6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'QD6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变形或断裂位置1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'BXHDLWZ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变形或断裂位置2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'BXHDLWZ2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变形或断裂位置3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'BXHDLWZ3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变形或断裂位置4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'BXHDLWZ4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变形或断裂位置5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'BXHDLWZ5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变形或断裂位置6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'BXHDLWZ6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'弯曲直径1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'WXZJ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'弯曲直径2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'WXZJ2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'弯曲直径3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'WXZJ3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'弯曲直径4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'WXZJ4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'弯曲直径5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'WXZJ5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'弯曲直径6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'WXZJ6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'JD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'JD2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'JD3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'JD4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'JD5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'JD6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评定1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'PD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评定2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'PD2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评定3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'PD3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评定4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'PD4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评定5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'PD5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评定6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'PD6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'JL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'XHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'DWDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SYXMDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SYXMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试样编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SHIYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'WTDWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'GCBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'JSFZRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'JSFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'XHRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'XHBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校核意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'XHYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'QFBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'QFYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验人编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SYRBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'BGRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行规程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'ZXGC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行标准' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'ZXBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验委托人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SYWTR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'见证标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'JZBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合格标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'HGBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'SYJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'CLYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委托组号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'WTZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'JLBBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_GJHJ', @level2type=N'COLUMN',@level2name=N'BGBBH'
GO
/****** Object:  Table [dbo].[CEES_Construction]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_Construction](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[sn] [int] NULL,
	[cnumber] [varchar](50) NULL,
	[construction] [varchar](50) NOT NULL,
	[address] [varchar](50) NULL,
	[client] [varchar](50) NULL,
	[tel] [varchar](50) NULL,
	[anumber] [varchar](50) NULL,
	[part] [varchar](50) NULL,
	[state] [bit] NULL,
	[remarks] [varchar](50) NULL,
	[edittime] [varchar](50) NULL,
	[edituser] [varchar](50) NULL,
 CONSTRAINT [PK_CEES_Organization] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Construction', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Construction', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Construction', @level2type=N'COLUMN',@level2name=N'cnumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位名称(委托单位)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Construction', @level2type=N'COLUMN',@level2name=N'construction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Construction', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送检人(委托人)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Construction', @level2type=N'COLUMN',@level2name=N'client'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Construction', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Construction', @level2type=N'COLUMN',@level2name=N'anumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Construction', @level2type=N'COLUMN',@level2name=N'part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Construction', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Construction', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Construction', @level2type=N'COLUMN',@level2name=N'edittime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Construction', @level2type=N'COLUMN',@level2name=N'edituser'
GO
/****** Object:  Table [dbo].[CEES_Concrete]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_Concrete](
	[ccid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NOT NULL,
	[sn] [int] NULL,
	[concrete] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[tel] [varchar](50) NULL,
	[state] [bit] NULL,
	[remarks] [varchar](50) NULL,
	[edittime] [varchar](50) NULL,
	[edituser] [varchar](50) NULL,
 CONSTRAINT [PK_CEES_Concrete] PRIMARY KEY CLUSTERED 
(
	[ccid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'混凝土单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Concrete', @level2type=N'COLUMN',@level2name=N'ccid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Concrete', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Concrete', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'混凝土单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Concrete', @level2type=N'COLUMN',@level2name=N'concrete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Concrete', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Concrete', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Concrete', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Concrete', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Concrete', @level2type=N'COLUMN',@level2name=N'edittime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Concrete', @level2type=N'COLUMN',@level2name=N'edituser'
GO
/****** Object:  Table [dbo].[CEES_Build]    Script Date: 07/17/2018 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEES_Build](
	[bid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NOT NULL,
	[sn] [int] NULL,
	[build] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[tel] [varchar](50) NULL,
	[state] [bit] NULL,
	[remarks] [varchar](50) NULL,
	[edittime] [varchar](50) NULL,
	[edituser] [varchar](50) NULL,
 CONSTRAINT [PK_CEES_Build] PRIMARY KEY CLUSTERED 
(
	[bid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建设单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Build', @level2type=N'COLUMN',@level2name=N'bid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'施工单位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Build', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Build', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'混凝土单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Build', @level2type=N'COLUMN',@level2name=N'build'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Build', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Build', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Build', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Build', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Build', @level2type=N'COLUMN',@level2name=N'edittime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CEES_Build', @level2type=N'COLUMN',@level2name=N'edituser'
GO
/****** Object:  Default [DF_Display__XH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_User] ADD  CONSTRAINT [DF_Display__XH]  DEFAULT ((0)) FOR [XH]
GO
/****** Object:  Default [DF_Display__XZ]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_User] ADD  CONSTRAINT [DF_Display__XZ]  DEFAULT ('') FOR [XZ]
GO
/****** Object:  Default [DF_Display__ZDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_User] ADD  CONSTRAINT [DF_Display__ZDMC]  DEFAULT ('') FOR [ZDMC]
GO
/****** Object:  Default [DF_Display__GRIDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_User] ADD  CONSTRAINT [DF_Display__GRIDMC]  DEFAULT ('') FOR [GRIDMC]
GO
/****** Object:  Default [DF_Display__ZW]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_User] ADD  CONSTRAINT [DF_Display__ZW]  DEFAULT ('') FOR [ZW]
GO
/****** Object:  Default [DF_Display__XSKD]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_User] ADD  CONSTRAINT [DF_Display__XSKD]  DEFAULT ((0)) FOR [XSKD]
GO
/****** Object:  Default [DF_Display__XSYS]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_User] ADD  CONSTRAINT [DF_Display__XSYS]  DEFAULT ('') FOR [XSYS]
GO
/****** Object:  Default [DF_Display__VISIBLE]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_User] ADD  CONSTRAINT [DF_Display__VISIBLE]  DEFAULT ((1)) FOR [VISIBLE]
GO
/****** Object:  Default [DF_Display_Test_XH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Test] ADD  CONSTRAINT [DF_Display_Test_XH]  DEFAULT ((0)) FOR [XH]
GO
/****** Object:  Default [DF_Display_Test_XZ]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Test] ADD  CONSTRAINT [DF_Display_Test_XZ]  DEFAULT ('') FOR [XZ]
GO
/****** Object:  Default [DF_Display_Test_ZDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Test] ADD  CONSTRAINT [DF_Display_Test_ZDMC]  DEFAULT ('') FOR [ZDMC]
GO
/****** Object:  Default [DF_Display_Test_GRIDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Test] ADD  CONSTRAINT [DF_Display_Test_GRIDMC]  DEFAULT ('') FOR [GRIDMC]
GO
/****** Object:  Default [DF_Display_Test_ZW]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Test] ADD  CONSTRAINT [DF_Display_Test_ZW]  DEFAULT ('') FOR [ZW]
GO
/****** Object:  Default [DF_Display_Test_XSKD]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Test] ADD  CONSTRAINT [DF_Display_Test_XSKD]  DEFAULT ((0)) FOR [XSKD]
GO
/****** Object:  Default [DF_Display_Test_XSYS]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Test] ADD  CONSTRAINT [DF_Display_Test_XSYS]  DEFAULT ('') FOR [XSYS]
GO
/****** Object:  Default [DF_Display_Test_VISIBLE]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Test] ADD  CONSTRAINT [DF_Display_Test_VISIBLE]  DEFAULT ((1)) FOR [VISIBLE]
GO
/****** Object:  Default [DF_Display_Project_XH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Project] ADD  CONSTRAINT [DF_Display_Project_XH]  DEFAULT ((0)) FOR [XH]
GO
/****** Object:  Default [DF_Display_Project_XZ]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Project] ADD  CONSTRAINT [DF_Display_Project_XZ]  DEFAULT ('') FOR [XZ]
GO
/****** Object:  Default [DF_Display_Project_ZDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Project] ADD  CONSTRAINT [DF_Display_Project_ZDMC]  DEFAULT ('') FOR [ZDMC]
GO
/****** Object:  Default [DF_Display_Project_GRIDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Project] ADD  CONSTRAINT [DF_Display_Project_GRIDMC]  DEFAULT ('') FOR [GRIDMC]
GO
/****** Object:  Default [DF_Display_Project_ZW]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Project] ADD  CONSTRAINT [DF_Display_Project_ZW]  DEFAULT ('') FOR [ZW]
GO
/****** Object:  Default [DF_Display_Project_XSKD]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Project] ADD  CONSTRAINT [DF_Display_Project_XSKD]  DEFAULT ((0)) FOR [XSKD]
GO
/****** Object:  Default [DF_Display_Project_XSYS]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Project] ADD  CONSTRAINT [DF_Display_Project_XSYS]  DEFAULT ('') FOR [XSYS]
GO
/****** Object:  Default [DF_Display_Project_VISIBLE]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Project] ADD  CONSTRAINT [DF_Display_Project_VISIBLE]  DEFAULT ((1)) FOR [VISIBLE]
GO
/****** Object:  Default [DF_Display_Hntkz_XH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntkz] ADD  CONSTRAINT [DF_Display_Hntkz_XH]  DEFAULT ((0)) FOR [XH]
GO
/****** Object:  Default [DF_Display_Hntkz_XZ]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntkz] ADD  CONSTRAINT [DF_Display_Hntkz_XZ]  DEFAULT ('') FOR [XZ]
GO
/****** Object:  Default [DF_Display_Hntkz_ZDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntkz] ADD  CONSTRAINT [DF_Display_Hntkz_ZDMC]  DEFAULT ('') FOR [ZDMC]
GO
/****** Object:  Default [DF_Display_Hntkz_GRIDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntkz] ADD  CONSTRAINT [DF_Display_Hntkz_GRIDMC]  DEFAULT ('') FOR [GRIDMC]
GO
/****** Object:  Default [DF_Display_Hntkz_ZW]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntkz] ADD  CONSTRAINT [DF_Display_Hntkz_ZW]  DEFAULT ('') FOR [ZW]
GO
/****** Object:  Default [DF_Display_Hntkz_XSKD]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntkz] ADD  CONSTRAINT [DF_Display_Hntkz_XSKD]  DEFAULT ((0)) FOR [XSKD]
GO
/****** Object:  Default [DF_Display_Hntkz_XSYS]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntkz] ADD  CONSTRAINT [DF_Display_Hntkz_XSYS]  DEFAULT ('') FOR [XSYS]
GO
/****** Object:  Default [DF_Display_Hntkz_VISIBLE]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntkz] ADD  CONSTRAINT [DF_Display_Hntkz_VISIBLE]  DEFAULT ((1)) FOR [VISIBLE]
GO
/****** Object:  Default [DF_Display_Hntky_XH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntky] ADD  CONSTRAINT [DF_Display_Hntky_XH]  DEFAULT ((0)) FOR [XH]
GO
/****** Object:  Default [DF_Display_Hntky_XZ]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntky] ADD  CONSTRAINT [DF_Display_Hntky_XZ]  DEFAULT ('') FOR [XZ]
GO
/****** Object:  Default [DF_Display_Hntky_ZDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntky] ADD  CONSTRAINT [DF_Display_Hntky_ZDMC]  DEFAULT ('') FOR [ZDMC]
GO
/****** Object:  Default [DF_Display_Hntky_GRIDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntky] ADD  CONSTRAINT [DF_Display_Hntky_GRIDMC]  DEFAULT ('') FOR [GRIDMC]
GO
/****** Object:  Default [DF_Display_Hntky_ZW]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntky] ADD  CONSTRAINT [DF_Display_Hntky_ZW]  DEFAULT ('') FOR [ZW]
GO
/****** Object:  Default [DF_Display_Hntky_XSKD]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntky] ADD  CONSTRAINT [DF_Display_Hntky_XSKD]  DEFAULT ((0)) FOR [XSKD]
GO
/****** Object:  Default [DF_Display_Hntky_XSYS]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntky] ADD  CONSTRAINT [DF_Display_Hntky_XSYS]  DEFAULT ('') FOR [XSYS]
GO
/****** Object:  Default [DF_Display_Hntky_VISIBLE]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Hntky] ADD  CONSTRAINT [DF_Display_Hntky_VISIBLE]  DEFAULT ((1)) FOR [VISIBLE]
GO
/****** Object:  Default [DF_Display_GJYC_XH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_GJYC] ADD  CONSTRAINT [DF_Display_GJYC_XH]  DEFAULT ((0)) FOR [XH]
GO
/****** Object:  Default [DF_Display_GJYC_XZ]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_GJYC] ADD  CONSTRAINT [DF_Display_GJYC_XZ]  DEFAULT ('') FOR [XZ]
GO
/****** Object:  Default [DF_Display_GJYC_ZDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_GJYC] ADD  CONSTRAINT [DF_Display_GJYC_ZDMC]  DEFAULT ('') FOR [ZDMC]
GO
/****** Object:  Default [DF_Display_GJYC_GRIDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_GJYC] ADD  CONSTRAINT [DF_Display_GJYC_GRIDMC]  DEFAULT ('') FOR [GRIDMC]
GO
/****** Object:  Default [DF_Display_GJYC_ZW]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_GJYC] ADD  CONSTRAINT [DF_Display_GJYC_ZW]  DEFAULT ('') FOR [ZW]
GO
/****** Object:  Default [DF_Display_GJYC_XSKD]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_GJYC] ADD  CONSTRAINT [DF_Display_GJYC_XSKD]  DEFAULT ((0)) FOR [XSKD]
GO
/****** Object:  Default [DF_Display_GJYC_XSYS]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_GJYC] ADD  CONSTRAINT [DF_Display_GJYC_XSYS]  DEFAULT ('') FOR [XSYS]
GO
/****** Object:  Default [DF_Display_GJYC_VISIBLE]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_GJYC] ADD  CONSTRAINT [DF_Display_GJYC_VISIBLE]  DEFAULT ((1)) FOR [VISIBLE]
GO
/****** Object:  Default [DF_Display_Construction_XH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Construction] ADD  CONSTRAINT [DF_Display_Construction_XH]  DEFAULT ((0)) FOR [XH]
GO
/****** Object:  Default [DF_Display_Construction_XZ]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Construction] ADD  CONSTRAINT [DF_Display_Construction_XZ]  DEFAULT ('') FOR [XZ]
GO
/****** Object:  Default [DF_Display_Construction_ZDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Construction] ADD  CONSTRAINT [DF_Display_Construction_ZDMC]  DEFAULT ('') FOR [ZDMC]
GO
/****** Object:  Default [DF_Display_Construction_GRIDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Construction] ADD  CONSTRAINT [DF_Display_Construction_GRIDMC]  DEFAULT ('') FOR [GRIDMC]
GO
/****** Object:  Default [DF_Display_Construction_ZW]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Construction] ADD  CONSTRAINT [DF_Display_Construction_ZW]  DEFAULT ('') FOR [ZW]
GO
/****** Object:  Default [DF_Display_Construction_XSKD]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Construction] ADD  CONSTRAINT [DF_Display_Construction_XSKD]  DEFAULT ((0)) FOR [XSKD]
GO
/****** Object:  Default [DF_Display_Construction_XSYS]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Construction] ADD  CONSTRAINT [DF_Display_Construction_XSYS]  DEFAULT ('') FOR [XSYS]
GO
/****** Object:  Default [DF_Display_Construction_VISIBLE]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Construction] ADD  CONSTRAINT [DF_Display_Construction_VISIBLE]  DEFAULT ((1)) FOR [VISIBLE]
GO
/****** Object:  Default [DF_Display_Concrete_XH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Concrete] ADD  CONSTRAINT [DF_Display_Concrete_XH]  DEFAULT ((0)) FOR [XH]
GO
/****** Object:  Default [DF_Display_Concrete_XZ]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Concrete] ADD  CONSTRAINT [DF_Display_Concrete_XZ]  DEFAULT ('') FOR [XZ]
GO
/****** Object:  Default [DF_Display_Concrete_ZDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Concrete] ADD  CONSTRAINT [DF_Display_Concrete_ZDMC]  DEFAULT ('') FOR [ZDMC]
GO
/****** Object:  Default [DF_Display_Concrete_GRIDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Concrete] ADD  CONSTRAINT [DF_Display_Concrete_GRIDMC]  DEFAULT ('') FOR [GRIDMC]
GO
/****** Object:  Default [DF_Display_Concrete_ZW]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Concrete] ADD  CONSTRAINT [DF_Display_Concrete_ZW]  DEFAULT ('') FOR [ZW]
GO
/****** Object:  Default [DF_Display_Concrete_XSKD]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Concrete] ADD  CONSTRAINT [DF_Display_Concrete_XSKD]  DEFAULT ((0)) FOR [XSKD]
GO
/****** Object:  Default [DF_Display_Concrete_XSYS]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Concrete] ADD  CONSTRAINT [DF_Display_Concrete_XSYS]  DEFAULT ('') FOR [XSYS]
GO
/****** Object:  Default [DF_Display_Concrete_VISIBLE]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Concrete] ADD  CONSTRAINT [DF_Display_Concrete_VISIBLE]  DEFAULT ((1)) FOR [VISIBLE]
GO
/****** Object:  Default [DF_Display_Build_XH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Build] ADD  CONSTRAINT [DF_Display_Build_XH]  DEFAULT ((0)) FOR [XH]
GO
/****** Object:  Default [DF_Display_Build_XZ]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Build] ADD  CONSTRAINT [DF_Display_Build_XZ]  DEFAULT ('') FOR [XZ]
GO
/****** Object:  Default [DF_Display_Build_ZDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Build] ADD  CONSTRAINT [DF_Display_Build_ZDMC]  DEFAULT ('') FOR [ZDMC]
GO
/****** Object:  Default [DF_Display_Build_GRIDMC]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Build] ADD  CONSTRAINT [DF_Display_Build_GRIDMC]  DEFAULT ('') FOR [GRIDMC]
GO
/****** Object:  Default [DF_Display_Build_ZW]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Build] ADD  CONSTRAINT [DF_Display_Build_ZW]  DEFAULT ('') FOR [ZW]
GO
/****** Object:  Default [DF_Display_Build_XSKD]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Build] ADD  CONSTRAINT [DF_Display_Build_XSKD]  DEFAULT ((0)) FOR [XSKD]
GO
/****** Object:  Default [DF_Display_Build_XSYS]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Build] ADD  CONSTRAINT [DF_Display_Build_XSYS]  DEFAULT ('') FOR [XSYS]
GO
/****** Object:  Default [DF_Display_Build_VISIBLE]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[Display_Build] ADD  CONSTRAINT [DF_Display_Build_VISIBLE]  DEFAULT ((1)) FOR [VISIBLE]
GO
/****** Object:  Default [DF_CEES_WCXKY_cid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_WCXKY] ADD  CONSTRAINT [DF_CEES_WCXKY_cid]  DEFAULT ((0)) FOR [cid]
GO
/****** Object:  Default [DF_CEES_WCXKY_pid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_WCXKY] ADD  CONSTRAINT [DF_CEES_WCXKY_pid]  DEFAULT ((0)) FOR [pid]
GO
/****** Object:  Default [DF_CEES_WCXKY_sn]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_WCXKY] ADD  CONSTRAINT [DF_CEES_WCXKY_sn]  DEFAULT ((0)) FOR [sn]
GO
/****** Object:  Default [DF_CEES_WCXKY_sn_project]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_WCXKY] ADD  CONSTRAINT [DF_CEES_WCXKY_sn_project]  DEFAULT ((0)) FOR [sn_project]
GO
/****** Object:  Default [DF_CEES_WCXKY_sn_test]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_WCXKY] ADD  CONSTRAINT [DF_CEES_WCXKY_sn_test]  DEFAULT ((0)) FOR [sn_test]
GO
/****** Object:  Default [DF_CEES_WCXKY_readmark]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_WCXKY] ADD  CONSTRAINT [DF_CEES_WCXKY_readmark]  DEFAULT ((0)) FOR [readmark]
GO
/****** Object:  Default [DF_CEES_WCXKY_readtime]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_WCXKY] ADD  CONSTRAINT [DF_CEES_WCXKY_readtime]  DEFAULT ('') FOR [readtime]
GO
/****** Object:  Default [DF_CEES_WCXKY_DWDM]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_WCXKY] ADD  CONSTRAINT [DF_CEES_WCXKY_DWDM]  DEFAULT ((0)) FOR [DWDM]
GO
/****** Object:  Default [DF_CEES_WCXKY_JSFZRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_WCXKY] ADD  CONSTRAINT [DF_CEES_WCXKY_JSFZRBH]  DEFAULT ((0)) FOR [JSFZRBH]
GO
/****** Object:  Default [DF_CEES_WCXKY_XHRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_WCXKY] ADD  CONSTRAINT [DF_CEES_WCXKY_XHRBH]  DEFAULT ((0)) FOR [XHRBH]
GO
/****** Object:  Default [DF_CEES_WCXKY_SYRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_WCXKY] ADD  CONSTRAINT [DF_CEES_WCXKY_SYRBH]  DEFAULT ((0)) FOR [SYRBH]
GO
/****** Object:  Default [DF_CEES_WCXKY_WTZH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_WCXKY] ADD  CONSTRAINT [DF_CEES_WCXKY_WTZH]  DEFAULT ((0)) FOR [WTZH]
GO
/****** Object:  Default [DF_CEES_WCXKY_JLBBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_WCXKY] ADD  CONSTRAINT [DF_CEES_WCXKY_JLBBH]  DEFAULT ('') FOR [JLBBH]
GO
/****** Object:  Default [DF_CEES_WCXKY_BGBBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_WCXKY] ADD  CONSTRAINT [DF_CEES_WCXKY_BGBBH]  DEFAULT ('') FOR [BGBBH]
GO
/****** Object:  Default [DF_CEES_User_oid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_User] ADD  CONSTRAINT [DF_CEES_User_oid]  DEFAULT ((0)) FOR [cid]
GO
/****** Object:  Default [DF_CEES_User_sn]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_User] ADD  CONSTRAINT [DF_CEES_User_sn]  DEFAULT ((0)) FOR [sn]
GO
/****** Object:  Default [DF_CEES_User_state]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_User] ADD  CONSTRAINT [DF_CEES_User_state]  DEFAULT ((1)) FOR [state]
GO
/****** Object:  Default [DF_CEES_Test_cid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_cid]  DEFAULT ((0)) FOR [cid]
GO
/****** Object:  Default [DF_CEES_Test_pid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_pid]  DEFAULT ((0)) FOR [pid]
GO
/****** Object:  Default [DF_CEES_Test_sn]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_sn]  DEFAULT ((0)) FOR [sn]
GO
/****** Object:  Default [DF_CEES_Test_sn_project]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_sn_project]  DEFAULT ((0)) FOR [sn_project]
GO
/****** Object:  Default [DF_CEES_Test_testnumber]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_testnumber]  DEFAULT ('') FOR [testnumber]
GO
/****** Object:  Default [DF_CEES_Test_classification]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_classification]  DEFAULT ('') FOR [classification]
GO
/****** Object:  Default [DF_CEES_Test_number]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_number]  DEFAULT ((0)) FOR [testcount]
GO
/****** Object:  Default [DF_CEES_Test_unit]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_unit]  DEFAULT ('') FOR [testunit]
GO
/****** Object:  Default [DF_CEES_Test_money]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_money]  DEFAULT ((0)) FOR [payable]
GO
/****** Object:  Default [DF_CEES_Test_payment]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_payment]  DEFAULT ((0)) FOR [payment]
GO
/****** Object:  Default [DF_CEES_Test_arrears]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_arrears]  DEFAULT ((0)) FOR [arrears]
GO
/****** Object:  Default [DF_CEES_Test_paydate]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_paydate]  DEFAULT ('') FOR [paydate]
GO
/****** Object:  Default [DF_CEES_Test_CDLY]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_CDLY]  DEFAULT ('') FOR [CDLY]
GO
/****** Object:  Default [DF_CEES_Test_YTSM]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_YTSM]  DEFAULT ('') FOR [YTSM]
GO
/****** Object:  Default [DF_CEES_Test_SYMS]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_SYMS]  DEFAULT ('') FOR [SYMS]
GO
/****** Object:  Default [DF_CEES_Test_urgent]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_urgent]  DEFAULT ((0)) FOR [urgent]
GO
/****** Object:  Default [DF_CEES_Test_witness]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_witness]  DEFAULT ((0)) FOR [witness]
GO
/****** Object:  Default [DF_CEES_Test_state]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_state]  DEFAULT ('') FOR [state]
GO
/****** Object:  Default [DF_CEES_Test_remarks]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_remarks]  DEFAULT ('') FOR [remarks]
GO
/****** Object:  Default [DF_CEES_Test_edittime]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_edittime]  DEFAULT ('') FOR [edittime]
GO
/****** Object:  Default [DF_CEES_Test_edituser]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_edituser]  DEFAULT ('') FOR [edituser]
GO
/****** Object:  Default [DF_CEES_Test_readmark]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_readmark]  DEFAULT ((0)) FOR [readmark]
GO
/****** Object:  Default [DF_CEES_Test_readtime]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Test] ADD  CONSTRAINT [DF_CEES_Test_readtime]  DEFAULT ('') FOR [readtime]
GO
/****** Object:  Default [DF_CEES_SNJJ_cid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SNJJ] ADD  CONSTRAINT [DF_CEES_SNJJ_cid]  DEFAULT ((0)) FOR [cid]
GO
/****** Object:  Default [DF_CEES_SNJJ_pid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SNJJ] ADD  CONSTRAINT [DF_CEES_SNJJ_pid]  DEFAULT ((0)) FOR [pid]
GO
/****** Object:  Default [DF_CEES_SNJJ_sn]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SNJJ] ADD  CONSTRAINT [DF_CEES_SNJJ_sn]  DEFAULT ((0)) FOR [sn]
GO
/****** Object:  Default [DF_CEES_SNJJ_sn_project]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SNJJ] ADD  CONSTRAINT [DF_CEES_SNJJ_sn_project]  DEFAULT ((0)) FOR [sn_project]
GO
/****** Object:  Default [DF_CEES_SNJJ_sn_test]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SNJJ] ADD  CONSTRAINT [DF_CEES_SNJJ_sn_test]  DEFAULT ((0)) FOR [sn_test]
GO
/****** Object:  Default [DF_CEES_SNJJ_readmark]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SNJJ] ADD  CONSTRAINT [DF_CEES_SNJJ_readmark]  DEFAULT ((0)) FOR [readmark]
GO
/****** Object:  Default [DF_CEES_SNJJ_readtime]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SNJJ] ADD  CONSTRAINT [DF_CEES_SNJJ_readtime]  DEFAULT ('') FOR [readtime]
GO
/****** Object:  Default [DF_CEES_SNJJ_DWDM]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SNJJ] ADD  CONSTRAINT [DF_CEES_SNJJ_DWDM]  DEFAULT ((0)) FOR [DWDM]
GO
/****** Object:  Default [DF_CEES_SNJJ_JSFZRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SNJJ] ADD  CONSTRAINT [DF_CEES_SNJJ_JSFZRBH]  DEFAULT ((0)) FOR [JSFZRBH]
GO
/****** Object:  Default [DF_CEES_SNJJ_XHRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SNJJ] ADD  CONSTRAINT [DF_CEES_SNJJ_XHRBH]  DEFAULT ((0)) FOR [XHRBH]
GO
/****** Object:  Default [DF_CEES_SNJJ_SYRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SNJJ] ADD  CONSTRAINT [DF_CEES_SNJJ_SYRBH]  DEFAULT ((0)) FOR [SYRBH]
GO
/****** Object:  Default [DF_CEES_SNJJ_WTZH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SNJJ] ADD  CONSTRAINT [DF_CEES_SNJJ_WTZH]  DEFAULT ((0)) FOR [WTZH]
GO
/****** Object:  Default [DF_CEES_SNJJ_JLBBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SNJJ] ADD  CONSTRAINT [DF_CEES_SNJJ_JLBBH]  DEFAULT ('') FOR [JLBBH]
GO
/****** Object:  Default [DF_CEES_SNJJ_BGBBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SNJJ] ADD  CONSTRAINT [DF_CEES_SNJJ_BGBBH]  DEFAULT ('') FOR [BGBBH]
GO
/****** Object:  Default [DF_CEES_SJKYQD_cid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_cid]  DEFAULT ((0)) FOR [cid]
GO
/****** Object:  Default [DF_CEES_SJKYQD_pid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_pid]  DEFAULT ((0)) FOR [pid]
GO
/****** Object:  Default [DF_CEES_SJKYQD_ccid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_ccid]  DEFAULT ((0)) FOR [ccid]
GO
/****** Object:  Default [DF_CEES_SJKYQD_sn]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_sn]  DEFAULT ((0)) FOR [sn]
GO
/****** Object:  Default [DF_CEES_SJKYQD_sn_project]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_sn_project]  DEFAULT ((0)) FOR [sn_project]
GO
/****** Object:  Default [DF_CEES_SJKYQD_sn_test]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_sn_test]  DEFAULT ((0)) FOR [sn_test]
GO
/****** Object:  Default [DF_CEES_SJKYQD_readmark]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_readmark]  DEFAULT ((0)) FOR [readmark]
GO
/****** Object:  Default [DF_CEES_SJKYQD_readtime]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_readtime]  DEFAULT ('') FOR [readtime]
GO
/****** Object:  Default [DF_CEES_SJKYQD_KUAISHU]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_KUAISHU]  DEFAULT ((0)) FOR [KUAISHU]
GO
/****** Object:  Default [DF_CEES_SJKYQD_DWDM]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_DWDM]  DEFAULT ((0)) FOR [DWDM]
GO
/****** Object:  Default [DF_CEES_SJKYQD_JSFZRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_JSFZRBH]  DEFAULT ((0)) FOR [JSFZRBH]
GO
/****** Object:  Default [DF_CEES_SJKYQD_XHR]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_XHR]  DEFAULT ((0)) FOR [XHR]
GO
/****** Object:  Default [DF_CEES_SJKYQD_SYRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_SYRBH]  DEFAULT ((0)) FOR [SYRBH]
GO
/****** Object:  Default [DF_CEES_SJKYQD_WTZH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_WTZH]  DEFAULT ((0)) FOR [WTZH]
GO
/****** Object:  Default [DF_CEES_SJKYQD_JLBBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_JLBBH]  DEFAULT ('') FOR [JLBBH]
GO
/****** Object:  Default [DF_CEES_SJKYQD_BGBBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_SJKYQD] ADD  CONSTRAINT [DF_CEES_SJKYQD_BGBBH]  DEFAULT ('') FOR [BGBBH]
GO
/****** Object:  Default [DF_CEES_shouquan_XH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Shouquan] ADD  CONSTRAINT [DF_CEES_shouquan_XH]  DEFAULT ((0)) FOR [XH]
GO
/****** Object:  Default [DF_CEES_shouquan_YDBZ]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Shouquan] ADD  CONSTRAINT [DF_CEES_shouquan_YDBZ]  DEFAULT ((0)) FOR [YDBZ]
GO
/****** Object:  Default [DF_CEES_Project_cid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Project] ADD  CONSTRAINT [DF_CEES_Project_cid]  DEFAULT ((0)) FOR [cid]
GO
/****** Object:  Default [DF_CEES_Project_sn]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Project] ADD  CONSTRAINT [DF_CEES_Project_sn]  DEFAULT ((0)) FOR [sn]
GO
/****** Object:  Default [DF_CEES_Project_bid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Project] ADD  CONSTRAINT [DF_CEES_Project_bid]  DEFAULT ((0)) FOR [bid]
GO
/****** Object:  Default [DF_CEES_Project_state]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Project] ADD  CONSTRAINT [DF_CEES_Project_state]  DEFAULT ((1)) FOR [state]
GO
/****** Object:  Default [DF_CEES_Number_cid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Number] ADD  CONSTRAINT [DF_CEES_Number_cid]  DEFAULT ((0)) FOR [cid]
GO
/****** Object:  Default [DF_CEES_Number_sn]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Number] ADD  CONSTRAINT [DF_CEES_Number_sn]  DEFAULT ((0)) FOR [sn]
GO
/****** Object:  Default [DF_CEES_Number_tablename]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Number] ADD  CONSTRAINT [DF_CEES_Number_tablename]  DEFAULT ('') FOR [tablename]
GO
/****** Object:  Default [DF_CEES_Number_fieldname]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Number] ADD  CONSTRAINT [DF_CEES_Number_fieldname]  DEFAULT ('') FOR [fieldname]
GO
/****** Object:  Default [DF_CEES_Number_yearfront]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Number] ADD  CONSTRAINT [DF_CEES_Number_yearfront]  DEFAULT ('') FOR [yearfront]
GO
/****** Object:  Default [DF_CEES_Number_yearafter]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Number] ADD  CONSTRAINT [DF_CEES_Number_yearafter]  DEFAULT ('') FOR [yearafter]
GO
/****** Object:  Default [DF_CEES_Number_numberbegin]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Number] ADD  CONSTRAINT [DF_CEES_Number_numberbegin]  DEFAULT ((0)) FOR [numberbegin]
GO
/****** Object:  Default [DF_CEES_Number_numberlength]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Number] ADD  CONSTRAINT [DF_CEES_Number_numberlength]  DEFAULT ((0)) FOR [numberlength]
GO
/****** Object:  Default [DF_CEES_LQMXE_cid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_LQMXE] ADD  CONSTRAINT [DF_CEES_LQMXE_cid]  DEFAULT ((0)) FOR [cid]
GO
/****** Object:  Default [DF_CEES_LQMXE_pid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_LQMXE] ADD  CONSTRAINT [DF_CEES_LQMXE_pid]  DEFAULT ((0)) FOR [pid]
GO
/****** Object:  Default [DF_CEES_LQMXE_sn]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_LQMXE] ADD  CONSTRAINT [DF_CEES_LQMXE_sn]  DEFAULT ((0)) FOR [sn]
GO
/****** Object:  Default [DF_CEES_LQMXE_sn_project]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_LQMXE] ADD  CONSTRAINT [DF_CEES_LQMXE_sn_project]  DEFAULT ((0)) FOR [sn_project]
GO
/****** Object:  Default [DF_CEES_LQMXE_sn_test]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_LQMXE] ADD  CONSTRAINT [DF_CEES_LQMXE_sn_test]  DEFAULT ((0)) FOR [sn_test]
GO
/****** Object:  Default [DF_CEES_LQMXE_readmark]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_LQMXE] ADD  CONSTRAINT [DF_CEES_LQMXE_readmark]  DEFAULT ((0)) FOR [readmark]
GO
/****** Object:  Default [DF_CEES_LQMXE_readtime]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_LQMXE] ADD  CONSTRAINT [DF_CEES_LQMXE_readtime]  DEFAULT ('') FOR [readtime]
GO
/****** Object:  Default [DF_CEES_LQMXE_DWDM]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_LQMXE] ADD  CONSTRAINT [DF_CEES_LQMXE_DWDM]  DEFAULT ((0)) FOR [DWDM]
GO
/****** Object:  Default [DF_CEES_LQMXE_JSFZRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_LQMXE] ADD  CONSTRAINT [DF_CEES_LQMXE_JSFZRBH]  DEFAULT ((0)) FOR [JSFZRBH]
GO
/****** Object:  Default [DF_CEES_LQMXE_XHRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_LQMXE] ADD  CONSTRAINT [DF_CEES_LQMXE_XHRBH]  DEFAULT ((0)) FOR [XHRBH]
GO
/****** Object:  Default [DF_CEES_LQMXE_SYRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_LQMXE] ADD  CONSTRAINT [DF_CEES_LQMXE_SYRBH]  DEFAULT ((0)) FOR [SYRBH]
GO
/****** Object:  Default [DF_CEES_LQMXE_WTZH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_LQMXE] ADD  CONSTRAINT [DF_CEES_LQMXE_WTZH]  DEFAULT ((0)) FOR [WTZH]
GO
/****** Object:  Default [DF_CEES_LQMXE_JLBBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_LQMXE] ADD  CONSTRAINT [DF_CEES_LQMXE_JLBBH]  DEFAULT ('') FOR [JLBBH]
GO
/****** Object:  Default [DF_CEES_LQMXE_BGBBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_LQMXE] ADD  CONSTRAINT [DF_CEES_LQMXE_BGBBH]  DEFAULT ('') FOR [BGBBH]
GO
/****** Object:  Default [DF_CEES_Hntkz_cid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntkz] ADD  CONSTRAINT [DF_CEES_Hntkz_cid]  DEFAULT ((0)) FOR [cid]
GO
/****** Object:  Default [DF_CEES_Hntkz_pid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntkz] ADD  CONSTRAINT [DF_CEES_Hntkz_pid]  DEFAULT ((0)) FOR [pid]
GO
/****** Object:  Default [DF_CEES_Hntkz_ccid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntkz] ADD  CONSTRAINT [DF_CEES_Hntkz_ccid]  DEFAULT ((0)) FOR [ccid]
GO
/****** Object:  Default [DF_CEES_Hntkz_sn]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntkz] ADD  CONSTRAINT [DF_CEES_Hntkz_sn]  DEFAULT ((0)) FOR [sn]
GO
/****** Object:  Default [DF_CEES_Hntkz_sn_project]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntkz] ADD  CONSTRAINT [DF_CEES_Hntkz_sn_project]  DEFAULT ((0)) FOR [sn_project]
GO
/****** Object:  Default [DF_CEES_Hntkz_sn_test]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntkz] ADD  CONSTRAINT [DF_CEES_Hntkz_sn_test]  DEFAULT ((0)) FOR [sn_test]
GO
/****** Object:  Default [DF_CEES_Hntkz_readmark]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntkz] ADD  CONSTRAINT [DF_CEES_Hntkz_readmark]  DEFAULT ((0)) FOR [readmark]
GO
/****** Object:  Default [DF_CEES_Hntkz_readtime]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntkz] ADD  CONSTRAINT [DF_CEES_Hntkz_readtime]  DEFAULT ('') FOR [readtime]
GO
/****** Object:  Default [DF_CEES_Hntkz_DWDM]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntkz] ADD  CONSTRAINT [DF_CEES_Hntkz_DWDM]  DEFAULT ((0)) FOR [DWDM]
GO
/****** Object:  Default [DF_CEES_Hntkz_JSFZRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntkz] ADD  CONSTRAINT [DF_CEES_Hntkz_JSFZRBH]  DEFAULT ((0)) FOR [JSFZRBH]
GO
/****** Object:  Default [DF_CEES_Hntkz_XHRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntkz] ADD  CONSTRAINT [DF_CEES_Hntkz_XHRBH]  DEFAULT ((0)) FOR [XHRBH]
GO
/****** Object:  Default [DF_CEES_Hntkz_SYRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntkz] ADD  CONSTRAINT [DF_CEES_Hntkz_SYRBH]  DEFAULT ((0)) FOR [SYRBH]
GO
/****** Object:  Default [DF_CEES_Hntkz_WTZH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntkz] ADD  CONSTRAINT [DF_CEES_Hntkz_WTZH]  DEFAULT ((0)) FOR [WTZH]
GO
/****** Object:  Default [DF_SY_HNTKZ_JLBBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntkz] ADD  CONSTRAINT [DF_SY_HNTKZ_JLBBH]  DEFAULT ('') FOR [JLBBH]
GO
/****** Object:  Default [DF_SY_HNTKZ_BGBBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntkz] ADD  CONSTRAINT [DF_SY_HNTKZ_BGBBH]  DEFAULT ('') FOR [BGBBH]
GO
/****** Object:  Default [DF_CEES_Hntky_cid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntky] ADD  CONSTRAINT [DF_CEES_Hntky_cid]  DEFAULT ((0)) FOR [cid]
GO
/****** Object:  Default [DF_CEES_Hntky_pid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntky] ADD  CONSTRAINT [DF_CEES_Hntky_pid]  DEFAULT ((0)) FOR [pid]
GO
/****** Object:  Default [DF_CEES_Hntky_ccid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntky] ADD  CONSTRAINT [DF_CEES_Hntky_ccid]  DEFAULT ((0)) FOR [ccid]
GO
/****** Object:  Default [DF_CEES_Hntky_sn]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntky] ADD  CONSTRAINT [DF_CEES_Hntky_sn]  DEFAULT ((0)) FOR [sn]
GO
/****** Object:  Default [DF_CEES_Hntky_sn_project]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntky] ADD  CONSTRAINT [DF_CEES_Hntky_sn_project]  DEFAULT ((0)) FOR [sn_project]
GO
/****** Object:  Default [DF_CEES_Hntky_sn_test]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntky] ADD  CONSTRAINT [DF_CEES_Hntky_sn_test]  DEFAULT ((0)) FOR [sn_test]
GO
/****** Object:  Default [DF_CEES_Hntky_readmark]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntky] ADD  CONSTRAINT [DF_CEES_Hntky_readmark]  DEFAULT ((0)) FOR [readmark]
GO
/****** Object:  Default [DF_CEES_Hntky_readtime]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntky] ADD  CONSTRAINT [DF_CEES_Hntky_readtime]  DEFAULT ('') FOR [readtime]
GO
/****** Object:  Default [DF_CEES_Hntky_DWDM]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntky] ADD  CONSTRAINT [DF_CEES_Hntky_DWDM]  DEFAULT ((0)) FOR [DWDM]
GO
/****** Object:  Default [DF_CEES_Hntky_JSFZRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntky] ADD  CONSTRAINT [DF_CEES_Hntky_JSFZRBH]  DEFAULT ((0)) FOR [JSFZRBH]
GO
/****** Object:  Default [DF_CEES_Hntky_XHRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntky] ADD  CONSTRAINT [DF_CEES_Hntky_XHRBH]  DEFAULT ((0)) FOR [XHRBH]
GO
/****** Object:  Default [DF_CEES_Hntky_SYRBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntky] ADD  CONSTRAINT [DF_CEES_Hntky_SYRBH]  DEFAULT ((0)) FOR [SYRBH]
GO
/****** Object:  Default [DF_CEES_Hntky_WTZH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Hntky] ADD  CONSTRAINT [DF_CEES_Hntky_WTZH]  DEFAULT ((0)) FOR [WTZH]
GO
/****** Object:  Default [DF_CEES_GJYC_cid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJYC] ADD  CONSTRAINT [DF_CEES_GJYC_cid]  DEFAULT ((0)) FOR [cid]
GO
/****** Object:  Default [DF_CEES_GJYC_pid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJYC] ADD  CONSTRAINT [DF_CEES_GJYC_pid]  DEFAULT ((0)) FOR [pid]
GO
/****** Object:  Default [DF_CEES_GJYC_sn]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJYC] ADD  CONSTRAINT [DF_CEES_GJYC_sn]  DEFAULT ((0)) FOR [sn]
GO
/****** Object:  Default [DF_CEES_GJYC_sn_project]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJYC] ADD  CONSTRAINT [DF_CEES_GJYC_sn_project]  DEFAULT ((0)) FOR [sn_project]
GO
/****** Object:  Default [DF_CEES_GJYC_sn_test]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJYC] ADD  CONSTRAINT [DF_CEES_GJYC_sn_test]  DEFAULT ((0)) FOR [sn_test]
GO
/****** Object:  Default [DF_CEES_GJYC_readmark]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJYC] ADD  CONSTRAINT [DF_CEES_GJYC_readmark]  DEFAULT ((0)) FOR [readmark]
GO
/****** Object:  Default [DF_CEES_GJYC_readtime]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJYC] ADD  CONSTRAINT [DF_CEES_GJYC_readtime]  DEFAULT ('') FOR [readtime]
GO
/****** Object:  Default [DF_CEES_GJYC_JLBBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJYC] ADD  CONSTRAINT [DF_CEES_GJYC_JLBBH]  DEFAULT ('') FOR [JLBBH]
GO
/****** Object:  Default [DF_CEES_GJYC_BGBBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJYC] ADD  CONSTRAINT [DF_CEES_GJYC_BGBBH]  DEFAULT ('') FOR [BGBBH]
GO
/****** Object:  Default [DF_CEES_GJHJ_cid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJHJ] ADD  CONSTRAINT [DF_CEES_GJHJ_cid]  DEFAULT ((0)) FOR [cid]
GO
/****** Object:  Default [DF_CEES_GJHJ_pid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJHJ] ADD  CONSTRAINT [DF_CEES_GJHJ_pid]  DEFAULT ((0)) FOR [pid]
GO
/****** Object:  Default [DF_CEES_GJHJ_sn]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJHJ] ADD  CONSTRAINT [DF_CEES_GJHJ_sn]  DEFAULT ((0)) FOR [sn]
GO
/****** Object:  Default [DF_CEES_GJHJ_sn_project]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJHJ] ADD  CONSTRAINT [DF_CEES_GJHJ_sn_project]  DEFAULT ((0)) FOR [sn_project]
GO
/****** Object:  Default [DF_CEES_GJHJ_sn_test]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJHJ] ADD  CONSTRAINT [DF_CEES_GJHJ_sn_test]  DEFAULT ((0)) FOR [sn_test]
GO
/****** Object:  Default [DF_CEES_GJHJ_readmark]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJHJ] ADD  CONSTRAINT [DF_CEES_GJHJ_readmark]  DEFAULT ((0)) FOR [readmark]
GO
/****** Object:  Default [DF_CEES_GJHJ_readtime]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJHJ] ADD  CONSTRAINT [DF_CEES_GJHJ_readtime]  DEFAULT ('') FOR [readtime]
GO
/****** Object:  Default [DF_CEES_GJHJ_JLBBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJHJ] ADD  CONSTRAINT [DF_CEES_GJHJ_JLBBH]  DEFAULT ('') FOR [JLBBH]
GO
/****** Object:  Default [DF_CEES_GJHJ_BGBBH]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_GJHJ] ADD  CONSTRAINT [DF_CEES_GJHJ_BGBBH]  DEFAULT ('') FOR [BGBBH]
GO
/****** Object:  Default [DF_CEES_Organization_sn]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Construction] ADD  CONSTRAINT [DF_CEES_Organization_sn]  DEFAULT ((0)) FOR [sn]
GO
/****** Object:  Default [DF_CEES_Organization_state]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Construction] ADD  CONSTRAINT [DF_CEES_Organization_state]  DEFAULT ((1)) FOR [state]
GO
/****** Object:  Default [DF_CEES_Concrete_cid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Concrete] ADD  CONSTRAINT [DF_CEES_Concrete_cid]  DEFAULT ((0)) FOR [cid]
GO
/****** Object:  Default [DF_CEES_Concrete_sn]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Concrete] ADD  CONSTRAINT [DF_CEES_Concrete_sn]  DEFAULT ((0)) FOR [sn]
GO
/****** Object:  Default [DF_CEES_Concrete_state]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Concrete] ADD  CONSTRAINT [DF_CEES_Concrete_state]  DEFAULT ((1)) FOR [state]
GO
/****** Object:  Default [DF_CEES_Build_cid]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Build] ADD  CONSTRAINT [DF_CEES_Build_cid]  DEFAULT ((0)) FOR [cid]
GO
/****** Object:  Default [DF_CEES_Build_sn]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Build] ADD  CONSTRAINT [DF_CEES_Build_sn]  DEFAULT ((0)) FOR [sn]
GO
/****** Object:  Default [DF_CEES_Build_state]    Script Date: 07/17/2018 07:39:16 ******/
ALTER TABLE [dbo].[CEES_Build] ADD  CONSTRAINT [DF_CEES_Build_state]  DEFAULT ((1)) FOR [state]
GO
