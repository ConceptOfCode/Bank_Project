USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_update_new_product]    Script Date: 2024-02-17 11:49:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_update_new_product](@pId nvarchar(max), @pName nvarchar(max), @pModel nvarchar(max),
                                            @pColor nvarchar(max),
                                            @pSize varchar(max),
                                            @pImage nvarchar(max), @pIsImageChanged nvarchar(max),
                                            @pDesc nvarchar(max), @pAmount nvarchar(max),
                                            @pIsStock nvarchar(max),
                                            @pIsNew nvarchar(max), @pStatus nvarchar(max), @pPrice nvarchar(max),
                                            @pDiscountId nvarchar(max) =null,
                                            @pTypeId nvarchar(max) = null) as

IF @pIsImageChanged = '1'
begin

update product
set product_name         = @pName,
    product_model        = @pModel,
    product_color        = @pColor,
    product_size         = @pSize,
    product_image        = @pImage,
    product_descriptions = @pDesc,
    product_amount       = @pAmount,
    product_is_stock     = @pIsStock,
    product_is_new       = @pIsNew,
    status               = @pStatus,
    create_date_time     = getdate(),
    product_discount_id  = @pDiscountId,
    product_type_id      = @pTypeId
where id = @pId;

update product_details
set product_price = @pPrice
where product_id = @pId;

    return 1

end
else
begin
    update product
set product_name         = @pName,
    product_model        = @pModel,
    product_color        = @pColor,
    product_size         = @pSize,
    product_descriptions = @pDesc,
    product_amount       = @pAmount,
    product_is_stock     = @pIsStock,
    product_is_new       = @pIsNew,
    status               = @pStatus,
    create_date_time     = getdate(),
    product_discount_id  = @pDiscountId,
    product_type_id      = @pTypeId
where id = @pId;

update product_details
set product_price = @pPrice
where product_id = @pId;

    return 1
end
GO
