USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_add_new_product]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_shop_add_new_product](@pName nvarchar(max), @pModel nvarchar(max), @pColor nvarchar(max),
                                         @pSize varchar(max),
                                         @pImage nvarchar(max), @pDesc nvarchar(max), @pAmount nvarchar(max),
                                         @pIsStock nvarchar(max),
                                         @pIsNew nvarchar(max), @pStatus nvarchar(max), @pPrice nvarchar(max),
                                         @pDiscountId nvarchar(max) =null,
                                         @pTypeId nvarchar(max) = null) as

insert into product (product_name, product_model, product_color, product_size, product_image, product_descriptions,
                     product_amount, product_is_stock, product_is_new, status, create_date_time, product_discount_id,
                     product_type_id)
values (@pName, @pModel, @pColor, @pSize, @pImage, @pDesc, convert(int, @pAmount),
        convert(int, @pIsStock),
        convert(int, @pIsNew),
        convert(int, @pStatus), getdate(), convert(int, @pDiscountId), convert(int, @pTypeId))

declare @insert_id as int
    set @insert_id = (select top 1 p.id
                      from product p
                      order by p.id desc)

insert into product_details (product_price, status, create_date_time, product_id, product_type_id)
values (@pPrice, 1, getdate(), @insert_id, @pTypeId)

    return 1
GO
