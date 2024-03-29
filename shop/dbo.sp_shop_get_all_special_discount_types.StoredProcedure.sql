USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_get_all_special_discount_types]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_shop_get_all_special_discount_types]
as
    select id as typeId, name, descriptions, status, create_date_time as createDateTime from discount_types
GO
