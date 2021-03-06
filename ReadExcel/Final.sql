USE [Demo]
GO
/****** Object:  Table [dbo].[MT_SellIn]    Script Date: 8/28/2018 11:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MT_SellIn](
	[Day] [nvarchar](50) NOT NULL,
	[Region] [nvarchar](50) NOT NULL,
	[KeyAccount] [nvarchar](50) NOT NULL,
	[Channel] [nvarchar](50) NOT NULL,
	[Archive] [nvarchar](50) NULL,
	[LastMonth] [nvarchar](50) NULL,
	[TargetMonth] [nvarchar](50) NULL,
	[TargetDate] [nvarchar](50) NULL,
	[Actual] [nvarchar](50) NULL,
	[Growth] [nvarchar](50) NULL,
	[GrowthLastMonth] [nvarchar](50) NULL,
	[PercentTarget] [nvarchar](50) NULL,
	[TargetWeek] [nvarchar](50) NULL,
	[ActualWeek] [nvarchar](50) NULL,
	[PercentWeek] [nvarchar](50) NULL,
	[CurrentDate] [nvarchar](50) NULL,
	[ID] [int] NOT NULL,
	[LastUpdated] [nvarchar](50) NULL,
	[Tab] [nvarchar](50) NULL,
	[CompanyCode] [nvarchar](50) NULL,
	[SalesOrg] [nvarchar](50) NULL,
 CONSTRAINT [PK_SellinFirstTab_1] PRIMARY KEY CLUSTERED 
(
	[Day] ASC,
	[Region] ASC,
	[KeyAccount] ASC,
	[Channel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MT_SellOut]    Script Date: 8/28/2018 11:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MT_SellOut](
	[SalesOrg] [nvarchar](50) NOT NULL,
	[CustomerCode] [nvarchar](50) NULL,
	[SalesRouteCode] [nvarchar](50) NULL,
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Store] [nvarchar](50) NOT NULL,
	[Target] [nvarchar](50) NULL,
	[Perform] [nvarchar](50) NULL,
	[Rate] [nvarchar](50) NULL,
	[LineID] [int] NULL,
	[CompanyCode] [nvarchar](50) NULL,
	[SalesForceLevel] [int] NULL,
	[ParentCode] [nvarchar](50) NULL,
	[SalesForceCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_MT_SellOut] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[Store] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[sp_Employee_GetAll]    Script Date: 8/28/2018 11:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Employee_GetAll] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	WITH cte AS
(
  SELECT 
    SalesForceCode, 
    [Parentcode],
    SalesForceName,
    SalesForceLevel,
	EmployeeCode,
	CAST(0 AS varbinary(max)) AS Level
   
  FROM SalesForce
  WHERE (ParentCode is null or ParentCode ='') --AND SalesOrgCode ='1500'
  UNION ALL
  SELECT 
    i.SalesForceCode, 
    i.[Parentcode],
    i.SalesForceName,
    i.SalesForceLevel ,
	i.EmployeeCode,
    Level + CAST(i.SalesForceCode AS varbinary(max)) AS Level
  FROM SalesForce i
 
  INNER JOIN cte c
    ON c.SalesForceCode = i.[Parentcode]
)

SELECT 
cte.EmployeeCode,
	emp.EmployeeName,
  SalesForceCode, 
    [Parentcode],
    SalesForceName,
    SalesForceLevel,
	
	level
FROM cte cte
JOIN Employee emp
on cte.EmployeeCode = emp.EmployeeCode
ORDER BY level;
END

GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllChildrenForParent]    Script Date: 8/28/2018 11:20:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllChildrenForParent] 
	-- Add the parameters for the stored procedure here
	@Code nvarchar(50),
	@level int
AS
BEGIN
	;WITH ret AS(
        SELECT  *
        FROM    MT_SellOut
        WHERE   SalesForceCode = @Code 
		
        UNION ALL
        SELECT  t.*
        FROM    MT_SellOut t INNER JOIN
                ret r ON t.ParentCode = r.SalesForceCode
)

SELECT  *
FROM    ret
        WHERE    
			(@level = 2 AND (SalesForceLevel = 2 OR SalesForceLevel = 3))
			OR
			(@level = 3 AND (SalesForceLevel = 2 OR SalesForceLevel = 3 OR SalesForceLevel = 4))
END

GO
