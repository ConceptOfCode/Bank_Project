USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_edit_special_discount_type]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_edit_special_discount_type] @specialTypeId as nvarchar(max),
                                                        @specialTypeName as nvarchar(max),
                                                        @specialTypeDescription as nvarchar(max),
                                                        @specialTypeStatus as nvarchar(max)
    as
    update discount_types
    set name         = @specialTypeName,
        descriptions = @specialTypeDescription,
        status       = @specialTypeStatus
    where id = @specialTypeId
GO
