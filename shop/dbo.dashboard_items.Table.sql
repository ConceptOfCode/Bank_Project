USE [online_shop]
GO
/****** Object:  Table [dbo].[dashboard_items]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dashboard_items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[item_name] [varchar](50) NOT NULL,
	[link_address] [varchar](150) NOT NULL,
	[order] [smallint] NOT NULL,
	[is_active] [binary](1) NOT NULL,
	[has_child] [binary](1) NOT NULL,
	[create_date_time] [datetime2](0) NOT NULL,
	[dashboard_child_id] [int] NULL,
	[type_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dashboard_items]  WITH CHECK ADD  CONSTRAINT [DashboardItems_dashboard_child_id_e2ad01f9_fk_DashboardItems_id] FOREIGN KEY([dashboard_child_id])
REFERENCES [dbo].[dashboard_items] ([id])
GO
ALTER TABLE [dbo].[dashboard_items] CHECK CONSTRAINT [DashboardItems_dashboard_child_id_e2ad01f9_fk_DashboardItems_id]
GO
ALTER TABLE [dbo].[dashboard_items]  WITH CHECK ADD  CONSTRAINT [DashboardItems_type_id_d7b51a68_fk_DashboardType_id] FOREIGN KEY([type_id])
REFERENCES [dbo].[dashboard_type] ([id])
GO
ALTER TABLE [dbo].[dashboard_items] CHECK CONSTRAINT [DashboardItems_type_id_d7b51a68_fk_DashboardType_id]
GO
