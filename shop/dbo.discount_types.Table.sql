USE [online_shop]
GO
/****** Object:  Table [dbo].[discount_types]    Script Date: 2024-02-17 11:49:30 AM ******/
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
SET IDENTITY_INSERT [dbo].[discount_types] ON 

INSERT [dbo].[discount_types] ([id], [name], [descriptions], [status], [create_date_time]) VALUES (1, N's', N'test', 1, CAST(N'2024-02-01T13:00:54.0000000' AS DateTime2))
INSERT [dbo].[discount_types] ([id], [name], [descriptions], [status], [create_date_time]) VALUES (2, N'test3s', N'ali', 0, CAST(N'2024-02-01T13:02:53.0000000' AS DateTime2))
INSERT [dbo].[discount_types] ([id], [name], [descriptions], [status], [create_date_time]) VALUES (3, N'سلامs', N'asasas', 1, CAST(N'2024-02-11T14:07:23.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[discount_types] OFF
GO
