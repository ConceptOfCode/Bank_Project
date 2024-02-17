USE [online_shop]
GO
/****** Object:  Table [dbo].[about_us]    Script Date: 2024-02-17 11:49:30 AM ******/
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
