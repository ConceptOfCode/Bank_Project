USE [online_shop]
GO
/****** Object:  Table [dbo].[factor]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[is_open] [binary](1) NOT NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[factor]  WITH CHECK ADD  CONSTRAINT [Factor_user_id_02f5ce8f_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[factor] CHECK CONSTRAINT [Factor_user_id_02f5ce8f_fk_auth_user_id]
GO
