USE [gateway_api]
GO
/****** Object:  StoredProcedure [dbo].[test2]    Script Date: 2024-02-17 11:45:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[test2] @id as int
as
select * from api_urls where id = @id
GO
