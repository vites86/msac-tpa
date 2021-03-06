/****** Script for SelectTopNRows command from SSMS  ******/
SELECT com.Name, reg.Name as Region, sp.Surname, sp.Id as SportmanId
  FROM [msac-tpa].[dbo].[SportmanComissions] as sc
  left join  [msac-tpa].[dbo].[Comissions] as com
  on sc.ComissionId = com.Id
  left join  [msac-tpa].[dbo].Regions as reg
  on reg.Id = com.RegionId
  left join  [msac-tpa].[dbo].SportMans as sp
  on sp.Id = sc.SportmanId
