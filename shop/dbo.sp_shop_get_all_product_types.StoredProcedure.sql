USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_get_all_product_types]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_shop_get_all_product_types]
as
    select id as productTypeId, name as productTypeName from product_type;
GO
