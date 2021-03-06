
/****** Object:  StoredProcedure [dbo].[sp_Employee_GetAll]    Script Date: 10/3/2018 4:14:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[sp_Employee_GetAll] 
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
