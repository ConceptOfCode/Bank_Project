USE [master]
GO
/****** Object:  Database [gateway_api]    Script Date: 2024-02-17 11:51:42 AM ******/
CREATE DATABASE [gateway_api]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gateway_api', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\gateway_api.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'gateway_api_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\gateway_api_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [gateway_api] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gateway_api].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gateway_api] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gateway_api] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gateway_api] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gateway_api] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gateway_api] SET ARITHABORT OFF 
GO
ALTER DATABASE [gateway_api] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [gateway_api] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gateway_api] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gateway_api] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gateway_api] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gateway_api] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gateway_api] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gateway_api] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gateway_api] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gateway_api] SET  ENABLE_BROKER 
GO
ALTER DATABASE [gateway_api] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gateway_api] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gateway_api] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gateway_api] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gateway_api] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gateway_api] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [gateway_api] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gateway_api] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [gateway_api] SET  MULTI_USER 
GO
ALTER DATABASE [gateway_api] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gateway_api] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gateway_api] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gateway_api] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [gateway_api] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [gateway_api] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [gateway_api] SET QUERY_STORE = OFF
GO
USE [gateway_api]
GO
/****** Object:  User [owner_user]    Script Date: 2024-02-17 11:51:42 AM ******/
CREATE USER [owner_user] FOR LOGIN [_owner_] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2024-02-17 11:51:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[api_projects]    Script Date: 2024-02-17 11:51:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[api_projects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[project_name] [nvarchar](max) NULL,
	[use_default_datasource] [bit] NOT NULL,
	[datasource_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_api_projects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[api_urls]    Script Date: 2024-02-17 11:51:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[api_urls](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url_name] [nvarchar](max) NOT NULL,
	[host_name] [nvarchar](max) NULL,
	[port] [int] NOT NULL,
	[prefix] [nvarchar](max) NULL,
	[parameters] [nvarchar](max) NULL,
	[project_id] [int] NOT NULL,
	[request_type_id] [int] NOT NULL,
	[url] [nvarchar](max) NOT NULL,
	[url_descriptons] [nvarchar](max) NULL,
	[create_date_time] [datetime2](7) NOT NULL,
	[sp_name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_api_urls] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BridgeClasses]    Script Date: 2024-02-17 11:51:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BridgeClasses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_BridgeClasses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[person_test]    Script Date: 2024-02-17 11:51:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person_test](
	[id] [int] NULL,
	[name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[request_types]    Script Date: 2024-02-17 11:51:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[request_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](max) NULL,
 CONSTRAINT [PK_request_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_api_urls_project_id]    Script Date: 2024-02-17 11:51:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_api_urls_project_id] ON [dbo].[api_urls]
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_api_urls_request_type_id]    Script Date: 2024-02-17 11:51:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_api_urls_request_type_id] ON [dbo].[api_urls]
(
	[request_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[api_urls] ADD  CONSTRAINT [DF_api_urls_create_date_time]  DEFAULT (getdate()) FOR [create_date_time]
GO
ALTER TABLE [dbo].[api_urls] ADD  DEFAULT (N'') FOR [sp_name]
GO
ALTER TABLE [dbo].[api_urls]  WITH CHECK ADD  CONSTRAINT [FK_api_urls_api_projects_project_id] FOREIGN KEY([project_id])
REFERENCES [dbo].[api_projects] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[api_urls] CHECK CONSTRAINT [FK_api_urls_api_projects_project_id]
GO
ALTER TABLE [dbo].[api_urls]  WITH CHECK ADD  CONSTRAINT [FK_api_urls_request_types_request_type_id] FOREIGN KEY([request_type_id])
REFERENCES [dbo].[request_types] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[api_urls] CHECK CONSTRAINT [FK_api_urls_request_types_request_type_id]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetApiUrl]    Script Date: 2024-02-17 11:51:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_GetApiUrl] @url varchar(max)
as
select id        as Id,
       url_name  as UrlName,
       sp_name   as SpName,
       host_name as HostName,
       port      as Port,
       prefix    as Prefix,
       parameters as Parameters,
       url as Url
from api_urls
where url = @url;
GO
/****** Object:  StoredProcedure [dbo].[test]    Script Date: 2024-02-17 11:51:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[test]
as
select * from api_urls;
GO
/****** Object:  StoredProcedure [dbo].[test2]    Script Date: 2024-02-17 11:51:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[test2] @id as int
as
select * from api_urls where id = @id
GO
/****** Object:  StoredProcedure [dbo].[test3]    Script Date: 2024-02-17 11:51:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[test3] @name as varchar(50)
as
select * from person_test where name = @name
GO
USE [master]
GO
ALTER DATABASE [gateway_api] SET  READ_WRITE 
GO
