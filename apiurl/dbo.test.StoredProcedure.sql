USE [gateway_api]
GO
/****** Object:  StoredProcedure [dbo].[test]    Script Date: 2024-02-17 11:45:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[test]
as
select * from api_urls;
GO
