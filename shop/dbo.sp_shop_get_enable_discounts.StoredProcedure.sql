USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_get_enable_discounts]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_get_enable_discounts]
as
    select id as discountId, percent_value as discountPercentValue
from discounts
where status = 1
  and (datediff(minute, from_date, getdate()) > 1 and datediff(minute , to_date, getdate()) <=0 )
GO
