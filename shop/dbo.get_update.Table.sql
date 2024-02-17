USE [online_shop]
GO
/****** Object:  Table [dbo].[get_update]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[get_update](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](500) NOT NULL,
	[last_send_date] [datetime2](0) NOT NULL,
	[create_date_time] [datetime2](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
