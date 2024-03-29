USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_delete_discount]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_delete_discount] @discountId as nvarchar(max)
as
    delete from discount_codes where discount_id = @discountId;
    delete from discounts where id = @discountId;
GO
