USE [online_shop]
GO
/****** Object:  Table [dbo].[special_discounts]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[special_discounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](100) NULL,
	[descriptions] [varchar](5000) NULL,
	[status] [bit] NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[product_id] [int] NOT NULL,
	[type_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[special_discounts]  WITH CHECK ADD  CONSTRAINT [SpecialDiscounts_product_id_35ef16a7_fk_Product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[special_discounts] CHECK CONSTRAINT [SpecialDiscounts_product_id_35ef16a7_fk_Product_id]
GO
ALTER TABLE [dbo].[special_discounts]  WITH CHECK ADD  CONSTRAINT [SpecialDiscounts_type_id_fc4cb3e4_fk_DiscountTypes_id] FOREIGN KEY([type_id])
REFERENCES [dbo].[discount_types] ([id])
GO
ALTER TABLE [dbo].[special_discounts] CHECK CONSTRAINT [SpecialDiscounts_type_id_fc4cb3e4_fk_DiscountTypes_id]
GO
