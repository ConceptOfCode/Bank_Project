USE [gateway_api]
GO
/****** Object:  StoredProcedure [dbo].[test3]    Script Date: 2024-02-17 11:45:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[test3] @name as varchar(50)
as
select * from person_test where name = @name
GO
