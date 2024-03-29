USE [master]
GO
/****** Object:  Database [online_shop]    Script Date: 2024-02-17 11:52:09 AM ******/
CREATE DATABASE [online_shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'online_shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\online_shop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'online_shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\online_shop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [online_shop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [online_shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [online_shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [online_shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [online_shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [online_shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [online_shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [online_shop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [online_shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [online_shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [online_shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [online_shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [online_shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [online_shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [online_shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [online_shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [online_shop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [online_shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [online_shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [online_shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [online_shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [online_shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [online_shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [online_shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [online_shop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [online_shop] SET  MULTI_USER 
GO
ALTER DATABASE [online_shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [online_shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [online_shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [online_shop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [online_shop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [online_shop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [online_shop] SET QUERY_STORE = OFF
GO
USE [online_shop]
GO
/****** Object:  User [owner_user]    Script Date: 2024-02-17 11:52:09 AM ******/
CREATE USER [owner_user] FOR LOGIN [_owner_] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[about_us]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[about_us](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descriptions] [varchar](5000) NOT NULL,
	[ad_photo] [varchar](100) NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_user]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[password] [varchar](128) NOT NULL,
	[last_login] [datetime2](6) NULL,
	[is_superuser] [smallint] NOT NULL,
	[username] [varchar](150) NOT NULL,
	[first_name] [varchar](150) NOT NULL,
	[last_name] [varchar](150) NOT NULL,
	[email] [varchar](254) NOT NULL,
	[is_staff] [smallint] NOT NULL,
	[is_active] [smallint] NOT NULL,
	[date_joined] [datetime2](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](50) NOT NULL,
	[order] [smallint] NOT NULL,
	[link_address] [varchar](100) NOT NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment_likes]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment_likes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[comment_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[email] [varchar](100) NOT NULL,
	[topic] [varchar](100) NULL,
	[text] [varchar](5000) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dashboard_items]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dashboard_items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[item_name] [varchar](50) NOT NULL,
	[link_address] [varchar](150) NOT NULL,
	[order] [smallint] NOT NULL,
	[is_active] [binary](1) NOT NULL,
	[has_child] [binary](1) NOT NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[dashboard_child_id] [int] NULL,
	[type_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dashboard_type]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dashboard_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[descriptions] [varchar](200) NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destinations]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destinations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[address] [varchar](1000) NOT NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discount_codes]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discount_codes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](100) NULL,
	[status] [bit] NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[discount_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discount_types]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discount_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[descriptions] [nvarchar](200) NULL,
	[status] [bit] NULL,
	[create_date_time] [datetime2](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discounts]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[percent_value] [varchar](50) NOT NULL,
	[from_date] [datetime2](0) NOT NULL,
	[to_date] [datetime2](0) NOT NULL,
	[status] [bit] NULL,
	[create_date_time] [datetime2](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factor]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[is_open] [binary](1) NOT NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factor_details]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factor_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[price] [varchar](100) NOT NULL,
	[count] [int] NOT NULL,
	[total] [int] NOT NULL,
	[has_transportation] [binary](1) NOT NULL,
	[use_discount_code] [binary](1) NOT NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[factor_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[get_update]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[get_update](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](500) NOT NULL,
	[last_send_date] [datetime2](0) NOT NULL,
	[create_date_time] [datetime2](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[office_information]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[office_information](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [varchar](200) NULL,
	[email] [varchar](100) NULL,
	[number] [smallint] NULL,
	[from_hour] [varchar](50) NULL,
	[to_hour] [varchar](50) NULL,
	[days] [varchar](300) NULL,
	[is_active] [binary](1) NOT NULL,
	[create_date_time] [datetime2](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](100) NOT NULL,
	[product_model] [varchar](300) NOT NULL,
	[product_color] [nvarchar](50) NULL,
	[product_size] [varchar](50) NULL,
	[product_image] [varchar](100) NOT NULL,
	[product_descriptions] [nvarchar](max) NULL,
	[product_amount] [int] NOT NULL,
	[product_is_stock] [bit] NOT NULL,
	[product_is_new] [bit] NOT NULL,
	[status] [bit] NOT NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[product_discount_id] [int] NULL,
	[product_type_id] [int] NULL,
 CONSTRAINT [PK__product__3213E83F86E88961] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_additional_specifications]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_additional_specifications](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [varchar](100) NOT NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[product_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_comments]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[comment_text] [varchar](3000) NOT NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[product_id] [int] NOT NULL,
	[product_rate_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_details]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_price] [varchar](100) NULL,
	[status] [bit] NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[product_id] [int] NOT NULL,
	[product_type_id] [int] NULL,
 CONSTRAINT [PK__product___3213E83F27B9AD3D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_type]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[descriptions] [nvarchar](500) NULL,
	[status] [bit] NULL,
	[create_date_time] [datetime2](0) NOT NULL,
 CONSTRAINT [PK__product___3213E83FAF7D5D5E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rates]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stars] [smallint] NOT NULL,
	[descriptions] [varchar](5000) NULL,
	[product_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[social_networks]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[social_networks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[social_name] [varchar](100) NOT NULL,
	[social_id] [varchar](100) NOT NULL,
	[status] [binary](1) NOT NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[team_member_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[special_discounts]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[special_discounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](100) NULL,
	[descriptions] [varchar](5000) NULL,
	[status] [bit] NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[product_id] [int] NOT NULL,
	[type_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sub_category]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sub_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sub_category_name] [varchar](50) NOT NULL,
	[order] [smallint] NOT NULL,
	[link_address] [varchar](100) NOT NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sub_sub_category]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sub_sub_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sub_sub_category_name] [varchar](50) NOT NULL,
	[order] [smallint] NOT NULL,
	[link_address] [varchar](100) NOT NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[sub_category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[team_members]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[team_members](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](100) NOT NULL,
	[last_name] [varchar](100) NOT NULL,
	[rule] [varchar](100) NOT NULL,
	[photo] [varchar](100) NOT NULL,
	[is_active] [binary](1) NOT NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[verify_codes]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[verify_codes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [int] NOT NULL,
	[expire] [datetime2](0) NOT NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[discounts] ADD  DEFAULT (getdate()) FOR [create_date_time]
GO
ALTER TABLE [dbo].[comment_likes]  WITH CHECK ADD  CONSTRAINT [CommentLikes_comment_id_7ec9e1de_fk_ProductComments_id] FOREIGN KEY([comment_id])
REFERENCES [dbo].[product_comments] ([id])
GO
ALTER TABLE [dbo].[comment_likes] CHECK CONSTRAINT [CommentLikes_comment_id_7ec9e1de_fk_ProductComments_id]
GO
ALTER TABLE [dbo].[comment_likes]  WITH CHECK ADD  CONSTRAINT [CommentLikes_user_id_356c9fba_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[comment_likes] CHECK CONSTRAINT [CommentLikes_user_id_356c9fba_fk_auth_user_id]
GO
ALTER TABLE [dbo].[dashboard_items]  WITH CHECK ADD  CONSTRAINT [DashboardItems_dashboard_child_id_e2ad01f9_fk_DashboardItems_id] FOREIGN KEY([dashboard_child_id])
REFERENCES [dbo].[dashboard_items] ([id])
GO
ALTER TABLE [dbo].[dashboard_items] CHECK CONSTRAINT [DashboardItems_dashboard_child_id_e2ad01f9_fk_DashboardItems_id]
GO
ALTER TABLE [dbo].[dashboard_items]  WITH CHECK ADD  CONSTRAINT [DashboardItems_type_id_d7b51a68_fk_DashboardType_id] FOREIGN KEY([type_id])
REFERENCES [dbo].[dashboard_type] ([id])
GO
ALTER TABLE [dbo].[dashboard_items] CHECK CONSTRAINT [DashboardItems_type_id_d7b51a68_fk_DashboardType_id]
GO
ALTER TABLE [dbo].[destinations]  WITH CHECK ADD  CONSTRAINT [Destinations_user_id_9085f18f_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[destinations] CHECK CONSTRAINT [Destinations_user_id_9085f18f_fk_auth_user_id]
GO
ALTER TABLE [dbo].[discount_codes]  WITH CHECK ADD  CONSTRAINT [FK_discount_codes_discounts] FOREIGN KEY([discount_id])
REFERENCES [dbo].[discounts] ([id])
GO
ALTER TABLE [dbo].[discount_codes] CHECK CONSTRAINT [FK_discount_codes_discounts]
GO
ALTER TABLE [dbo].[factor]  WITH CHECK ADD  CONSTRAINT [Factor_user_id_02f5ce8f_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[factor] CHECK CONSTRAINT [Factor_user_id_02f5ce8f_fk_auth_user_id]
GO
ALTER TABLE [dbo].[factor_details]  WITH CHECK ADD  CONSTRAINT [FactorDetails_factor_id_fb5bd3e4_fk_Factor_id] FOREIGN KEY([factor_id])
REFERENCES [dbo].[factor] ([id])
GO
ALTER TABLE [dbo].[factor_details] CHECK CONSTRAINT [FactorDetails_factor_id_fb5bd3e4_fk_Factor_id]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_discounts] FOREIGN KEY([product_discount_id])
REFERENCES [dbo].[discounts] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_discounts]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_product_typrid] FOREIGN KEY([product_type_id])
REFERENCES [dbo].[product_type] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_product_typrid]
GO
ALTER TABLE [dbo].[product_additional_specifications]  WITH CHECK ADD  CONSTRAINT [ProductAdditionalSpe_product_id_fba1550b_fk_Product_i] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product_additional_specifications] CHECK CONSTRAINT [ProductAdditionalSpe_product_id_fba1550b_fk_Product_i]
GO
ALTER TABLE [dbo].[product_comments]  WITH CHECK ADD  CONSTRAINT [ProductComments_product_id_fe768ff0_fk_Product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product_comments] CHECK CONSTRAINT [ProductComments_product_id_fe768ff0_fk_Product_id]
GO
ALTER TABLE [dbo].[product_comments]  WITH CHECK ADD  CONSTRAINT [ProductComments_product_rate_id_39436318_fk_Rates_id] FOREIGN KEY([product_rate_id])
REFERENCES [dbo].[rates] ([id])
GO
ALTER TABLE [dbo].[product_comments] CHECK CONSTRAINT [ProductComments_product_rate_id_39436318_fk_Rates_id]
GO
ALTER TABLE [dbo].[product_comments]  WITH CHECK ADD  CONSTRAINT [ProductComments_user_id_2f80ccf0_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[product_comments] CHECK CONSTRAINT [ProductComments_user_id_2f80ccf0_fk_auth_user_id]
GO
ALTER TABLE [dbo].[product_details]  WITH CHECK ADD  CONSTRAINT [ProductDetails_product_id_6624332d_fk_Product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product_details] CHECK CONSTRAINT [ProductDetails_product_id_6624332d_fk_Product_id]
GO
ALTER TABLE [dbo].[product_details]  WITH CHECK ADD  CONSTRAINT [ProductDetails_product_type_id_4c68e4fb_fk_ProductType_id] FOREIGN KEY([product_type_id])
REFERENCES [dbo].[product_type] ([id])
GO
ALTER TABLE [dbo].[product_details] CHECK CONSTRAINT [ProductDetails_product_type_id_4c68e4fb_fk_ProductType_id]
GO
ALTER TABLE [dbo].[rates]  WITH CHECK ADD  CONSTRAINT [Rates_product_id_cc47fe05_fk_Product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[rates] CHECK CONSTRAINT [Rates_product_id_cc47fe05_fk_Product_id]
GO
ALTER TABLE [dbo].[rates]  WITH CHECK ADD  CONSTRAINT [Rates_user_id_fd23b1b6_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[rates] CHECK CONSTRAINT [Rates_user_id_fd23b1b6_fk_auth_user_id]
GO
ALTER TABLE [dbo].[social_networks]  WITH CHECK ADD  CONSTRAINT [SocialNetworks_team_member_id_49fb5947_fk_TeamMembers_id] FOREIGN KEY([team_member_id])
REFERENCES [dbo].[team_members] ([id])
GO
ALTER TABLE [dbo].[social_networks] CHECK CONSTRAINT [SocialNetworks_team_member_id_49fb5947_fk_TeamMembers_id]
GO
ALTER TABLE [dbo].[special_discounts]  WITH CHECK ADD  CONSTRAINT [SpecialDiscounts_product_id_35ef16a7_fk_Product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[special_discounts] CHECK CONSTRAINT [SpecialDiscounts_product_id_35ef16a7_fk_Product_id]
GO
ALTER TABLE [dbo].[special_discounts]  WITH CHECK ADD  CONSTRAINT [SpecialDiscounts_type_id_fc4cb3e4_fk_DiscountTypes_id] FOREIGN KEY([type_id])
REFERENCES [dbo].[discount_types] ([id])
GO
ALTER TABLE [dbo].[special_discounts] CHECK CONSTRAINT [SpecialDiscounts_type_id_fc4cb3e4_fk_DiscountTypes_id]
GO
ALTER TABLE [dbo].[sub_category]  WITH CHECK ADD  CONSTRAINT [SubCategory_category_id_5bc4a841_fk_Category_id] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[sub_category] CHECK CONSTRAINT [SubCategory_category_id_5bc4a841_fk_Category_id]
GO
ALTER TABLE [dbo].[sub_sub_category]  WITH CHECK ADD  CONSTRAINT [SubSubCategory_sub_category_id_d26ce9d2_fk_SubCategory_id] FOREIGN KEY([sub_category_id])
REFERENCES [dbo].[sub_category] ([id])
GO
ALTER TABLE [dbo].[sub_sub_category] CHECK CONSTRAINT [SubSubCategory_sub_category_id_d26ce9d2_fk_SubCategory_id]
GO
ALTER TABLE [dbo].[team_members]  WITH CHECK ADD  CONSTRAINT [TeamMembers_user_id_57b11b79_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[team_members] CHECK CONSTRAINT [TeamMembers_user_id_57b11b79_fk_auth_user_id]
GO
ALTER TABLE [dbo].[factor_details]  WITH CHECK ADD CHECK  (([count]>(0)))
GO
ALTER TABLE [dbo].[factor_details]  WITH CHECK ADD CHECK  (([count]>=(0)))
GO
ALTER TABLE [dbo].[factor_details]  WITH CHECK ADD CHECK  (([total]>(0)))
GO
ALTER TABLE [dbo].[factor_details]  WITH CHECK ADD CHECK  (([total]>=(0)))
GO
ALTER TABLE [dbo].[office_information]  WITH CHECK ADD CHECK  (([number]>(0)))
GO
ALTER TABLE [dbo].[office_information]  WITH CHECK ADD CHECK  (([number]>=(0)))
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [CK__product__product__5FB337D6] CHECK  (([product_amount]>(0)))
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [CK__product__product__5FB337D6]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [CK__product__product__628FA481] CHECK  (([product_amount]>=(0)))
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [CK__product__product__628FA481]
GO
ALTER TABLE [dbo].[rates]  WITH CHECK ADD CHECK  (([stars]>(0)))
GO
ALTER TABLE [dbo].[rates]  WITH CHECK ADD CHECK  (([stars]>=(0)))
GO
/****** Object:  StoredProcedure [dbo].[sp_get_single_special_discount_type]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_get_single_special_discount_type] @typeId as nvarchar(max)
as
    select top 1 id as typeId, name, descriptions, status from discount_types where id = @typeId;
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_add_new_discount]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_add_new_discount](@disPercent nvarchar(max), @disFromDate nvarchar(max), @disToDate nvarchar(max),
                                          @disStatus nvarchar(max),
                                          @disCode nvarchar(max))
as
declare @insertId as int
insert into discounts (percent_value, from_date, to_date, status)
values (@disPercent, @disFromDate, @disToDate, @disStatus)
    set @insertId = (select top 1 id
                     from discounts
                     order by id desc);
insert into discount_codes (code, status, create_date_time, discount_id)
values (@disCode, @disStatus, getdate(), @insertId)
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_add_new_product]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_shop_add_new_product](@pName nvarchar(max), @pModel nvarchar(max), @pColor nvarchar(max),
                                         @pSize varchar(max),
                                         @pImage nvarchar(max), @pDesc nvarchar(max), @pAmount nvarchar(max),
                                         @pIsStock nvarchar(max),
                                         @pIsNew nvarchar(max), @pStatus nvarchar(max), @pPrice nvarchar(max),
                                         @pDiscountId nvarchar(max) =null,
                                         @pTypeId nvarchar(max) = null) as

insert into product (product_name, product_model, product_color, product_size, product_image, product_descriptions,
                     product_amount, product_is_stock, product_is_new, status, create_date_time, product_discount_id,
                     product_type_id)
values (@pName, @pModel, @pColor, @pSize, @pImage, @pDesc, convert(int, @pAmount),
        convert(int, @pIsStock),
        convert(int, @pIsNew),
        convert(int, @pStatus), getdate(), convert(int, @pDiscountId), convert(int, @pTypeId))

declare @insert_id as int
    set @insert_id = (select top 1 p.id
                      from product p
                      order by p.id desc)

insert into product_details (product_price, status, create_date_time, product_id, product_type_id)
values (@pPrice, 1, getdate(), @insert_id, @pTypeId)

    return 1
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_add_special_discount_type]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_add_special_discount_type] @specialTypeName as nvarchar(max), @specialTypeDescription as nvarchar(max), @specialTypeStatus as nvarchar(max)
as
    insert into discount_types (name, descriptions, status, create_date_time) values (@specialTypeName, @specialTypeDescription, @specialTypeStatus, getdate())
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_delete_discount]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_delete_discount] @discountId as nvarchar(max)
as
    delete from discount_codes where discount_id = @discountId;
    delete from discounts where id = @discountId;
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_delete_product]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_shop_delete_product] @productId int
as
    delete  from product_details where product_id = @productId
    delete from product where id = @productId;
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_edit_special_discount_type]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_edit_special_discount_type] @specialTypeId as nvarchar(max),
                                                        @specialTypeName as nvarchar(max),
                                                        @specialTypeDescription as nvarchar(max),
                                                        @specialTypeStatus as nvarchar(max)
    as
    update discount_types
    set name         = @specialTypeName,
        descriptions = @specialTypeDescription,
        status       = @specialTypeStatus
    where id = @specialTypeId
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_get_all_discounts]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_shop_get_all_discounts]
as
select d.id            as discountId,
       d.from_date     as discountFromDate,
       d.to_date       as discountToDate,
       d.percent_value as discountPercentValue,
       d.status        as discountStatus,
       dc.code         as discountCode
from discounts d
         inner join discount_codes dc on d.id = dc.discount_id
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_get_all_product_info]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_get_all_product_info]
as
select id as productId, product_name as productName, product_model as productModel, product_image as productImage
from product
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_get_all_product_types]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_shop_get_all_product_types]
as
    select id as productTypeId, name as productTypeName from product_type;
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_get_all_special_discount_types]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_shop_get_all_special_discount_types]
as
    select id as typeId, name, descriptions, status, create_date_time as createDateTime from discount_types
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_get_enable_discounts]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_get_enable_discounts]
as
    select id as discountId, percent_value as discountPercentValue
from discounts
where status = 1
  and (datediff(minute, from_date, getdate()) > 1 and datediff(minute , to_date, getdate()) <=0 )
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_get_single_discount]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_shop_get_single_discount] @discountId as nvarchar(max)
as
select top 1 d.id            as discountId,
       d.percent_value as discountPercentValue,
       d.from_date     as discountFromDate,
       d.to_date       as discountToDate,
       dc.code         as discountCode,
       d.status        as discountStatus
from discounts d
         inner join discount_codes dc on d.id = dc.discount_id
where d.id = @discountId
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_get_single_product]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_get_single_product] @productId int
as
    select * from product where id = @productId;
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_get_single_product_detail]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_get_single_product_detail] @productId int
as
    select * from product_details where product_id = @productId;
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_update_discount]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_update_discount] @disId as nvarchar(max), @disPercent as nvarchar(max),
                                         @disFromDate as nvarchar(max),
                                         @disToDate as nvarchar(max), @disCode as nvarchar(max),
                                         @disStatus as nvarchar(max)
as
update discounts
set percent_value = @disPercent,
    from_date     = @disFromDate,
    to_date=@disToDate,
    status        = @disStatus
where id = @disId;

update discount_codes
set code = @disCode
where discount_id = @disId;
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_update_new_product]    Script Date: 2024-02-17 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_update_new_product](@pId nvarchar(max), @pName nvarchar(max), @pModel nvarchar(max),
                                            @pColor nvarchar(max),
                                            @pSize varchar(max),
                                            @pImage nvarchar(max), @pIsImageChanged nvarchar(max),
                                            @pDesc nvarchar(max), @pAmount nvarchar(max),
                                            @pIsStock nvarchar(max),
                                            @pIsNew nvarchar(max), @pStatus nvarchar(max), @pPrice nvarchar(max),
                                            @pDiscountId nvarchar(max) =null,
                                            @pTypeId nvarchar(max) = null) as

IF @pIsImageChanged = '1'
begin

update product
set product_name         = @pName,
    product_model        = @pModel,
    product_color        = @pColor,
    product_size         = @pSize,
    product_image        = @pImage,
    product_descriptions = @pDesc,
    product_amount       = @pAmount,
    product_is_stock     = @pIsStock,
    product_is_new       = @pIsNew,
    status               = @pStatus,
    create_date_time     = getdate(),
    product_discount_id  = @pDiscountId,
    product_type_id      = @pTypeId
where id = @pId;

update product_details
set product_price = @pPrice
where product_id = @pId;

    return 1

end
else
begin
    update product
set product_name         = @pName,
    product_model        = @pModel,
    product_color        = @pColor,
    product_size         = @pSize,
    product_descriptions = @pDesc,
    product_amount       = @pAmount,
    product_is_stock     = @pIsStock,
    product_is_new       = @pIsNew,
    status               = @pStatus,
    create_date_time     = getdate(),
    product_discount_id  = @pDiscountId,
    product_type_id      = @pTypeId
where id = @pId;

update product_details
set product_price = @pPrice
where product_id = @pId;

    return 1
end
GO
USE [master]
GO
ALTER DATABASE [online_shop] SET  READ_WRITE 
GO
