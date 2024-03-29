USE [online_shop]
GO
/****** Object:  Table [dbo].[comment_likes]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment_likes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[comment_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[comment_likes]  WITH CHECK ADD  CONSTRAINT [CommentLikes_comment_id_7ec9e1de_fk_ProductComments_id] FOREIGN KEY([comment_id])
REFERENCES [dbo].[product_comments] ([id])
GO
ALTER TABLE [dbo].[comment_likes] CHECK CONSTRAINT [CommentLikes_comment_id_7ec9e1de_fk_ProductComments_id]
GO
ALTER TABLE [dbo].[comment_likes]  WITH CHECK ADD  CONSTRAINT [CommentLikes_user_id_356c9fba_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[comment_likes] CHECK CONSTRAINT [CommentLikes_user_id_356c9fba_fk_auth_user_id]
GO
