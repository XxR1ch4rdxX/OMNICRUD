USE [master]
GO
/****** Object:  Database [TerraForce]    Script Date: 4/8/2024 18:53:49 ******/
CREATE DATABASE [TerraForce]
 CONTAINMENT = NONE
 ON  PRIMARY
( NAME = N'TerraForce', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TerraForce.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON
( NAME = N'TerraForce_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TerraForce_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TerraForce] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TerraForce].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TerraForce] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TerraForce] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TerraForce] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TerraForce] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TerraForce] SET ARITHABORT OFF
GO
ALTER DATABASE [TerraForce] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [TerraForce] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TerraForce] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TerraForce] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TerraForce] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TerraForce] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TerraForce] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TerraForce] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TerraForce] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TerraForce] SET  ENABLE_BROKER
GO
ALTER DATABASE [TerraForce] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TerraForce] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TerraForce] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TerraForce] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TerraForce] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TerraForce] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TerraForce] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TerraForce] SET RECOVERY FULL
GO
ALTER DATABASE [TerraForce] SET  MULTI_USER
GO
ALTER DATABASE [TerraForce] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TerraForce] SET DB_CHAINING OFF
GO
ALTER DATABASE [TerraForce] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )
GO
ALTER DATABASE [TerraForce] SET TARGET_RECOVERY_TIME = 60 SECONDS
GO
ALTER DATABASE [TerraForce] SET DELAYED_DURABILITY = DISABLED
GO
ALTER DATABASE [TerraForce] SET ACCELERATED_DATABASE_RECOVERY = OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'TerraForce', N'ON'
GO
ALTER DATABASE [TerraForce] SET QUERY_STORE = ON
GO
ALTER DATABASE [TerraForce] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TerraForce]
GO
/****** Object:  Table [dbo].[Asociacion]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asociacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_escuela] [int] NULL,
	[id_empresa] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calles]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[id_colonia] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colonias]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colonias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[id_municipio] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Convocatorias]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Convocatorias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](100) NULL,
	[descripcion] [varchar](1000) NULL,
	[requisitos] [varchar](500) NULL,
	[fecha_inicio] [date] NULL,
	[usuarios_registrados] [int] NULL,
	[id_estatus] [int] NULL,
	[id_empresa] [int] NULL,
	[id_tematica] [int] NULL,
	[imagen] [varbinary](max) NULL,
	[limite_usuarios] [int] NULL,
	[fecha_final] [date] NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvocatoriasEstatus]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvocatoriasEstatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[estatus] [varchar](150) NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Correos]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Correos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[correo] [varchar](150) NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direcciones]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direcciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_estado] [int] NULL,
	[id_municipio] [int] NULL,
	[id_colonia] [int] NULL,
	[id_calle] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[id_correo] [int] NULL,
	[id_telefono] [int] NULL,
	[id_direccion] [int] NULL,
	[RFC] [varchar](20) NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Escuelas]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Escuelas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[id_direccion] [int] NULL,
	[id_telefonos] [int] NULL,
	[id_correos] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estatus]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipios]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[id_estado] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[apellidop] [varchar](150) NULL,
	[apellidom] [varchar](150) NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registros]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registros](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_voluntario] [int] NULL,
	[id_convocatoria] [int] NULL,
	[fecha] [date] NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefonos]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefonos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[telefono] [varchar](150) NULL,
	[id_tipo] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tematicas]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tematicas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tematica] [varchar](150) NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposUsuarios]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposUsuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](150) NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTelefonos]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTelefonos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](150) NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_persona] [int] NULL,
	[id_tipouser] [int] NULL,
	[correo] [varchar](150) NULL,
	[passwrd] [varchar](25) NULL,
	[id_empresa] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voluntarios]    Script Date: 4/8/2024 18:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voluntarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_escuela] [int] NULL,
	[id_persona] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Asociacion] ON

INSERT [dbo].[Asociacion] ([id], [id_escuela], [id_empresa]) VALUES (3, 3, 3)
SET IDENTITY_INSERT [dbo].[Asociacion] OFF
GO
SET IDENTITY_INSERT [dbo].[Calles] ON

INSERT [dbo].[Calles] ([id], [nombre], [id_colonia]) VALUES (1, N'Avenida Paulista', 1)
INSERT [dbo].[Calles] ([id], [nombre], [id_colonia]) VALUES (2, N'Avenida Atlântica', 2)
INSERT [dbo].[Calles] ([id], [nombre], [id_colonia]) VALUES (3, N'Avenida Cristóvão Colombo', 3)
SET IDENTITY_INSERT [dbo].[Calles] OFF
GO
SET IDENTITY_INSERT [dbo].[Colonias] ON

INSERT [dbo].[Colonias] ([id], [nombre], [id_municipio]) VALUES (1, N'Jardim Paulista', 1)
INSERT [dbo].[Colonias] ([id], [nombre], [id_municipio]) VALUES (2, N'Copacabana', 2)
INSERT [dbo].[Colonias] ([id], [nombre], [id_municipio]) VALUES (3, N'Savassi', 3)
SET IDENTITY_INSERT [dbo].[Colonias] OFF
GO
SET IDENTITY_INSERT [dbo].[Convocatorias] ON

INSERT [dbo].[Convocatorias] ([id], [titulo], [descripcion], [requisitos], [fecha_inicio], [usuarios_registrados], [id_estatus], [id_empresa], [id_tematica], [imagen], [limite_usuarios], [fecha_final]) VALUES (1, N'Convocatoria New Name', N'Descripción nueva', N'Requisitos', CAST(N'2024-07-01' AS Date), 1, 1, 6, 11, NULL, 10, CAST(N'2025-01-25' AS Date))
INSERT [dbo].[Convocatorias] ([id], [titulo], [descripcion], [requisitos], [fecha_inicio], [usuarios_registrados], [id_estatus], [id_empresa], [id_tematica], [imagen], [limite_usuarios], [fecha_final]) VALUES (2, N'Convocatoria Rio', N'Descripción del samo', N'Requisitos Del samo', CAST(N'2024-07-02' AS Date), 40, 2, 6, 20, NULL, 40, CAST(N'2025-02-09' AS Date))
INSERT [dbo].[Convocatorias] ([id], [titulo], [descripcion], [requisitos], [fecha_inicio], [usuarios_registrados], [id_estatus], [id_empresa], [id_tematica], [imagen], [limite_usuarios], [fecha_final]) VALUES (3, N'Convocatoria Minas', N'Descripción Minas', N'Requisitos Minas', CAST(N'2024-07-03' AS Date), 0, 1, 6, 1, NULL, 40, CAST(N'2025-01-25' AS Date))
SET IDENTITY_INSERT [dbo].[Convocatorias] OFF
GO
SET IDENTITY_INSERT [dbo].[ConvocatoriasEstatus] ON

INSERT [dbo].[ConvocatoriasEstatus] ([id], [estatus]) VALUES (1, N'Abierta')
INSERT [dbo].[ConvocatoriasEstatus] ([id], [estatus]) VALUES (2, N'Cerrada')
SET IDENTITY_INSERT [dbo].[ConvocatoriasEstatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Correos] ON

INSERT [dbo].[Correos] ([id], [correo]) VALUES (1, N'ronaldo@ejemplo.com')
INSERT [dbo].[Correos] ([id], [correo]) VALUES (2, N'ronaldinho@ejemplo.com')
INSERT [dbo].[Correos] ([id], [correo]) VALUES (3, N'pele@ejemplo.com')
INSERT [dbo].[Correos] ([id], [correo]) VALUES (4, N'zico@ejemplo.com')
INSERT [dbo].[Correos] ([id], [correo]) VALUES (5, N'coca@gmail.com')
INSERT [dbo].[Correos] ([id], [correo]) VALUES (6, N'pepsi@gmail.com')
INSERT [dbo].[Correos] ([id], [correo]) VALUES (7, N'xd@gmail.com')
INSERT [dbo].[Correos] ([id], [correo]) VALUES (8, N'lucas@gmail.com')
INSERT [dbo].[Correos] ([id], [correo]) VALUES (9, N'c@gmail.com')
INSERT [dbo].[Correos] ([id], [correo]) VALUES (10, N'qq@gmail.com')
INSERT [dbo].[Correos] ([id], [correo]) VALUES (11, N'y@gmail.com')
INSERT [dbo].[Correos] ([id], [correo]) VALUES (12, N'empresaxd@gmail.com')
INSERT [dbo].[Correos] ([id], [correo]) VALUES (13, N'empresaunu@gmail.com')
SET IDENTITY_INSERT [dbo].[Correos] OFF
GO
SET IDENTITY_INSERT [dbo].[Direcciones] ON

INSERT [dbo].[Direcciones] ([id], [id_estado], [id_municipio], [id_colonia], [id_calle]) VALUES (1, 1, 1, 1, 1)
INSERT [dbo].[Direcciones] ([id], [id_estado], [id_municipio], [id_colonia], [id_calle]) VALUES (2, 2, 2, 2, 2)
INSERT [dbo].[Direcciones] ([id], [id_estado], [id_municipio], [id_colonia], [id_calle]) VALUES (3, 3, 3, 3, 3)
INSERT [dbo].[Direcciones] ([id], [id_estado], [id_municipio], [id_colonia], [id_calle]) VALUES (4, 1, 1, 1, 1)
INSERT [dbo].[Direcciones] ([id], [id_estado], [id_municipio], [id_colonia], [id_calle]) VALUES (5, 2, 2, 2, 2)
INSERT [dbo].[Direcciones] ([id], [id_estado], [id_municipio], [id_colonia], [id_calle]) VALUES (6, 3, 3, 3, 3)
INSERT [dbo].[Direcciones] ([id], [id_estado], [id_municipio], [id_colonia], [id_calle]) VALUES (7, 2, 2, 2, 2)
INSERT [dbo].[Direcciones] ([id], [id_estado], [id_municipio], [id_colonia], [id_calle]) VALUES (8, 1, 1, 1, 1)
INSERT [dbo].[Direcciones] ([id], [id_estado], [id_municipio], [id_colonia], [id_calle]) VALUES (9, 2, 2, 2, 2)
INSERT [dbo].[Direcciones] ([id], [id_estado], [id_municipio], [id_colonia], [id_calle]) VALUES (10, 2, 2, 2, 2)
INSERT [dbo].[Direcciones] ([id], [id_estado], [id_municipio], [id_colonia], [id_calle]) VALUES (11, 2, 2, 2, 2)
INSERT [dbo].[Direcciones] ([id], [id_estado], [id_municipio], [id_colonia], [id_calle]) VALUES (12, 2, 2, 2, 2)
SET IDENTITY_INSERT [dbo].[Direcciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Empresas] ON

INSERT [dbo].[Empresas] ([id], [nombre], [id_correo], [id_telefono], [id_direccion], [RFC]) VALUES (1, N'Empresa de Deportes São Paulo', 1, 1, 1, NULL)
INSERT [dbo].[Empresas] ([id], [nombre], [id_correo], [id_telefono], [id_direccion], [RFC]) VALUES (2, N'Empresa de Deportes Rio', 2, 2, 2, NULL)
INSERT [dbo].[Empresas] ([id], [nombre], [id_correo], [id_telefono], [id_direccion], [RFC]) VALUES (3, N'Empresa de Deportes Minas', 3, 1, 3, NULL)
INSERT [dbo].[Empresas] ([id], [nombre], [id_correo], [id_telefono], [id_direccion], [RFC]) VALUES (4, N'Coca-cola', 5, 2, 4, N'123ABC')
INSERT [dbo].[Empresas] ([id], [nombre], [id_correo], [id_telefono], [id_direccion], [RFC]) VALUES (5, N'pepsi', 6, 3, 5, N'1234pepsi')
INSERT [dbo].[Empresas] ([id], [nombre], [id_correo], [id_telefono], [id_direccion], [RFC]) VALUES (6, N'xd', 7, 4, 6, N'123xd')
INSERT [dbo].[Empresas] ([id], [nombre], [id_correo], [id_telefono], [id_direccion], [RFC]) VALUES (7, N'lucas', 8, 5, 7, N'7182726')
INSERT [dbo].[Empresas] ([id], [nombre], [id_correo], [id_telefono], [id_direccion], [RFC]) VALUES (8, N'c', 9, 6, 8, N'c')
INSERT [dbo].[Empresas] ([id], [nombre], [id_correo], [id_telefono], [id_direccion], [RFC]) VALUES (9, N'q', 10, 7, 9, N'q')
INSERT [dbo].[Empresas] ([id], [nombre], [id_correo], [id_telefono], [id_direccion], [RFC]) VALUES (10, N'y', 11, 8, 10, N'y')
INSERT [dbo].[Empresas] ([id], [nombre], [id_correo], [id_telefono], [id_direccion], [RFC]) VALUES (11, N'empresaxd', 12, 9, 11, N'empresaxd')
INSERT [dbo].[Empresas] ([id], [nombre], [id_correo], [id_telefono], [id_direccion], [RFC]) VALUES (12, N'empresaunu', 13, 10, 12, N'empresaunu')
SET IDENTITY_INSERT [dbo].[Empresas] OFF
GO
SET IDENTITY_INSERT [dbo].[Escuelas] ON

INSERT [dbo].[Escuelas] ([id], [nombre], [id_direccion], [id_telefonos], [id_correos]) VALUES (1, N'Escuela de Fútbol São Paulo', 1, 1, 1)
INSERT [dbo].[Escuelas] ([id], [nombre], [id_direccion], [id_telefonos], [id_correos]) VALUES (2, N'Escuela de Fútbol Rio', 2, 2, 2)
INSERT [dbo].[Escuelas] ([id], [nombre], [id_direccion], [id_telefonos], [id_correos]) VALUES (3, N'Escuela de Fútbol Minas', 3, 1, 3)
SET IDENTITY_INSERT [dbo].[Escuelas] OFF
GO
SET IDENTITY_INSERT [dbo].[Estados] ON

INSERT [dbo].[Estados] ([id], [nombre]) VALUES (1, N'São Paulo')
INSERT [dbo].[Estados] ([id], [nombre]) VALUES (2, N'Rio de Janeiro')
INSERT [dbo].[Estados] ([id], [nombre]) VALUES (3, N'Minas Gerais')
SET IDENTITY_INSERT [dbo].[Estados] OFF
GO
SET IDENTITY_INSERT [dbo].[Estatus] ON

INSERT [dbo].[Estatus] ([id], [nombre]) VALUES (1, N'Activo')
INSERT [dbo].[Estatus] ([id], [nombre]) VALUES (2, N'Finalizado')
SET IDENTITY_INSERT [dbo].[Estatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Municipios] ON

INSERT [dbo].[Municipios] ([id], [nombre], [id_estado]) VALUES (1, N'São Paulo', 1)
INSERT [dbo].[Municipios] ([id], [nombre], [id_estado]) VALUES (2, N'Rio de Janeiro', 2)
INSERT [dbo].[Municipios] ([id], [nombre], [id_estado]) VALUES (3, N'Belo Horizonte', 3)
SET IDENTITY_INSERT [dbo].[Municipios] OFF
GO
SET IDENTITY_INSERT [dbo].[Personas] ON

INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (1, N'Ronaldo', N'Augustus', N'Cicero')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (2, N'Ronaldinho', N'Tiberius', N'Seneca')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (3, N'Pelé', N'Nero', N'Claudius')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (4, N'Zico', N'Maximus', N'Julius')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (6, N'richy', N'sandoval', N'ayuda')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (7, N'Samuel', N'pana', N'dero')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (8, N'Jorgito', N'Morales', N'Vazquez')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (9, N'Samuel', N'Elizalde', N'Barrera')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (10, N'Luis', N'Luis', N'Luis')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (11, N'lopez', N'lopez', N'lopez')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (12, N'a', N'a', N'a')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (13, N'b', N'b', N'b')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (14, N'x', N'x', N'x')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (15, N'Samuel', N'Elizalde', N'Barrera')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (16, N'juan', N'juan', N'juan')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (17, N'q', N'q', N'q')
INSERT [dbo].[Personas] ([id], [nombre], [apellidop], [apellidom]) VALUES (18, N'mario', N'mario', N'mario')
SET IDENTITY_INSERT [dbo].[Personas] OFF
GO
SET IDENTITY_INSERT [dbo].[Registros] ON

INSERT [dbo].[Registros] ([id], [id_voluntario], [id_convocatoria], [fecha]) VALUES (41, 8, 1, CAST(N'2024-08-03' AS Date))
SET IDENTITY_INSERT [dbo].[Registros] OFF
GO
SET IDENTITY_INSERT [dbo].[Telefonos] ON

INSERT [dbo].[Telefonos] ([id], [telefono], [id_tipo]) VALUES (1, N'123456789', 1)
INSERT [dbo].[Telefonos] ([id], [telefono], [id_tipo]) VALUES (2, N'3312', 2)
INSERT [dbo].[Telefonos] ([id], [telefono], [id_tipo]) VALUES (3, N'123672131', 2)
INSERT [dbo].[Telefonos] ([id], [telefono], [id_tipo]) VALUES (4, N'123456', 2)
INSERT [dbo].[Telefonos] ([id], [telefono], [id_tipo]) VALUES (5, N'123412', 2)
INSERT [dbo].[Telefonos] ([id], [telefono], [id_tipo]) VALUES (6, N'1234', 2)
INSERT [dbo].[Telefonos] ([id], [telefono], [id_tipo]) VALUES (7, N'q', 2)
INSERT [dbo].[Telefonos] ([id], [telefono], [id_tipo]) VALUES (8, N'2312', 2)
INSERT [dbo].[Telefonos] ([id], [telefono], [id_tipo]) VALUES (9, N'1342', 2)
INSERT [dbo].[Telefonos] ([id], [telefono], [id_tipo]) VALUES (10, N'7654', 2)
SET IDENTITY_INSERT [dbo].[Telefonos] OFF
GO
SET IDENTITY_INSERT [dbo].[Tematicas] ON

INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (1, N'Fútbol')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (2, N'Entrenamiento')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (3, N'Educación y Tutoría')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (4, N'Salud y Bienestar')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (5, N'Medio Ambiente y Ecología')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (6, N'Ayuda a Personas Mayores')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (7, N'Apoyo a Personas con Discapacidad')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (8, N'Desarrollo Comunitario')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (9, N'Cultura y Artes')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (10, N'Deportes y Recreación')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (11, N'Protección de Animales')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (12, N'Asistencia a Desastres')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (13, N'Desarrollo Juvenil')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (14, N'Tecnología y Capacitación Digital')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (15, N'Seguridad Alimentaria y Nutrición')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (16, N'Derechos Humanos y Justicia Social')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (17, N'Empoderamiento de la Mujer')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (18, N'Construcción y Reparación de Viviendas')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (19, N'Asesoría Legal y Jurídica')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (20, N'Apoyo Psicológico y Emocional')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (21, N'Reducción de la Pobreza')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (22, N'Ciencia y Tecnología')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (23, N'Inclusión y Diversidad')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (24, N'Emprendimiento y Negocios Sociales')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (25, N'Conservación del Patrimonio')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (26, N'Transporte y Logística en Emergencias')
INSERT [dbo].[Tematicas] ([id], [tematica]) VALUES (27, N'Gestión de Proyectos Sociales')
SET IDENTITY_INSERT [dbo].[Tematicas] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposUsuarios] ON

INSERT [dbo].[TiposUsuarios] ([id], [tipo]) VALUES (1, N'ADMIN')
INSERT [dbo].[TiposUsuarios] ([id], [tipo]) VALUES (2, N'usuario')
INSERT [dbo].[TiposUsuarios] ([id], [tipo]) VALUES (3, N'empresa')
SET IDENTITY_INSERT [dbo].[TiposUsuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoTelefonos] ON

INSERT [dbo].[TipoTelefonos] ([id], [tipo]) VALUES (1, N'Móvil')
INSERT [dbo].[TipoTelefonos] ([id], [tipo]) VALUES (2, N'Fijo')
SET IDENTITY_INSERT [dbo].[TipoTelefonos] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON

INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (1, 1, 2, N'ronaldoo@gmail.com', N'ronaldo123', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (2, 2, 2, N'gaucho@gmail.com', N'tiberius321', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (3, 3, 2, N'pele@gmail.com', N'pele123', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (4, 4, 2, N'zico@gmail.com', N'zico123', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (5, 6, 1, N'lollespartam@gmail.com', N'ADMIN', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (6, 7, 1, N'elpanadero@gmail.com', N'ADMIN', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (7, 8, 2, N'Jorge@gmail.com', N'holalupe', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (8, 9, 2, N'pan@gmail.com', N'hola', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (9, 10, 2, N'luis@gmail.com', N'o', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (10, 11, 2, N'lopez@gmail.com', N'unu', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (11, 12, 2, N'a@gmail.com', N'a', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (12, 13, 2, N'b@gmail.com', N'b', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (13, 14, 2, N'x@gmail.com', N'x', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (14, NULL, 3, N'coca@gmail.com', N'c', 4)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (15, NULL, 3, N'pepsi@gmail.com', N'pepsi', 5)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (16, NULL, 3, N'xd@gmail.com', N'xd', 6)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (17, 15, 2, N'xdf@gmail.com', N'hola', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (18, 16, 2, N'juan@gmail.com', N'juan', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (19, NULL, 3, N'lucas@gmail.com', N'lucas', 7)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (20, NULL, 3, N'c@gmail.com', N'c', 8)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (21, 17, 2, N'q@gmail.com', N'q', NULL)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (22, NULL, 3, N'qq@gmail.com', N'q', 9)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (23, NULL, 3, N'y@gmail.com', N'y', 10)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (24, NULL, 3, N'empresaxd@gmail.com', N'empresaxd', 11)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (25, NULL, 3, N'empresaunu@gmail.com', N'empresaunu', 12)
INSERT [dbo].[Usuarios] ([id], [id_persona], [id_tipouser], [correo], [passwrd], [id_empresa]) VALUES (26, 18, 2, N'mario@gmail.com', N'mario', NULL)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Voluntarios] ON

INSERT [dbo].[Voluntarios] ([id], [id_escuela], [id_persona]) VALUES (1, 1, 1)
INSERT [dbo].[Voluntarios] ([id], [id_escuela], [id_persona]) VALUES (2, 2, 2)
INSERT [dbo].[Voluntarios] ([id], [id_escuela], [id_persona]) VALUES (3, 3, 3)
SET IDENTITY_INSERT [dbo].[Voluntarios] OFF
GO
ALTER TABLE [dbo].[Asociacion]  WITH CHECK ADD FOREIGN KEY([id_empresa])
REFERENCES [dbo].[Empresas] ([id])
GO
ALTER TABLE [dbo].[Asociacion]  WITH CHECK ADD FOREIGN KEY([id_escuela])
REFERENCES [dbo].[Escuelas] ([id])
GO
ALTER TABLE [dbo].[Calles]  WITH CHECK ADD FOREIGN KEY([id_colonia])
REFERENCES [dbo].[Colonias] ([id])
GO
ALTER TABLE [dbo].[Colonias]  WITH CHECK ADD FOREIGN KEY([id_municipio])
REFERENCES [dbo].[Municipios] ([id])
GO
ALTER TABLE [dbo].[Convocatorias]  WITH CHECK ADD FOREIGN KEY([id_empresa])
REFERENCES [dbo].[Empresas] ([id])
GO
ALTER TABLE [dbo].[Convocatorias]  WITH CHECK ADD FOREIGN KEY([id_estatus])
REFERENCES [dbo].[ConvocatoriasEstatus] ([id])
GO
ALTER TABLE [dbo].[Convocatorias]  WITH CHECK ADD FOREIGN KEY([id_tematica])
REFERENCES [dbo].[Tematicas] ([id])
GO
ALTER TABLE [dbo].[Convocatorias]  WITH CHECK ADD  CONSTRAINT [FK_tematica] FOREIGN KEY([id_estatus])
REFERENCES [dbo].[Estatus] ([id])
GO
ALTER TABLE [dbo].[Convocatorias] CHECK CONSTRAINT [FK_tematica]
GO
ALTER TABLE [dbo].[Direcciones]  WITH CHECK ADD FOREIGN KEY([id_calle])
REFERENCES [dbo].[Calles] ([id])
GO
ALTER TABLE [dbo].[Direcciones]  WITH CHECK ADD FOREIGN KEY([id_colonia])
REFERENCES [dbo].[Colonias] ([id])
GO
ALTER TABLE [dbo].[Direcciones]  WITH CHECK ADD FOREIGN KEY([id_estado])
REFERENCES [dbo].[Estados] ([id])
GO
ALTER TABLE [dbo].[Direcciones]  WITH CHECK ADD FOREIGN KEY([id_municipio])
REFERENCES [dbo].[Municipios] ([id])
GO
ALTER TABLE [dbo].[Escuelas]  WITH CHECK ADD FOREIGN KEY([id_direccion])
REFERENCES [dbo].[Direcciones] ([id])
GO
ALTER TABLE [dbo].[Municipios]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[Estados] ([id])
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_empresa] FOREIGN KEY([id_empresa])
REFERENCES [dbo].[Empresas] ([id])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_empresa]
GO
ALTER TABLE [dbo].[Voluntarios]  WITH CHECK ADD FOREIGN KEY([id_escuela])
REFERENCES [dbo].[Escuelas] ([id])
GO
ALTER TABLE [dbo].[Voluntarios]  WITH CHECK ADD FOREIGN KEY([id_persona])
REFERENCES [dbo].[Personas] ([id])
GO
/****** Object:  StoredProcedure [dbo].[sp_borrarRegistroUser]    Script Date: 4/8/2024 18:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_borrarRegistroUser]
    @iduser INT,
    @idconvo INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY

		DELETE FROM Registros WHERE id_voluntario = @iduser AND id_convocatoria = @idconvo

		UPDATE Convocatorias SET usuarios_registrados = usuarios_registrados -1 WHERE id = @idconvo

        COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000);
        SET @ErrorMessage = ERROR_MESSAGE();
        PRINT @ErrorMessage;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ingresarEmpresa]    Script Date: 4/8/2024 18:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ingresarEmpresa]
	@nombre VARCHAR(150),
	@RFC VARCHAR(20),
	@correo VARCHAR(150),
	@password VARCHAR(25),
	@fone VARCHAR(150),
	@estado INT,
	@municipio INT,
	@colonia INT,
	@calle INT

AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY

		INSERT INTO Telefonos(telefono, id_tipo)
		VALUES (@fone, 2);
		DECLARE @id_fone INT
		SET @id_fone = SCOPE_IDENTITY()

		INSERT INTO Direcciones(id_estado, id_municipio, id_colonia, id_calle)
		VALUES (@estado, @municipio, @colonia, @calle)
		DECLARE @id_add INT
		SET @id_add = SCOPE_IDENTITY()

		INSERT INTO Correos (correo) VALUES (@correo)
		DECLARE @id_correo INT
		SET @id_correo = SCOPE_IDENTITY()

		INSERT INTO Empresas (nombre, id_correo, id_telefono, id_direccion, RFC)
		VALUES (@nombre, @id_correo, @id_fone, @id_add, @RFC)
		DECLARE @id_empresa INT
		SET @id_empresa = SCOPE_IDENTITY()


		INSERT INTO Usuarios (id_tipouser, correo, passwrd, id_empresa)
		VALUES (3, @correo, @password, @id_empresa)

	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
ROLLBACK TRANSACTION;
DECLARE @ErrorMessage NVARCHAR(4000);
SET @ErrorMessage = ERROR_MESSAGE();
PRINT @ErrorMessage;
END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ingresarUsuario]    Script Date: 4/8/2024 18:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ingresarUsuario]
	@nombre VARCHAR(150),
	@apellidop VARCHAR(150),
	@apellidom VARCHAR(150),
	@correo VARCHAR(150),
	@password VARCHAR(25)
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY

		INSERT INTO Personas (nombre, apellidop, apellidom)
		VALUES (@nombre, @apellidop, @apellidom)

		DECLARE @idtipo INT
		DECLARE @idper INT
		SET @idtipo = 2
		SET @idper = SCOPE_IDENTITY()

		INSERT INTO Usuarios (id_persona, id_tipouser, correo, passwrd)
		VALUES (@idper, @idtipo, @correo, @password)
	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
ROLLBACK TRANSACTION;
DECLARE @ErrorMessage NVARCHAR(4000);
SET @ErrorMessage = ERROR_MESSAGE();
PRINT @ErrorMessage;
END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistroConvoUser]    Script Date: 4/8/2024 18:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_RegistroConvoUser]
    @iduser INT,
    @idconvo INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        DECLARE @limite INT;
        DECLARE @usuarios INT;
        DECLARE @userExists INT;

        -- Obtener el límite de usuarios y el número actual de usuarios registrados
        SET @limite = (SELECT limite_usuarios FROM Convocatorias WHERE id = @idconvo);
        SET @usuarios = (SELECT usuarios_registrados FROM Convocatorias WHERE id = @idconvo);

        -- Verificar si el usuario ya está registrado en la convocatoria
        SET @userExists = (SELECT COUNT(*) FROM Registros WHERE id_voluntario = @iduser AND id_convocatoria = @idconvo);

        -- Si el usuario ya está registrado, no permitir el registro
        IF @userExists > 0
        BEGIN
            PRINT 'El usuario ya está registrado en esta convocatoria.';
        END
        -- Si se ha alcanzado el límite de usuarios, no permitir el registro
        ELSE IF @limite = @usuarios
        BEGIN
            PRINT 'No es posible registrar más usuarios en esta convocatoria.';
        END
        -- Si no se ha alcanzado el límite y el usuario no está registrado, permitir el registro
        ELSE
        BEGIN
            INSERT INTO Registros (id_voluntario, id_convocatoria, fecha)
            VALUES (@iduser, @idconvo, GETDATE());

            UPDATE Convocatorias
            SET usuarios_registrados = usuarios_registrados + 1
            WHERE id = @idconvo;
        END

        COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000);
        SET @ErrorMessage = ERROR_MESSAGE();
        PRINT @ErrorMessage;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistroConvoUser2]    Script Date: 4/8/2024 18:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RegistroConvoUser2]
    @iduser INT,
    @idconvo INT
AS
BEGIN
    DECLARE @ErrorMessage NVARCHAR(4000);
    BEGIN TRANSACTION
    BEGIN TRY
        DECLARE @limite INT;
        DECLARE @usuarios INT;
        DECLARE @userExists INT;

        -- Obtener el límite de usuarios y el número actual de usuarios registrados
        SET @limite = (SELECT limite_usuarios FROM Convocatorias WHERE id = @idconvo);
        SET @usuarios = (SELECT usuarios_registrados FROM Convocatorias WHERE id = @idconvo);

        -- Verificar si el usuario ya está registrado en la convocatoria
        SET @userExists = (SELECT COUNT(*) FROM Registros WHERE id_voluntario = @iduser AND id_convocatoria = @idconvo);

        -- Si el usuario ya está registrado, no permitir el registro
        IF @userExists > 0
        BEGIN
            SET @ErrorMessage = 'El usuario ya está registrado en esta convocatoria.';
            THROW 50000, @ErrorMessage, 1;
        END
        -- Si se ha alcanzado el límite de usuarios, no permitir el registro
        ELSE IF @limite = @usuarios
        BEGIN
            SET @ErrorMessage = 'No es posible registrar más usuarios en esta convocatoria.';
            THROW 50000, @ErrorMessage, 1;
        END
        -- Si no se ha alcanzado el límite y el usuario no está registrado, permitir el registro
        ELSE
        BEGIN
            INSERT INTO Registros (id_voluntario, id_convocatoria, fecha)
            VALUES (@iduser, @idconvo, GETDATE());

            UPDATE Convocatorias
            SET usuarios_registrados = usuarios_registrados + 1
            WHERE id = @idconvo;
        END

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        SET @ErrorMessage = ERROR_MESSAGE();
        SELECT @ErrorMessage AS error_message;
    END CATCH;
END;
GO
USE [master]
GO
ALTER DATABASE [TerraForce] SET  READ_WRITE 
GO
