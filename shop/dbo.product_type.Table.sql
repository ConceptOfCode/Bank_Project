USE [online_shop]
GO
/****** Object:  Table [dbo].[product_type]    Script Date: 2024-02-17 11:49:30 AM ******/
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
SET IDENTITY_INSERT [dbo].[product_type] ON 

INSERT [dbo].[product_type] ([id], [name], [descriptions], [status], [create_date_time]) VALUES (5, N'لنت ترمز', N'', 1, CAST(N'2023-11-07T21:57:43.0000000' AS DateTime2))
INSERT [dbo].[product_type] ([id], [name], [descriptions], [status], [create_date_time]) VALUES (6, N'صفحه کلاچ', N'-', 1, CAST(N'2023-11-23T11:02:15.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[product_type] OFF
GO
