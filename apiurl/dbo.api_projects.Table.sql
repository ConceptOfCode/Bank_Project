USE [gateway_api]
GO
/****** Object:  Table [dbo].[api_projects]    Script Date: 2024-02-17 11:45:28 AM ******/
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
SET IDENTITY_INSERT [dbo].[api_projects] ON 

INSERT [dbo].[api_projects] ([id], [project_name], [use_default_datasource], [datasource_name]) VALUES (1, N'online_store', 1, NULL)
SET IDENTITY_INSERT [dbo].[api_projects] OFF
GO
