USE [gateway_api]
GO
/****** Object:  Table [dbo].[person_test]    Script Date: 2024-02-17 11:45:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person_test](
	[id] [int] NULL,
	[name] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[person_test] ([id], [name]) VALUES (1, N'hamid')
INSERT [dbo].[person_test] ([id], [name]) VALUES (2, N'ali')
INSERT [dbo].[person_test] ([id], [name]) VALUES (3, N'hasan')
GO
