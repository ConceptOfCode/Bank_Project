USE [online_shop]
GO
/****** Object:  Table [dbo].[product]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](100) NOT NULL,
	[product_model] [varchar](300) NOT NULL,
	[product_color] [nvarchar](50) NULL,
	[product_size] [varchar](50) NULL,
	[product_image] [varchar](100) NOT NULL,
	[product_descriptions] [nvarchar](max) NULL,
	[product_amount] [int] NOT NULL,
	[product_is_stock] [bit] NOT NULL,
	[product_is_new] [bit] NOT NULL,
	[status] [bit] NOT NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[product_discount_id] [int] NULL,
	[product_type_id] [int] NULL,
 CONSTRAINT [PK__product__3213E83F86E88961] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_discounts] FOREIGN KEY([product_discount_id])
REFERENCES [dbo].[discounts] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_discounts]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_product_typrid] FOREIGN KEY([product_type_id])
REFERENCES [dbo].[product_type] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_product_typrid]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [CK__product__product__5FB337D6] CHECK  (([product_amount]>(0)))
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [CK__product__product__5FB337D6]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [CK__product__product__628FA481] CHECK  (([product_amount]>=(0)))
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [CK__product__product__628FA481]
GO
