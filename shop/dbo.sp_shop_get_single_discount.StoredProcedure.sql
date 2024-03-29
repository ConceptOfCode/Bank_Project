USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_get_single_discount]    Script Date: 2024-02-17 11:49:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_shop_get_single_discount] @discountId as nvarchar(max)
as
select top 1 d.id            as discountId,
       d.percent_value as discountPercentValue,
       d.from_date     as discountFromDate,
       d.to_date       as discountToDate,
       dc.code         as discountCode,
       d.status        as discountStatus
from discounts d
         inner join discount_codes dc on d.id = dc.discount_id
where d.id = @discountId
GO
