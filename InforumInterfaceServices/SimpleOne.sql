USE [master]
GO
/****** Object:  Database [SimpleOne]    Script Date: 9/3/2018 7:18:22 PM ******/
CREATE DATABASE [SimpleOne]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SimpleOne', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SimpleOne.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SimpleOne_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SimpleOne_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SimpleOne] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SimpleOne].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SimpleOne] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SimpleOne] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SimpleOne] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SimpleOne] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SimpleOne] SET ARITHABORT OFF 
GO
ALTER DATABASE [SimpleOne] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SimpleOne] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SimpleOne] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SimpleOne] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SimpleOne] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SimpleOne] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SimpleOne] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SimpleOne] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SimpleOne] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SimpleOne] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SimpleOne] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SimpleOne] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SimpleOne] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SimpleOne] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SimpleOne] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SimpleOne] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SimpleOne] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SimpleOne] SET RECOVERY FULL 
GO
ALTER DATABASE [SimpleOne] SET  MULTI_USER 
GO
ALTER DATABASE [SimpleOne] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SimpleOne] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SimpleOne] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SimpleOne] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SimpleOne] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SimpleOne] SET QUERY_STORE = OFF
GO
USE [SimpleOne]
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
USE [SimpleOne]
GO
/****** Object:  Table [dbo].[ARTICULOS]    Script Date: 9/3/2018 7:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARTICULOS](
	[ItemCode] [nvarchar](20) NOT NULL,
	[ItemName] [nvarchar](100) NULL,
	[FrgnName] [nvarchar](100) NULL,
	[ItmsGrpCod] [nvarchar](50) NULL,
	[AvgPrice] [numeric](18, 6) NULL,
	[U_TipoA2] [nvarchar](50) NULL,
	[U_CodigoAnterior] [nvarchar](50) NULL,
	[U_SubGrupo] [nvarchar](50) NULL,
	[U_Temporada] [nvarchar](50) NULL,
	[U_TipoCompra] [nvarchar](50) NULL,
	[U_Decorado] [nvarchar](50) NULL,
	[U_Familia] [nvarchar](50) NULL,
	[U_CatFamilia] [nvarchar](50) NULL,
	[U_Nacionalidad] [nvarchar](50) NULL,
	[U_Distintivo] [nvarchar](50) NULL,
	[U_Linea] [nvarchar](50) NULL,
	[U_Rango] [nvarchar](50) NULL,
	[U_Piezas] [nvarchar](50) NULL,
	[U_Tamanio] [nvarchar](50) NULL,
	[U_Dimensional] [nvarchar](50) NULL,
	[U_Oferta] [nvarchar](50) NULL,
	[U_Hoja] [nvarchar](50) NULL,
	[U_Proveedor] [nvarchar](10) NULL,
	[U_FechaCompra] [date] NULL,
	[U_UltCompra] [date] NULL,
	[U_Precio] [numeric](18, 6) NULL,
	[U_Ofertado] [nvarchar](50) NULL,
	[U_PreOferta] [numeric](18, 6) NULL,
	[U_Neto] [nvarchar](10) NULL,
	[U_NetoEsp] [numeric](18, 6) NULL,
	[U_Gasto] [numeric](18, 6) NULL,
	[U_Estado] [nvarchar](10) NULL,
	[U_NetoFin] [numeric](18, 6) NULL,
	[U_IdMarca] [nvarchar](50) NULL,
	[U_Catalogo] [nvarchar](10) NULL,
	[Procesado] [smallint] NULL,
	[Cod_Empresa] [smallint] NULL,
 CONSTRAINT [PK_ARTICULOS] PRIMARY KEY CLUSTERED 
(
	[ItemCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCl_D]    Script Date: 9/3/2018 7:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCl_D](
	[Cod_FactCl_H] [int] NOT NULL,
	[Cod_FactCl_D] [int] NOT NULL,
	[U_FacSerie] [nvarchar](100) NOT NULL,
	[BPLID] [int] NOT NULL,
	[SAPSerie] [nvarchar](10) NOT NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Dscription] [nvarchar](200) NULL,
	[WhsCode] [nvarchar](50) NULL,
	[Quantity] [decimal](18, 6) NULL,
	[PriceAftVat] [decimal](18, 6) NULL,
	[TaxCode] [nvarchar](50) NULL,
	[AcctCode] [nvarchar](50) NULL,
	[OcrCode] [nvarchar](50) NULL,
	[OcrCode2] [nvarchar](50) NULL,
	[OcrCode3] [nvarchar](50) NULL,
	[OcrCode4] [nvarchar](50) NULL,
	[UoMEntry] [nvarchar](10) NULL,
	[DiscPrcnt] [numeric](18, 6) NULL,
	[Porcent_Comision] [numeric](18, 6) NULL,
	[Monto_Comision] [numeric](18, 6) NULL,
 CONSTRAINT [PK_Factur_D] PRIMARY KEY CLUSTERED 
(
	[Cod_FactCl_H] ASC,
	[Cod_FactCl_D] ASC,
	[U_FacSerie] ASC,
	[BPLID] ASC,
	[SAPSerie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCl_H]    Script Date: 9/3/2018 7:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCl_H](
	[Cod_FactCl_H] [int] NOT NULL,
	[BPLID] [int] NOT NULL,
	[DocType] [char](1) NULL,
	[CardCode] [nvarchar](50) NOT NULL,
	[CardName] [nvarchar](200) NOT NULL,
	[SAPSerie] [nvarchar](10) NOT NULL,
	[U_TipoDoc] [nvarchar](11) NOT NULL,
	[DocDate] [date] NOT NULL,
	[DocDueDate] [date] NOT NULL,
	[TaxDate] [date] NOT NULL,
	[NumAtCard] [nvarchar](50) NULL,
	[SlpCode] [nvarchar](50) NULL,
	[U_FacSerie] [nvarchar](100) NOT NULL,
	[U_FacNum] [nvarchar](100) NULL,
	[U_FacNit] [nvarchar](100) NULL,
	[U_CAE] [nvarchar](300) NULL,
	[Procesado] [smallint] NULL,
	[IsICT] [smallint] NULL,
	[U_FacNom] [nvarchar](100) NULL,
	[U_FacFecha] [date] NULL,
	[U_Tienda] [nvarchar](100) NULL,
	[U_Caja] [nvarchar](100) NULL,
	[U_Cajero] [nvarchar](100) NULL,
	[DocCur] [nvarchar](50) NULL,
	[DocRate] [numeric](18, 6) NULL,
	[Comments] [text] NULL,
	[Pago_CuentaCaja] [nvarchar](50) NULL,
	[Pago_CentroCosto] [nvarchar](50) NULL,
	[Cod_Direccion] [nvarchar](100) NULL,
	[Descrip_Direccion] [nvarchar](100) NULL,
	[Fecha_Grabacion] [date] NULL,
	[Porcent_Comision] [numeric](18, 6) NULL,
	[Monto_Comision] [numeric](18, 6) NULL,
	[FecHor_Grabacion] [nvarchar](50) NULL,
	[GroupNum] [nvarchar](10) NULL,
	[U_Llave] [nvarchar](100) NULL,
	[DocNum] [nvarchar](50) NULL,
	[Handwrtten] [nvarchar](10) NULL,
	[Cod_Empresa] [int] NULL,
 CONSTRAINT [PK_Factur_H] PRIMARY KEY CLUSTERED 
(
	[Cod_FactCl_H] ASC,
	[U_FacSerie] ASC,
	[BPLID] ASC,
	[SAPSerie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCl_S]    Script Date: 9/3/2018 7:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCl_S](
	[Cod_FactCl_H] [int] NOT NULL,
	[ItemCode] [nvarchar](50) NOT NULL,
	[BatchID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FactCl_S] PRIMARY KEY CLUSTERED 
(
	[Cod_FactCl_H] ASC,
	[BatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCLRes_D]    Script Date: 9/3/2018 7:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCLRes_D](
	[Cod_FactCLRes_H] [int] NOT NULL,
	[Cod_FactCLRes_D] [int] NOT NULL,
	[U_FacSerie] [nvarchar](100) NOT NULL,
	[BPLID] [int] NOT NULL,
	[SAPSerie] [nvarchar](10) NOT NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Dscription] [nvarchar](200) NULL,
	[WhsCode] [nvarchar](50) NULL,
	[Quantity] [decimal](18, 6) NULL,
	[PriceAftVat] [decimal](18, 6) NULL,
	[TaxCode] [nvarchar](50) NULL,
	[AcctCode] [nvarchar](50) NULL,
	[OcrCode] [nvarchar](50) NULL,
	[OcrCode2] [nvarchar](50) NULL,
	[OcrCode3] [nvarchar](50) NULL,
	[OcrCode4] [nvarchar](50) NULL,
	[UoMEntry] [nvarchar](10) NULL,
	[DiscPrcnt] [numeric](18, 6) NULL,
 CONSTRAINT [PK_FactCLRes_D] PRIMARY KEY CLUSTERED 
(
	[Cod_FactCLRes_H] ASC,
	[Cod_FactCLRes_D] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCLRes_H]    Script Date: 9/3/2018 7:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCLRes_H](
	[Cod_FactCLRes_H] [int] NOT NULL,
	[BPLID] [int] NOT NULL,
	[DocType] [char](1) NULL,
	[CardCode] [nvarchar](50) NOT NULL,
	[CardName] [nvarchar](200) NOT NULL,
	[SAPSerie] [nvarchar](10) NOT NULL,
	[U_TipoDoc] [nvarchar](11) NOT NULL,
	[DocDate] [date] NOT NULL,
	[DocDueDate] [date] NOT NULL,
	[TaxDate] [date] NOT NULL,
	[NumAtCard] [nvarchar](50) NULL,
	[SlpCode] [nvarchar](50) NULL,
	[U_FacSerie] [nvarchar](100) NOT NULL,
	[U_FacNum] [nvarchar](100) NULL,
	[U_FacNit] [nvarchar](100) NULL,
	[U_CAE] [nvarchar](300) NULL,
	[Procesado] [smallint] NULL,
	[IsICT] [smallint] NULL,
	[U_FacNom] [nvarchar](100) NULL,
	[U_FacFecha] [date] NULL,
	[U_Tienda] [nvarchar](100) NULL,
	[U_Caja] [nvarchar](100) NULL,
	[U_Cajero] [nvarchar](100) NULL,
	[DocCur] [nvarchar](50) NULL,
	[DocRate] [numeric](18, 6) NULL,
	[Comments] [text] NULL,
	[Pago_CuentaCaja] [nvarchar](50) NULL,
	[Pago_CentroCosto] [nvarchar](50) NULL,
	[Cod_Direccion] [nvarchar](100) NULL,
	[Descrip_Direccion] [nvarchar](100) NULL,
	[Fecha_Grabacion] [date] NULL,
	[Porcent_Comision] [numeric](18, 6) NULL,
	[Monto_Comision] [numeric](18, 6) NULL,
	[FecHor_Grabacion] [nvarchar](50) NULL,
	[GroupNum] [nvarchar](10) NULL,
	[U_Llave] [nvarchar](100) NULL,
	[DocNum] [nvarchar](50) NULL,
	[Handwrtten] [nvarchar](10) NULL,
	[Cod_Empresa] [int] NULL,
 CONSTRAINT [PK_FactCLRes_H] PRIMARY KEY CLUSTERED 
(
	[Cod_FactCLRes_H] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InArticulo]    Script Date: 9/3/2018 7:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InArticulo](
	[Codigo] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[CodeDepartamento] [int] NULL,
	[NameDepartamento] [nvarchar](50) NULL,
	[PrecioMinimo] [numeric](18, 6) NULL,
	[Garantia] [nvarchar](50) NULL,
	[U_FAMILIA] [nvarchar](50) NULL,
	[U_SUBFAMILIA] [nvarchar](50) NULL,
	[Procesado] [smallint] NULL,
 CONSTRAINT [PK_InArticulo] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InCotizacion_D]    Script Date: 9/3/2018 7:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InCotizacion_D](
	[DocNum] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[ItemCode] [nvarchar](50) NULL,
	[ItemName] [nvarchar](100) NULL,
	[Quantity] [numeric](18, 6) NULL,
	[TaxCode] [nvarchar](50) NULL,
	[Price] [numeric](18, 6) NULL,
 CONSTRAINT [PK_InCotizacion_D] PRIMARY KEY CLUSTERED 
(
	[DocNum] ASC,
	[LineNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InCotizacion_H]    Script Date: 9/3/2018 7:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InCotizacion_H](
	[DocNum] [int] NOT NULL,
	[CardCode] [nvarchar](50) NULL,
	[CardName] [nvarchar](100) NULL,
	[Serie] [int] NULL,
	[SerieName] [nvarchar](50) NULL,
	[DocDate] [date] NULL,
	[DocDueDate] [date] NULL,
	[TaxDate] [date] NULL,
	[Procesado] [smallint] NULL,
 CONSTRAINT [PK_InCotizacion_H] PRIMARY KEY CLUSTERED 
(
	[DocNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InInv_D]    Script Date: 9/3/2018 7:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InInv_D](
	[DocNum] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Dscription] [nvarchar](200) NULL,
	[WhsCode] [nvarchar](50) NULL,
	[AcctCode] [nvarchar](50) NULL,
	[Quantity] [decimal](18, 6) NULL,
	[PriceUnit] [decimal](18, 6) NULL,
	[Price] [decimal](18, 6) NULL,
	[Procesado] [smallint] NULL,
 CONSTRAINT [PK_InInv_D] PRIMARY KEY CLUSTERED 
(
	[DocNum] ASC,
	[LineNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InInv_H]    Script Date: 9/3/2018 7:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InInv_H](
	[DocNum] [int] NOT NULL,
	[Series] [nvarchar](10) NULL,
	[SeriesName] [nvarchar](10) NULL,
	[DocDate] [date] NOT NULL,
	[TaxDate] [date] NOT NULL,
	[Referencia] [nvarchar](11) NULL,
	[Comments] [text] NULL,
	[Procesado] [smallint] NULL,
 CONSTRAINT [PK_InInv_H] PRIMARY KEY CLUSTERED 
(
	[DocNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InInv_S]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InInv_S](
	[DocNum] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[ItemCode] [nvarchar](50) NOT NULL,
	[Dscription] [nvarchar](200) NULL,
	[SerieFabricante] [nvarchar](100) NULL,
	[NumeroSerie] [nvarchar](100) NOT NULL,
	[SerieLote] [nvarchar](100) NULL,
	[FechaExp] [date] NULL,
	[FechaManu] [date] NULL,
	[FechaAdmi] [date] NULL,
	[FechaIni] [date] NULL,
	[FechaEnd] [date] NULL,
	[Procesado] [smallint] NULL,
 CONSTRAINT [PK_InInv_S] PRIMARY KEY CLUSTERED 
(
	[DocNum] ASC,
	[LineNum] ASC,
	[ItemCode] ASC,
	[NumeroSerie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InInvenario]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InInvenario](
	[WhsCode] [nvarchar](50) NULL,
	[WhsName] [nvarchar](50) NULL,
	[ItemCode] [nvarchar](50) NULL,
	[ItemName] [nvarchar](100) NULL,
	[Disponible] [numeric](18, 6) NULL,
	[Procesado] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InListaKit_D]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InListaKit_D](
	[Cod_Kit_H] [nvarchar](50) NOT NULL,
	[Articulo] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](100) NULL,
	[Cantidad] [numeric](18, 6) NULL,
	[Almacen] [nvarchar](50) NULL,
	[Procesado] [smallint] NULL,
 CONSTRAINT [PK_InLista_D] PRIMARY KEY CLUSTERED 
(
	[Cod_Kit_H] ASC,
	[Articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InListaKit_H]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InListaKit_H](
	[Cod_Kit_H] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](100) NULL,
	[Cantidad] [numeric](18, 6) NULL,
	[Almancen] [nvarchar](50) NULL,
	[Procesado] [smallint] NULL,
 CONSTRAINT [PK_InListaKit_H] PRIMARY KEY CLUSTERED 
(
	[Cod_Kit_H] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InListPrice]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InListPrice](
	[ItemCode] [nvarchar](50) NOT NULL,
	[PriceList] [int] NOT NULL,
	[ListName] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 6) NOT NULL,
	[Procesado] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InMerca_D]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InMerca_D](
	[DocNum] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Dscription] [nvarchar](100) NULL,
	[Quantity] [numeric](18, 6) NULL,
	[Almacen] [nvarchar](50) NULL,
	[Precio] [numeric](18, 6) NULL,
	[Procesado] [smallint] NULL,
 CONSTRAINT [PK_InMerca_D] PRIMARY KEY CLUSTERED 
(
	[DocNum] ASC,
	[LineNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InMerca_H]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InMerca_H](
	[DocNum] [int] NOT NULL,
	[Serie] [int] NULL,
	[SerieName] [nvarchar](50) NULL,
	[CardCode] [nvarchar](50) NULL,
	[CardName] [nvarchar](100) NULL,
	[DocDate] [date] NULL,
	[DocDueDate] [date] NULL,
	[TaxDate] [date] NULL,
	[Procesado] [smallint] NULL,
 CONSTRAINT [PK_InMerca_H] PRIMARY KEY CLUSTERED 
(
	[DocNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InMerca_S]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InMerca_S](
	[DocNum] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[ItemCode] [nvarchar](50) NOT NULL,
	[SerieFabricante] [nvarchar](100) NULL,
	[NumeroSerie] [nvarchar](100) NOT NULL,
	[SerieLote] [nvarchar](100) NULL,
	[FechaVencimiento] [date] NULL,
	[FechaFabricacion] [date] NULL,
	[FechaAdmision] [date] NULL,
	[FechaIniGarantia] [date] NULL,
	[FechaFinGarantia] [date] NULL,
	[Procesado] [smallint] NULL,
 CONSTRAINT [PK_InMerca_S] PRIMARY KEY CLUSTERED 
(
	[DocNum] ASC,
	[LineNum] ASC,
	[ItemCode] ASC,
	[NumeroSerie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InSocio]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InSocio](
	[Codigo] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Alias] [nvarchar](100) NULL,
	[NIT] [nvarchar](50) NULL,
	[Direccion] [nvarchar](100) NULL,
	[Telefono1] [nvarchar](50) NULL,
	[Telefono2] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[SaldoCuenta] [numeric](18, 6) NULL,
	[LimiteCredito] [numeric](18, 6) NULL,
	[CreditoDisponible] [numeric](18, 6) NULL,
	[Procesado] [smallint] NULL,
 CONSTRAINT [PK_InSocio] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InTraslados_D]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InTraslados_D](
	[DocNum] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[ItemCode] [nvarchar](50) NULL,
	[ItemName] [nvarchar](100) NULL,
	[Quantity] [numeric](18, 6) NULL,
	[WhsOrigen] [nvarchar](50) NULL,
	[WhsDestino] [nvarchar](50) NULL,
	[SerieFabricante] [nvarchar](100) NULL,
	[NumeroSerie] [nvarchar](100) NOT NULL,
	[SerieLote] [nvarchar](100) NULL,
	[Procesado] [smallint] NULL,
 CONSTRAINT [PK_InTraslados_D] PRIMARY KEY CLUSTERED 
(
	[DocNum] ASC,
	[LineNum] ASC,
	[NumeroSerie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InTraslados_H]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InTraslados_H](
	[DocNum] [int] NOT NULL,
	[CardCode] [nvarchar](50) NULL,
	[CardName] [nvarchar](100) NULL,
	[Serie] [int] NULL,
	[SeriesName] [nvarchar](50) NULL,
	[DocDate] [date] NULL,
	[TaxDate] [date] NULL,
 CONSTRAINT [PK_InTraslados_H] PRIMARY KEY CLUSTERED 
(
	[DocNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jazzUsrs]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jazzUsrs](
	[usuario] [varchar](100) NOT NULL,
	[clave] [varchar](100) NOT NULL,
	[activo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lobyUsrs]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lobyUsrs](
	[usuario] [varchar](100) NOT NULL,
	[clave] [varchar](100) NOT NULL,
	[activo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG](
	[CompanyName] [nvarchar](50) NOT NULL,
	[Filtro] [nvarchar](100) NOT NULL,
	[ID] [nvarchar](100) NOT NULL,
	[Tipo] [nvarchar](25) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Mensaje] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_LOG] PRIMARY KEY CLUSTERED 
(
	[CompanyName] ASC,
	[Filtro] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotCre_D]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotCre_D](
	[Cod_NotCre_H] [int] NOT NULL,
	[Cod_NotCre_D] [int] NOT NULL,
	[SAPSerie] [nvarchar](10) NOT NULL,
	[BPLID] [int] NOT NULL,
	[U_FacSerie] [nvarchar](100) NOT NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Dscription] [nvarchar](200) NULL,
	[WhsCode] [nvarchar](50) NULL,
	[Quantity] [decimal](18, 6) NULL,
	[PriceAftVat] [decimal](18, 6) NULL,
	[TaxCode] [nvarchar](50) NULL,
	[AcctCode] [nvarchar](50) NULL,
	[OcrCode] [nvarchar](50) NULL,
	[OcrCode2] [nvarchar](50) NULL,
	[OcrCode3] [nvarchar](50) NULL,
	[Price] [decimal](18, 6) NULL,
	[DiscPrcnt] [numeric](18, 6) NULL,
	[U_TipoDoc] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_NotCre_D] PRIMARY KEY CLUSTERED 
(
	[Cod_NotCre_H] ASC,
	[Cod_NotCre_D] ASC,
	[U_FacSerie] ASC,
	[BPLID] ASC,
	[SAPSerie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotCre_H]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotCre_H](
	[Cod_NotCre_H] [int] NOT NULL,
	[DocType] [char](1) NULL,
	[BPLID] [int] NOT NULL,
	[SAPSerie] [nvarchar](10) NOT NULL,
	[U_TipoDoc] [nvarchar](11) NOT NULL,
	[U_FacSerie] [nvarchar](100) NOT NULL,
	[CardCode] [nvarchar](50) NOT NULL,
	[CardName] [nvarchar](200) NULL,
	[DocDate] [date] NOT NULL,
	[DocDueDate] [date] NULL,
	[NumAtCard] [nvarchar](50) NULL,
	[SlpCode] [nvarchar](50) NULL,
	[U_FacNum] [nvarchar](100) NULL,
	[U_FacNit] [nvarchar](100) NULL,
	[U_CAE] [nvarchar](300) NULL,
	[Procesado] [smallint] NULL,
	[U_FacNom] [nvarchar](100) NULL,
	[U_FacFecha] [date] NULL,
	[U_Tienda] [nvarchar](100) NULL,
	[U_Caja] [nvarchar](100) NULL,
	[U_Cajero] [nvarchar](100) NULL,
	[DocCur] [nvarchar](50) NULL,
	[Comments] [text] NULL,
	[TaxDate] [date] NULL,
	[DocNum] [nvarchar](50) NULL,
	[Handwrtten] [nvarchar](10) NULL,
	[Cod_Empresa] [int] NULL,
 CONSTRAINT [PK_NotCre_H] PRIMARY KEY CLUSTERED 
(
	[Cod_NotCre_H] ASC,
	[U_FacSerie] ASC,
	[BPLID] ASC,
	[SAPSerie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotCre_S]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotCre_S](
	[Cod_NotCre_H] [int] NOT NULL,
	[ItemCode] [nvarchar](50) NOT NULL,
	[BatchID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NotCre_S] PRIMARY KEY CLUSTERED 
(
	[Cod_NotCre_H] ASC,
	[BatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutInv_D]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutInv_D](
	[DocNum] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Dscription] [nvarchar](200) NULL,
	[Quantity] [decimal](18, 6) NULL,
	[WhsCode] [nvarchar](50) NULL,
	[AcctCode] [nvarchar](50) NULL,
	[PriceAftVat] [decimal](18, 6) NULL,
	[Procesado] [smallint] NULL,
 CONSTRAINT [PK_OutInv_D] PRIMARY KEY CLUSTERED 
(
	[DocNum] ASC,
	[LineNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutInv_H]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutInv_H](
	[DocNum] [int] NOT NULL,
	[Series] [nvarchar](10) NULL,
	[SeriesName] [nvarchar](10) NULL,
	[DocDate] [date] NOT NULL,
	[TaxDate] [date] NOT NULL,
	[Referencia] [nvarchar](11) NULL,
	[Comments] [text] NULL,
	[Procesado] [smallint] NULL,
 CONSTRAINT [PK_OutInv_H] PRIMARY KEY CLUSTERED 
(
	[DocNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutInv_S]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutInv_S](
	[DocNum] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[ItemCode] [nvarchar](50) NOT NULL,
	[Dscription] [nvarchar](200) NULL,
	[SerieFabricante] [nvarchar](100) NULL,
	[NumeroSerie] [nvarchar](100) NOT NULL,
	[SerieLote] [nvarchar](100) NULL,
	[Procesado] [smallint] NULL,
 CONSTRAINT [PK_OutInv_S] PRIMARY KEY CLUSTERED 
(
	[DocNum] ASC,
	[LineNum] ASC,
	[ItemCode] ASC,
	[NumeroSerie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos_H]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos_H](
	[Cod_Pagos_H] [bigint] NOT NULL,
	[BPLID] [int] NOT NULL,
	[DocType] [char](1) NULL,
	[CardCode] [nvarchar](20) NOT NULL,
	[CardName] [nvarchar](150) NULL,
	[DocDate] [datetime] NULL,
	[DocDueDate] [datetime] NULL,
	[TaxDate] [datetime] NULL,
	[CashSum] [numeric](18, 6) NULL,
	[CashAcct] [nvarchar](250) NULL,
	[TrsfrSum] [numeric](18, 6) NULL,
	[TrsfrAcct] [nvarchar](250) NULL,
	[TrsfrDate] [datetime] NULL,
	[TrsfrRef] [nvarchar](60) NULL,
	[Procesado] [smallint] NULL,
	[DocCur] [nvarchar](10) NULL,
	[Comments] [nvarchar](254) NULL,
	[JrnlMemo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Pagos_H] PRIMARY KEY CLUSTERED 
(
	[Cod_Pagos_H] ASC,
	[BPLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagosCheques_D]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagosCheques_D](
	[Cod_Pagos_H] [bigint] NOT NULL,
	[BPLID] [int] NULL,
	[Cod_PagosCheques_D] [int] NOT NULL,
	[DueDate] [datetime] NULL,
	[CheckNumber] [nvarchar](50) NULL,
	[BankCode] [nvarchar](50) NOT NULL,
	[CheckSum] [numeric](18, 6) NOT NULL,
	[CheckAccount] [nvarchar](50) NULL,
	[Currency] [nvarchar](50) NULL,
	[CountryCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_PagosCheques_D] PRIMARY KEY CLUSTERED 
(
	[Cod_Pagos_H] ASC,
	[Cod_PagosCheques_D] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagosCuentas_D]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagosCuentas_D](
	[Cod_Pagos_H] [bigint] NOT NULL,
	[BPLID] [int] NULL,
	[Cod_PagosCuentas_D] [int] NOT NULL,
	[AcctCode] [nvarchar](50) NULL,
	[SumApplied] [numeric](18, 6) NULL,
	[ProfitCenter] [nvarchar](8) NULL,
	[Project] [nvarchar](8) NULL,
	[ProfitCenter2] [nvarchar](8) NULL,
	[ProfitCenter3] [nvarchar](8) NULL,
	[ProfitCenter4] [nvarchar](8) NULL,
	[ProfitCenter5] [nvarchar](8) NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_PagosCuentas_D] PRIMARY KEY CLUSTERED 
(
	[Cod_Pagos_H] ASC,
	[Cod_PagosCuentas_D] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagosDocs_D]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagosDocs_D](
	[Cod_Pagos_H] [bigint] NOT NULL,
	[Cod_PagosDocs_D] [int] NOT NULL,
	[BPLID] [int] NOT NULL,
	[U_FacSerie] [nvarchar](100) NOT NULL,
	[SAPSerie] [nvarchar](10) NOT NULL,
	[U_TipoDoc] [nvarchar](11) NOT NULL,
	[SumApplied] [numeric](18, 6) NULL,
 CONSTRAINT [PK_PagosDocs_D] PRIMARY KEY CLUSTERED 
(
	[Cod_Pagos_H] ASC,
	[Cod_PagosDocs_D] ASC,
	[BPLID] ASC,
	[U_FacSerie] ASC,
	[SAPSerie] ASC,
	[U_TipoDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagosTarjetas_D]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagosTarjetas_D](
	[Cod_Pagos_H] [bigint] NOT NULL,
	[BPLID] [int] NULL,
	[Cod_PagosTarjetas_D] [bigint] NOT NULL,
	[CreditCard] [nvarchar](50) NOT NULL,
	[CreditCardNumber] [nvarchar](50) NOT NULL,
	[CreditValidUntil] [datetime] NOT NULL,
	[PaymentMethodCode] [nvarchar](50) NOT NULL,
	[CreditSum] [numeric](18, 6) NOT NULL,
	[CountryCode] [nvarchar](50) NOT NULL,
	[CreditAcct] [nvarchar](50) NOT NULL,
	[VoucherNum] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PagosTarjetas_D] PRIMARY KEY CLUSTERED 
(
	[Cod_Pagos_H] ASC,
	[Cod_PagosTarjetas_D] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proyectos]    Script Date: 9/3/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proyectos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](max) NOT NULL,
	[activo] [int] NOT NULL,
	[fechaCreacion] [date] NULL,
	[catalogo] [nvarchar](max) NOT NULL,
	[tablaUsrs] [nvarchar](max) NULL,
 CONSTRAINT [PK_proyecto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rexUsrs]    Script Date: 9/3/2018 7:18:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rexUsrs](
	[usuario] [varchar](100) NOT NULL,
	[clave] [varchar](100) NOT NULL,
	[activo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TraIn_D]    Script Date: 9/3/2018 7:18:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraIn_D](
	[Cod_TraIn_H] [int] NOT NULL,
	[Cod_TraIn_D] [int] NOT NULL,
	[ItemCode] [nvarchar](20) NOT NULL,
	[ItemName] [nvarchar](250) NULL,
	[Quantity] [numeric](18, 6) NULL,
	[WhsCode] [nvarchar](20) NULL,
	[Price] [numeric](18, 6) NULL,
	[ProjectCode] [nvarchar](40) NULL,
	[Currency] [nvarchar](50) NULL,
	[DiscountPercent] [numeric](18, 6) NULL,
	[DistributionRule] [nvarchar](50) NULL,
	[DistributionRule2] [nvarchar](50) NULL,
	[DistributionRule3] [nvarchar](50) NULL,
	[DistributionRule4] [nvarchar](50) NULL,
	[DistributionRule5] [nvarchar](50) NULL,
	[Factor] [numeric](18, 6) NULL,
	[Factor2] [numeric](18, 6) NULL,
	[Factor3] [numeric](18, 6) NULL,
	[Factor4] [numeric](18, 6) NULL,
	[MeasureUnit] [nvarchar](50) NULL,
	[Rate] [numeric](18, 6) NULL,
	[SerialNumber] [nvarchar](50) NULL,
	[UnitsOfMeasurment] [numeric](18, 6) NULL,
	[UseBaseUnits] [char](1) NULL,
	[VendorNum] [nvarchar](50) NULL,
 CONSTRAINT [PK_TraIn_D] PRIMARY KEY CLUSTERED 
(
	[Cod_TraIn_H] ASC,
	[Cod_TraIn_D] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TraIn_H]    Script Date: 9/3/2018 7:18:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraIn_H](
	[Cod_TraIn_H] [int] NOT NULL,
	[U_Nom] [nvarchar](250) NULL,
	[U_Fecha] [datetime] NULL,
	[U_Hora] [int] NULL,
	[CardCode] [nvarchar](20) NULL,
	[CardName] [nvarchar](60) NULL,
	[Comments] [nvarchar](250) NULL,
	[SlpCode] [int] NULL,
	[Address] [nvarchar](254) NULL,
	[Filler] [nvarchar](50) NULL,
	[GroupNum] [int] NULL,
	[ContactPerson] [int] NULL,
	[Reference1] [nvarchar](50) NULL,
	[Reference2] [nvarchar](50) NULL,
	[Series] [nvarchar](50) NULL,
	[TaxDate] [datetime] NULL,
	[U_FacReg] [nvarchar](25) NULL,
	[Procesado] [smallint] NULL,
	[Cod_Empresa] [int] NULL,
	[BPLID] [int] NOT NULL,
 CONSTRAINT [PK_TraIn_H] PRIMARY KEY CLUSTERED 
(
	[Cod_TraIn_H] ASC,
	[BPLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [SimpleOne] SET  READ_WRITE 
GO
