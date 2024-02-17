USE [online_shop]
GO
/****** Object:  Table [dbo].[team_members]    Script Date: 2024-02-17 11:49:30 AM ******/
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
ALTER TABLE [dbo].[team_members]  WITH CHECK ADD  CONSTRAINT [TeamMembers_user_id_57b11b79_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[team_members] CHECK CONSTRAINT [TeamMembers_user_id_57b11b79_fk_auth_user_id]
GO
