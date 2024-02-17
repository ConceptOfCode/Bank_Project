USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_shop_add_special_discount_type]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_shop_add_special_discount_type] @specialTypeName as nvarchar(max), @specialTypeDescription as nvarchar(max), @specialTypeStatus as nvarchar(max)
as
    insert into discount_types (name, descriptions, status, create_date_time) values (@specialTypeName, @specialTypeDescription, @specialTypeStatus, getdate())
GO
