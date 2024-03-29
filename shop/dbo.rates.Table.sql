USE [online_shop]
GO
/****** Object:  Table [dbo].[rates]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stars] [smallint] NOT NULL,
	[descriptions] [varchar](5000) NULL,
	[product_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[rates]  WITH CHECK ADD  CONSTRAINT [Rates_product_id_cc47fe05_fk_Product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[rates] CHECK CONSTRAINT [Rates_product_id_cc47fe05_fk_Product_id]
GO
ALTER TABLE [dbo].[rates]  WITH CHECK ADD  CONSTRAINT [Rates_user_id_fd23b1b6_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[rates] CHECK CONSTRAINT [Rates_user_id_fd23b1b6_fk_auth_user_id]
GO
ALTER TABLE [dbo].[rates]  WITH CHECK ADD CHECK  (([stars]>(0)))
GO
ALTER TABLE [dbo].[rates]  WITH CHECK ADD CHECK  (([stars]>=(0)))
GO
