USE [gateway_api]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetApiUrl]    Script Date: 2024-02-17 11:45:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_GetApiUrl] @url varchar(max)
as
select id        as Id,
       url_name  as UrlName,
       sp_name   as SpName,
       host_name as HostName,
       port      as Port,
       prefix    as Prefix,
       parameters as Parameters,
       url as Url
from api_urls
where url = @url;
GO
