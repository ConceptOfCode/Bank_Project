USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_get_single_product]    Script Date: 2024-02-17 11:49:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_get_single_product] @productId int
as
    select * from product where id = @productId;
GO
