USE [online_shop]
GO
/****** Object:  Table [dbo].[auth_user]    Script Date: 2024-02-17 11:49:30 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [username]    Script Date: 2024-02-17 11:49:30 AM ******/
ALTER TABLE [dbo].[auth_user] ADD  CONSTRAINT [username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
