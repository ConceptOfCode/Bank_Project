USE [online_shop]
GO
/****** Object:  Table [dbo].[sub_category]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sub_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sub_category_name] [varchar](50) NOT NULL,
	[order] [smallint] NOT NULL,
	[link_address] [varchar](100) NOT NULL,
	[status] [binary](1) NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sub_category]  WITH CHECK ADD  CONSTRAINT [SubCategory_category_id_5bc4a841_fk_Category_id] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[sub_category] CHECK CONSTRAINT [SubCategory_category_id_5bc4a841_fk_Category_id]
GO
