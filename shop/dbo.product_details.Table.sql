USE [online_shop]
GO
/****** Object:  Table [dbo].[product_details]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_price] [varchar](100) NULL,
	[status] [bit] NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[product_id] [int] NOT NULL,
	[product_type_id] [int] NULL,
 CONSTRAINT [PK__product___3213E83F27B9AD3D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[product_details]  WITH CHECK ADD  CONSTRAINT [ProductDetails_product_id_6624332d_fk_Product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product_details] CHECK CONSTRAINT [ProductDetails_product_id_6624332d_fk_Product_id]
GO
ALTER TABLE [dbo].[product_details]  WITH CHECK ADD  CONSTRAINT [ProductDetails_product_type_id_4c68e4fb_fk_ProductType_id] FOREIGN KEY([product_type_id])
REFERENCES [dbo].[product_type] ([id])
GO
ALTER TABLE [dbo].[product_details] CHECK CONSTRAINT [ProductDetails_product_type_id_4c68e4fb_fk_ProductType_id]
GO
