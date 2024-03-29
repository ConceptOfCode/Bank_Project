USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_update_discount]    Script Date: 2024-02-17 11:49:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_update_discount] @disId as nvarchar(max), @disPercent as nvarchar(max),
                                         @disFromDate as nvarchar(max),
                                         @disToDate as nvarchar(max), @disCode as nvarchar(max),
                                         @disStatus as nvarchar(max)
as
update discounts
set percent_value = @disPercent,
    from_date     = @disFromDate,
    to_date=@disToDate,
    status        = @disStatus
where id = @disId;

update discount_codes
set code = @disCode
where discount_id = @disId;
GO
