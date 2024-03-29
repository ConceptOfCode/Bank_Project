USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[sp_get_single_special_discount_type]    Script Date: 2024-02-17 11:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_get_single_special_discount_type] @typeId as nvarchar(max)
as
    select top 1 id as typeId, name, descriptions, status from discount_types where id = @typeId;
GO
