USE [master]
GO
/****** Object:  Database [DBResoluciones]    Script Date: 11/07/2016 11:55:26 a. m. ******/
CREATE DATABASE [DBResoluciones]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBResoluciones', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBResoluciones.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBResoluciones_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBResoluciones_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBResoluciones] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBResoluciones].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBResoluciones] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBResoluciones] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBResoluciones] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBResoluciones] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBResoluciones] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBResoluciones] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBResoluciones] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBResoluciones] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBResoluciones] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBResoluciones] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBResoluciones] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBResoluciones] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBResoluciones] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBResoluciones] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBResoluciones] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBResoluciones] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBResoluciones] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBResoluciones] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBResoluciones] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBResoluciones] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBResoluciones] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBResoluciones] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBResoluciones] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBResoluciones] SET  MULTI_USER 
GO
ALTER DATABASE [DBResoluciones] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBResoluciones] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBResoluciones] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBResoluciones] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DBResoluciones] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DBResoluciones]
GO
/****** Object:  Table [dbo].[TBL_Concepto]    Script Date: 11/07/2016 11:55:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Concepto](
	[IN_Concepto] [int] NOT NULL,
	[DA_Concepto] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBL_Concepto] PRIMARY KEY CLUSTERED 
(
	[IN_Concepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_Docente]    Script Date: 11/07/2016 11:55:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_Docente](
	[IN_DNI] [char](8) NOT NULL,
	[DA_Nombres] [nvarchar](max) NULL,
	[DA_ApellidoPaterno] [nvarchar](max) NULL,
	[DA_ApellidoMaterno] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBL_Docente] PRIMARY KEY CLUSTERED 
(
	[IN_DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_Institucion_Educativa]    Script Date: 11/07/2016 11:55:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Institucion_Educativa](
	[IN_InstitucionEducativa] [int] NOT NULL,
	[DA_InstitucionEducativa] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBL_Institucion_Educativa] PRIMARY KEY CLUSTERED 
(
	[IN_InstitucionEducativa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_Resolucion]    Script Date: 11/07/2016 11:55:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_Resolucion](
	[IN_NroResolucion] [char](10) NOT NULL,
	[IN_NroProyecto] [char](10) NULL,
	[IN_Tipo_Resolucion] [int] NULL,
	[IN_UGEL] [int] NULL,
	[IN_InstitucionEducativa] [int] NULL,
	[IN_DNI] [char](8) NULL,
	[IN_Situacion] [int] NULL,
	[IN_Concepto] [int] NULL,
	[IN_ExpedienteJudicial] [char](10) NULL,
 CONSTRAINT [PK_TBL_Resolucion] PRIMARY KEY CLUSTERED 
(
	[IN_NroResolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_Sentencia]    Script Date: 11/07/2016 11:55:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_Sentencia](
	[IN_ExpedienteJudicial] [char](10) NOT NULL,
	[DA_Sentencia] [nvarchar](max) NULL,
	[DA_FechaSentencia] [date] NULL,
	[DA_Monto] [float] NULL,
 CONSTRAINT [PK_Sentencia] PRIMARY KEY CLUSTERED 
(
	[IN_ExpedienteJudicial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_Situacion]    Script Date: 11/07/2016 11:55:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Situacion](
	[IN_Situacion] [int] NOT NULL,
	[DA_Situacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBL_Situacion] PRIMARY KEY CLUSTERED 
(
	[IN_Situacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_Tipo_Resolucion]    Script Date: 11/07/2016 11:55:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Tipo_Resolucion](
	[IN_TipoResolucion] [int] NOT NULL,
	[DA_TipoResolucion] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBL_Tipo_Resolucion] PRIMARY KEY CLUSTERED 
(
	[IN_TipoResolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_UGEL]    Script Date: 11/07/2016 11:55:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_UGEL](
	[IN_UGEL] [int] NOT NULL,
	[DA_UGEL] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBL_UGEL] PRIMARY KEY CLUSTERED 
(
	[IN_UGEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (1, N'Adeudo Bonificacion Familiar')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (2, N'Adeudo Bonificacion Preparacion de Clases ')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (3, N'Adeudo DU 037')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (4, N'Adeudo Maestria')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (5, N'Ascenso')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (6, N'Asignación por Tiempo de Servicio')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (7, N'Bonificacion Familiar')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (8, N'Bonificacion Personal')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (9, N'Bono de Desepeño Escolar ECE')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (10, N'Bonos de Atracción')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (11, N'Cese')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (12, N'Compensatoria por Tiempo de Servicio')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (13, N'Contrato')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (14, N'Maestria')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (15, N'Nombramiento')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (16, N'Permuta')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (17, N'Reajuste de Bonificacion Personal')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (18, N'Reasignación')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (19, N'Reubicación')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (20, N'Rotación')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (21, N'Sepelio y Luto')
INSERT [dbo].[TBL_Concepto] ([IN_Concepto], [DA_Concepto]) VALUES (22, N'Vacaciones Truncas')
INSERT [dbo].[TBL_Docente] ([IN_DNI], [DA_Nombres], [DA_ApellidoPaterno], [DA_ApellidoMaterno]) VALUES (N'123     ', N'Marco Antonio', N'Ticona', N'Tarifa')
INSERT [dbo].[TBL_Docente] ([IN_DNI], [DA_Nombres], [DA_ApellidoPaterno], [DA_ApellidoMaterno]) VALUES (N'1232    ', N'Ramiro Miguel', N'Alvarez', N'Herrera')
INSERT [dbo].[TBL_Docente] ([IN_DNI], [DA_Nombres], [DA_ApellidoPaterno], [DA_ApellidoMaterno]) VALUES (N'2       ', N'Maria Eugenia', N'Flores', N'Del Carpio')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (1, N'40001')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (2, N'40020')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (3, N'40099')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (4, N'40106')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (5, N'40616')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (6, N'40616')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (7, N'41024')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (8, N'12 de Octubre ')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (9, N'40002 AL Aire Libre')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (10, N'40007 Gilberto Ochoa')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (11, N'40025 Santa Dorotea')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (12, N'40035 Víctor Andrés Belaunde')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (13, N'40039 Santa María')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (14, N'40040 José Trinidad Morán')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (15, N'40040 José Trinidad Morán')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (16, N'40042 República de Francia')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (17, N'40045 Livia Bernal de Baltazar')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (18, N'40046 José Cornejo Acosta')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (19, N'40046 José Cornejo Acosta')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (20, N'40048 Antonio José de Sucre')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (21, N'40049 Francisco Bolognesi')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (22, N'40049 Francisco Bolognesi')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (23, N'40052 El Peruano del Milenio')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (24, N'40052 El Peruano del Milenio')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (25, N'40053 Manuel Tapia Fuentes')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (26, N'40055 Romeo Luna Victoria')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (27, N'40056 Horacio Zeballos Gamez')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (28, N'40056 Horacio Zeballos Gamez')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (29, N'40058 Ignacio Álvarez Thomas')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (30, N'40061 Estado de Suecia')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (31, N'40078 Sagrado Corazón')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (32, N'40081 Mazeyra Acosta')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (33, N'40092 José Domingo Zuzunaga')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (34, N'40103 Libertadores de América')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (35, N'40141 Virgen de Guadalupe')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (36, N'40173 Divino Niño Jesús')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (37, N'40202 Charlotte')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (38, N'40669 Deán Valdivia')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (39, N'40670 El Edén Fe y Alegría')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (40, N'40672 DoreanWillians')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (41, N'40677 San Miguel Febres Cordero')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (42, N'40694 Centro de Innovación Pedagógico ISPA')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (43, N'40705 Peruarbo')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (44, N'41003 Almirante Miguel Grau')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (45, N'41005 Héroes de Angamos ')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (46, N'41014 Fortunata Gutiérrez')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (47, N'41019 República de Venezuela')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (48, N'41025 Doscientas Millas Peruanas')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (49, N'41026 María Murillo de Bernal')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (50, N'Arequipa')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (51, N'Casa de Caridad Artes y Oficios')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (52, N'Ciudad de Dios')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (53, N'Cristo Morado')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (54, N'Cristo Rey')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (55, N'Gran Pachacutec')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (56, N'Honorio Delgado Espinoza')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (57, N'Inicial Honorio Delgado Espinoza')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (58, N'Jose Canzina')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (59, N'José Caruana')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (60, N'La Recoleta')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (61, N'León XIII')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (62, N'León XIII – CIRCA')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (63, N'Mayta Capac')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (64, N'Micaela Bastidas')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (65, N'Newton (IEP) Gestion Privada')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (66, N'Nuestra Señora de la Asunción')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (67, N'Nuestra Señora de los Dolores')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (68, N'San Bernardo')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (69, N'San Juan Apóstol')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (70, N'San Juan Apóstol')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (71, N'San Pio X')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (72, N'Santo Tomás de Aquino')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (73, N'Santo Tomás de Aquino')
INSERT [dbo].[TBL_Institucion_Educativa] ([IN_InstitucionEducativa], [DA_InstitucionEducativa]) VALUES (74, N'Señor de los Milagros')
INSERT [dbo].[TBL_Resolucion] ([IN_NroResolucion], [IN_NroProyecto], [IN_Tipo_Resolucion], [IN_UGEL], [IN_InstitucionEducativa], [IN_DNI], [IN_Situacion], [IN_Concepto], [IN_ExpedienteJudicial]) VALUES (N'1         ', N'1         ', 2, 2, 27, N'2       ', 1, 22, N'1212      ')
INSERT [dbo].[TBL_Resolucion] ([IN_NroResolucion], [IN_NroProyecto], [IN_Tipo_Resolucion], [IN_UGEL], [IN_InstitucionEducativa], [IN_DNI], [IN_Situacion], [IN_Concepto], [IN_ExpedienteJudicial]) VALUES (N'2         ', N'1         ', 1, 2, 26, N'123     ', 1, 20, N'exp2      ')
INSERT [dbo].[TBL_Sentencia] ([IN_ExpedienteJudicial], [DA_Sentencia], [DA_FechaSentencia], [DA_Monto]) VALUES (N'1212      ', N'Sentencia de Deuda', CAST(N'2016-07-07' AS Date), 7500.5)
INSERT [dbo].[TBL_Sentencia] ([IN_ExpedienteJudicial], [DA_Sentencia], [DA_FechaSentencia], [DA_Monto]) VALUES (N'exp2      ', N'Sentencia de Deuda', CAST(N'2016-07-08' AS Date), 8500)
INSERT [dbo].[TBL_Sentencia] ([IN_ExpedienteJudicial], [DA_Sentencia], [DA_FechaSentencia], [DA_Monto]) VALUES (N'exp3      ', N'Sentencia de Deuda', CAST(N'2016-07-09' AS Date), 10000.65)
USE [master]
GO
ALTER DATABASE [DBResoluciones] SET  READ_WRITE 
GO
