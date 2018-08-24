USE [Demo]
GO
/****** Object:  Table [dbo].[MT_SellOut]    Script Date: 8/24/2018 4:22:31 PM ******/
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
 CONSTRAINT [PK_MT_SellOut] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[Store] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SellIn]    Script Date: 8/24/2018 4:22:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellIn](
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
