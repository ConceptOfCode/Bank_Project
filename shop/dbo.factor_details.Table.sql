USE [online_shop]
GO
/****** Object:  Table [dbo].[factor_details]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factor_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[price] [varchar](100) NOT NULL,
	[count] [int] NOT NULL,
	[total] [int] NOT NULL,
	[has_transportation] [binary](1) NOT NULL,
	[use_discount_code] [binary](1) NOT NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[factor_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[factor_details]  WITH CHECK ADD  CONSTRAINT [FactorDetails_factor_id_fb5bd3e4_fk_Factor_id] FOREIGN KEY([factor_id])
REFERENCES [dbo].[factor] ([id])
GO
ALTER TABLE [dbo].[factor_details] CHECK CONSTRAINT [FactorDetails_factor_id_fb5bd3e4_fk_Factor_id]
GO
ALTER TABLE [dbo].[factor_details]  WITH CHECK ADD CHECK  (([count]>(0)))
GO
ALTER TABLE [dbo].[factor_details]  WITH CHECK ADD CHECK  (([count]>=(0)))
GO
ALTER TABLE [dbo].[factor_details]  WITH CHECK ADD CHECK  (([total]>(0)))
GO
ALTER TABLE [dbo].[factor_details]  WITH CHECK ADD CHECK  (([total]>=(0)))
GO
