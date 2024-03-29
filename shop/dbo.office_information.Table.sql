USE [online_shop]
GO
/****** Object:  Table [dbo].[office_information]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[office_information](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [varchar](200) NULL,
	[email] [varchar](100) NULL,
	[number] [smallint] NULL,
	[from_hour] [varchar](50) NULL,
	[to_hour] [varchar](50) NULL,
	[days] [varchar](300) NULL,
	[is_active] [binary](1) NOT NULL,
	[create_date_time] [datetime2](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[office_information]  WITH CHECK ADD CHECK  (([number]>(0)))
GO
ALTER TABLE [dbo].[office_information]  WITH CHECK ADD CHECK  (([number]>=(0)))
GO
