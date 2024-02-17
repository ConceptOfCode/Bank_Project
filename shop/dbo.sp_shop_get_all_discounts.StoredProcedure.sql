USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_get_all_discounts]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_shop_get_all_discounts]
as
select d.id            as discountId,
       d.from_date     as discountFromDate,
       d.to_date       as discountToDate,
       d.percent_value as discountPercentValue,
       d.status        as discountStatus,
       dc.code         as discountCode
from discounts d
         inner join discount_codes dc on d.id = dc.discount_id
GO
