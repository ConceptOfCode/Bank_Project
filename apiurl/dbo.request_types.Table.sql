USE [gateway_api]
GO
/****** Object:  Table [dbo].[request_types]    Script Date: 2024-02-17 11:45:28 AM ******/
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
SET IDENTITY_INSERT [dbo].[request_types] ON 

INSERT [dbo].[request_types] ([id], [type]) VALUES (1, N'POST')
SET IDENTITY_INSERT [dbo].[request_types] OFF
GO
