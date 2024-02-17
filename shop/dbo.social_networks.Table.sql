USE [online_shop]
GO
/****** Object:  Table [dbo].[social_networks]    Script Date: 2024-02-17 11:49:30 AM ******/
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
ALTER TABLE [dbo].[social_networks]  WITH CHECK ADD  CONSTRAINT [SocialNetworks_team_member_id_49fb5947_fk_TeamMembers_id] FOREIGN KEY([team_member_id])
REFERENCES [dbo].[team_members] ([id])
GO
ALTER TABLE [dbo].[social_networks] CHECK CONSTRAINT [SocialNetworks_team_member_id_49fb5947_fk_TeamMembers_id]
GO
