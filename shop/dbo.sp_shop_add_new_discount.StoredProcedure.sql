USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_add_new_discount]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_add_new_discount](@disPercent nvarchar(max), @disFromDate nvarchar(max), @disToDate nvarchar(max),
                                          @disStatus nvarchar(max),
                                          @disCode nvarchar(max))
as
declare @insertId as int
insert into discounts (percent_value, from_date, to_date, status)
values (@disPercent, @disFromDate, @disToDate, @disStatus)
    set @insertId = (select top 1 id
                     from discounts
                     order by id desc);
insert into discount_codes (code, status, create_date_time, discount_id)
values (@disCode, @disStatus, getdate(), @insertId)
GO
