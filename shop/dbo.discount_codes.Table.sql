USE [online_shop]
GO
/****** Object:  Table [dbo].[discount_codes]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discount_codes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](100) NULL,
	[status] [bit] NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[discount_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[discount_codes]  WITH CHECK ADD  CONSTRAINT [FK_discount_codes_discounts] FOREIGN KEY([discount_id])
REFERENCES [dbo].[discounts] ([id])
GO
ALTER TABLE [dbo].[discount_codes] CHECK CONSTRAINT [FK_discount_codes_discounts]
GO
