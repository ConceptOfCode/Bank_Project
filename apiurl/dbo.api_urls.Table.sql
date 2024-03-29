USE [gateway_api]
GO
/****** Object:  Table [dbo].[api_urls]    Script Date: 2024-02-17 11:45:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[api_urls](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url_name] [nvarchar](max) NOT NULL,
	[host_name] [nvarchar](max) NULL,
	[port] [int] NOT NULL,
	[prefix] [nvarchar](max) NULL,
	[parameters] [nvarchar](max) NULL,
	[project_id] [int] NOT NULL,
	[request_type_id] [int] NOT NULL,
	[url] [nvarchar](max) NOT NULL,
	[url_descriptons] [nvarchar](max) NULL,
	[create_date_time] [datetime2](7) NOT NULL,
	[sp_name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_api_urls] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[api_urls] ON 

INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (10, N'addnewproduct', N'http://localhost:', 5128, N'add-new-product', N'{

}', 1, 1, N'http://localhost:5128/add-new-product', N'.', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'sp_shop_add_new_product')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (14, N'get all product types', N'http://localhost:', 5128, N'all-product-types', NULL, 1, 1, N'http://localhost:5128/all-product-types', NULL, CAST(N'2023-11-23T10:44:04.0000000' AS DateTime2), N'sp_shop_get_all_product_types')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (15, N'get all enable discounts', N'http://localhost:', 5128, N'discount/enable-list', NULL, 1, 1, N'http://localhost:5128/discount/enable-list', NULL, CAST(N'2023-11-23T11:09:29.0000000' AS DateTime2), N'sp_shop_get_enable_discounts')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (16, N'short info from all products', N'http://localhost:', 5128, N'all/product-short-info', NULL, 1, 1, N'http://localhost:5128/all/product-short-info', NULL, CAST(N'2023-11-23T13:43:27.0000000' AS DateTime2), N'sp_shop_get_all_product_info')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (17, N'delete one product', N'http://localhost:', 5128, N'delete', NULL, 1, 1, N'http://localhost:5128/delete', NULL, CAST(N'2023-11-24T10:48:19.0000000' AS DateTime2), N'sp_shop_delete_product')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (18, N'get single product', N'http://localhost:', 5128, N'get-single-product', NULL, 1, 1, N'http://localhost:5128/get-single-product', NULL, CAST(N'2023-11-30T15:02:00.0000000' AS DateTime2), N'sp_shop_get_single_product')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (19, N'get single product detail', N'http://localhost:', 5128, N'get-single-pdetail', NULL, 1, 1, N'http://localhost:5128/get-single-pdetail', NULL, CAST(N'2023-11-30T15:03:08.0000000' AS DateTime2), N'sp_shop_get_single_product_detail')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (20, N'update product', N'http://localhost:', 5128, N'product/update', NULL, 1, 1, N'http://localhost:5128/product/update', NULL, CAST(N'2023-11-30T19:54:45.0000000' AS DateTime2), N'sp_shop_update_new_product')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (21, N'add new discount', N'http://localhost:', 5128, N'discount/add', NULL, 1, 1, N'http://localhost:5128/discount/add', NULL, CAST(N'2023-12-28T13:11:26.0000000' AS DateTime2), N'sp_shop_add_new_discount')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (22, N'get all discounts', N'http://localhost:', 5128, N'discount/all', NULL, 1, 1, N'http://localhost:5128/discount/all', NULL, CAST(N'2023-12-28T15:15:36.0000000' AS DateTime2), N'sp_shop_get_all_discounts')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (23, N'get single discount', N'http://localhost:', 5128, N'discount/get-single', NULL, 1, 1, N'http://localhost:5128/discount/get-single', NULL, CAST(N'2024-01-04T19:39:22.0000000' AS DateTime2), N'sp_shop_get_single_discount')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (24, N'update a discount', N'http://localhost:', 5128, N'discount/edit', NULL, 1, 1, N'http://localhost:5128/discount/edit', NULL, CAST(N'2024-01-04T19:57:13.0000000' AS DateTime2), N'sp_shop_update_discount')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (25, N'delete a discount', N'http://localhost:', 5128, N'discount/delete', NULL, 1, 1, N'http://localhost:5128/discount/delete', NULL, CAST(N'2024-01-20T20:56:30.0000000' AS DateTime2), N'sp_shop_delete_discount')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (26, N'all special discount types', N'http://localhost:', 5128, N'specials/types/all', NULL, 1, 1, N'http://localhost:5128/specials/types/all', NULL, CAST(N'2024-02-01T12:56:48.0000000' AS DateTime2), N'sp_shop_get_all_special_discount_types')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (27, N'get single special discount type', N'http://localhost:', 5128, N'special/types/get-single', NULL, 1, 1, N'http://localhost:5128/specials/types/get-single', NULL, CAST(N'2024-02-08T15:09:43.0000000' AS DateTime2), N'sp_get_single_special_discount_type')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (28, N'edit special type', N'http://localhost:', 5128, N'special/types/edit', NULL, 1, 1, N'http://localhost:5128/specials/types/edit', NULL, CAST(N'2024-02-08T16:06:29.0000000' AS DateTime2), N'sp_shop_edit_special_discount_type')
INSERT [dbo].[api_urls] ([id], [url_name], [host_name], [port], [prefix], [parameters], [project_id], [request_type_id], [url], [url_descriptons], [create_date_time], [sp_name]) VALUES (29, N'add new special type ', N'http://localhost:', 5128, N'special/types/add', NULL, 1, 1, N'http://localhost:5128/specials/types/add', NULL, CAST(N'2024-02-11T14:06:53.0000000' AS DateTime2), N'sp_shop_add_special_discount_type')
SET IDENTITY_INSERT [dbo].[api_urls] OFF
GO
/****** Object:  Index [IX_api_urls_project_id]    Script Date: 2024-02-17 11:45:29 AM ******/
CREATE NONCLUSTERED INDEX [IX_api_urls_project_id] ON [dbo].[api_urls]
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_api_urls_request_type_id]    Script Date: 2024-02-17 11:45:29 AM ******/
CREATE NONCLUSTERED INDEX [IX_api_urls_request_type_id] ON [dbo].[api_urls]
(
	[request_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[api_urls] ADD  CONSTRAINT [DF_api_urls_create_date_time]  DEFAULT (getdate()) FOR [create_date_time]
GO
ALTER TABLE [dbo].[api_urls] ADD  DEFAULT (N'') FOR [sp_name]
GO
ALTER TABLE [dbo].[api_urls]  WITH CHECK ADD  CONSTRAINT [FK_api_urls_api_projects_project_id] FOREIGN KEY([project_id])
REFERENCES [dbo].[api_projects] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[api_urls] CHECK CONSTRAINT [FK_api_urls_api_projects_project_id]
GO
ALTER TABLE [dbo].[api_urls]  WITH CHECK ADD  CONSTRAINT [FK_api_urls_request_types_request_type_id] FOREIGN KEY([request_type_id])
REFERENCES [dbo].[request_types] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[api_urls] CHECK CONSTRAINT [FK_api_urls_request_types_request_type_id]
GO
