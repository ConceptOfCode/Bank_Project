USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_get_all_product_info]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_get_all_product_info]
as
select id as productId, product_name as productName, product_model as productModel, product_image as productImage
from product
GO
