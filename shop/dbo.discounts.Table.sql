USE [online_shop]
GO
/****** Object:  Table [dbo].[discounts]    Script Date: 2024-02-17 11:49:30 AM ******/
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
SET IDENTITY_INSERT [dbo].[discounts] ON 

INSERT [dbo].[discounts] ([id], [percent_value], [from_date], [to_date], [status], [create_date_time]) VALUES (3, N'10', CAST(N'2023-12-22T16:55:00.0000000' AS DateTime2), CAST(N'2023-12-28T12:57:30.0000000' AS DateTime2), 1, CAST(N'2023-12-28T12:57:30.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[discounts] OFF
GO
ALTER TABLE [dbo].[discounts] ADD  DEFAULT (getdate()) FOR [create_date_time]
GO
