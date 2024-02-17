USE [online_shop]
GO
/****** Object:  Table [dbo].[product_comments]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[comment_text] [varchar](3000) NOT NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[product_id] [int] NOT NULL,
	[product_rate_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[product_comments]  WITH CHECK ADD  CONSTRAINT [ProductComments_product_id_fe768ff0_fk_Product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product_comments] CHECK CONSTRAINT [ProductComments_product_id_fe768ff0_fk_Product_id]
GO
ALTER TABLE [dbo].[product_comments]  WITH CHECK ADD  CONSTRAINT [ProductComments_product_rate_id_39436318_fk_Rates_id] FOREIGN KEY([product_rate_id])
REFERENCES [dbo].[rates] ([id])
GO
ALTER TABLE [dbo].[product_comments] CHECK CONSTRAINT [ProductComments_product_rate_id_39436318_fk_Rates_id]
GO
ALTER TABLE [dbo].[product_comments]  WITH CHECK ADD  CONSTRAINT [ProductComments_user_id_2f80ccf0_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[product_comments] CHECK CONSTRAINT [ProductComments_user_id_2f80ccf0_fk_auth_user_id]
GO
