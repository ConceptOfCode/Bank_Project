USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_delete_product]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_shop_delete_product] @productId int
as
    delete  from product_details where product_id = @productId
    delete from product where id = @productId;
GO
